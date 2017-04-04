package com.lvdtTest.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.math.RoundingMode;
import java.net.Socket;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.lvdtTest.bean.AddModel;
import com.lvdtTest.bean.ProbeCalibration;
import com.lvdtTest.bean.PartSetting;
import com.lvdtTest.dao.ProbeCalibrationDao;
import com.lvdtTest.dao.PartSettingDao;

@Controller
public class AdminController {	
	private PartSettingDao partSettingDao;
	private ProbeCalibrationDao probeCalibrationDao;	
	
	BufferedReader reader;
	PrintWriter writer;
	Socket sock;
	String message="";
	List<Integer> switches=new ArrayList<Integer>(Collections.nCopies(8,1));
	List<String> list=new ArrayList<>();	
	
	@Autowired
	public AdminController(PartSettingDao partSettingDao,ProbeCalibrationDao probeCalibrationDao) {
		this.partSettingDao = partSettingDao;
		this.probeCalibrationDao=probeCalibrationDao;
	}

	@RequestMapping(value="login")
	public ModelAndView loginPage(){
		return new ModelAndView("loginPage");
	}
	
	@RequestMapping(value="loginAction", method=RequestMethod.POST)
	public ModelAndView loginAction(HttpServletRequest request){
		String user= request.getParameter("user");
		String password=request.getParameter("password");
		if("admin".equals(user) && "password".equals(password))		
			return new ModelAndView("redirect:index.zzz");
		else {
			return new ModelAndView("redirect:login.zzz");
		}
	}
	
	@RequestMapping(value="/index")
	public ModelAndView index()
	{
		setupConnection();
		return new ModelAndView("home");
	}
	
	@RequestMapping(value="reading")
	public ModelAndView lvdtReadings()
	{
		if((message!="")&& (message!=null)){
		StringTokenizer st=new StringTokenizer(message, ",");		
		while ( st.hasMoreTokens() ) {
			list.add(st.nextToken());
			}		
		int index= Integer.parseInt(list.get(0));
		int element=Integer.parseInt(list.get(1));
		list.clear();
		switches.set(index, element);		
		}
		Map<String, Object> model=new HashMap<>();
		model.put("ranging", switches);		
		return new ModelAndView("lvdtReadings",model);
	}
	
	@RequestMapping(value="showChangePass")
	public ModelAndView showChangePass(){
		return new ModelAndView("changePass");
	}
	
/*=========================================================ProbeCalibration Setting=============================================== */
	@RequestMapping(value="probecalibration")
	public ModelAndView measurement(@ModelAttribute("probecalibration") ProbeCalibration probeCalibration){
		
		Map<String,Object> model=new HashMap<>();
					
		List<ProbeCalibration> l=probeCalibrationDao.settingList();
		model.put("settings",probeCalibrationDao.settingList());
		return new ModelAndView("probCalibration",model);
	}
	
	@RequestMapping(value="getreadings")
	@ResponseBody
	public String getReadings(){
		String lvdtreadings = null;
		if((message!="")&& (message!=null)){				
			List<String> listfromdevice=new ArrayList<>();	
			StringTokenizer st=new StringTokenizer(message, ",");		
			while ( st.hasMoreTokens() ) {
				listfromdevice.add(st.nextToken());
				}	
			lvdtreadings=listfromdevice.get(2);
		}		
		return lvdtreadings;		
	}
	
	@RequestMapping(value="addRef1")
	public ModelAndView AddRef1(HttpServletRequest request,ProbeCalibration prob)throws NullPointerException{
		Map<String, Object> model=new HashMap<>();
		Integer id=Integer.parseInt(request.getParameter("id"));
		String ref1=request.getParameter("ref1");
		if(probeCalibrationDao.checksetting(id)){
			prob=probeCalibrationDao.getSetting(id);
			prob.setRef1(ref1);
		}
		else {
			prob.setId(id);
			prob.setRef1(ref1);
		}		
		probeCalibrationDao.saveSetting(prob);
		model.put("settings",probeCalibrationDao.settingList());
		return new ModelAndView("probCalibration",model);
		
	}
	@RequestMapping(value="addRef2")
	public ModelAndView AddRef2(HttpServletRequest request,ProbeCalibration prob){
		Map<String, Object> model=new HashMap<>();
		Integer id=Integer.parseInt(request.getParameter("id"));
		String ref2=request.getParameter("ref2");
		if(probeCalibrationDao.checksetting(id)){
			/*ProbeCalibration p=probeCalibrationDao.getSetting(id);	*/		
			prob=probeCalibrationDao.getSetting(id);
			prob.setRef2(ref2);			
		}
		else {
			prob.setId(id);
			prob.setRef2(ref2);
		}		
		probeCalibrationDao.saveSetting(prob);
		model.put("settings",probeCalibrationDao.settingList());
		return new ModelAndView("probCalibration",model);
		
	}
	@RequestMapping(value="addNominal")
	public ModelAndView AddNominal(HttpServletRequest request,ProbeCalibration prob){
		Map<String, Object> model=new HashMap<>();
		Integer id=Integer.parseInt(request.getParameter("id"));
		String nominal=request.getParameter("nominal");
		if(probeCalibrationDao.checksetting(id)){
			prob=probeCalibrationDao.getSetting(id);
			prob.setNominalval(nominal);
			prob.setScaleFactor(scaleFactor(prob.getRef1(), prob.getRef2(),nominal));
		}
		else {
			prob.setId(id);
			prob.setNominalval(nominal);
		}		
		probeCalibrationDao.saveSetting(prob);
		model.put("settings",probeCalibrationDao.settingList());
		return new ModelAndView("probCalibration",model);
		
	}
	
	public ModelAndView getMeasurementSetting(){
		
		return new ModelAndView("measurement");
	}
	
	public ModelAndView getMeasurementList(){
		
		return new ModelAndView("measurement");
	}
	
	public String scaleFactor(String ref1,String  ref2,String nominal){
		String scalefactor;
		Integer r1=Integer.parseInt(ref1);
		Integer r2=Integer.parseInt(ref2);
		Integer nom=Integer.parseInt(nominal);
		DecimalFormat decimalFormat = new DecimalFormat("#.##################");
		/*System.out.println(r2-r1);
		System.out.println((double)2/(r2-r1));*/
		scalefactor=Double.toString(Double.valueOf(decimalFormat.format(((double)nom/(r2-r1)))));
		return scalefactor;
	}
/*========================================================Measurement Starts Here===================================================*/

	@RequestMapping(value="measurement")
	public ModelAndView measurement(){	
		Map<String, Object> model=new HashMap<>();
		model.put("partSetting", partSettingDao.getListofPartSettings());
		model.put("probCalibtation", probeCalibrationDao.settingList());
		return new ModelAndView("measurement",model);
	}
	
	@RequestMapping(value="measurementGraph.zzz")
	@ResponseBody
	public Map<String,Object> measurementGraph(@RequestParam("id") Integer id){
		Map<String,Object> model= new HashMap<>();
		/*model.put("setting", partSettingDao.getPartSetting(id));*/
		List<PartSetting> p=partSettingDao.getPartSetting(id);
		for(PartSetting part:p){
			model.put("setting", part);
		}
		return model;/*new ModelAndView("measurementGraph",model)*/
	}
	
	@RequestMapping(value="probreadingMeasurement")
	@ResponseBody
	public Map<String,Object> probreadingMeasurement(){
		Map<String, Object> model=new HashMap<>();
		if((message!="")&& (message!=null)){				
			List<String> listfromdevice=new ArrayList<>();	
			StringTokenizer st=new StringTokenizer(message, ",");		
			while ( st.hasMoreTokens() ) {
				listfromdevice.add(st.nextToken());
				}	
			model.put("reading", listfromdevice.get(2));
			model.put("probe", listfromdevice.get(0));
		}		
		return model;
	}
	
	@RequestMapping(value="measuredReadings")
	public ModelAndView getMeasuredReadings()
	{
		/*List<Integer> switches=new ArrayList<Integer>(Collections.nCopies(8,1));*/
		/*System.out.println(switches.size());*/
		List<String> list=new ArrayList<>();
		String probreading="";
		if((message!="")&& (message!=null)){
		StringTokenizer st=new StringTokenizer(message, ",");
		
		while ( st.hasMoreTokens() ) {
			list.add(st.nextToken());
			}		
		int index= Integer.parseInt(list.get(0));
		int element=Integer.parseInt(list.get(1));
		probreading=list.get(2);
		list.clear();
		switches.set(index, element);		
		}
		Map<String, Object> model=new HashMap<>();
		model.put("ranging", switches);	
		model.put("probreading", probreading);
		return new ModelAndView("readings",model);
	}
	
/*========================================================Part Setting Operation Starts Here===================================================*/
	@RequestMapping(value="partSettingForm")
	public ModelAndView partSettingForm(@ModelAttribute("model") AddModel addModel,@ModelAttribute("partsetting") PartSetting partSetting){		
		Map<String, Object> model=new HashMap<>();
		model.put("modelList", partSettingDao.listModel());
		return new ModelAndView("addPartSetting",model);		
	}
	
	@RequestMapping(value="savePartSetting",method=RequestMethod.POST)
	public ModelAndView savePartSetting(PartSetting partSetting){
		partSettingDao.savePartSetting(partSetting);
		return new ModelAndView("redirect:partSettingForm.zzz");		
	}
	
	@RequestMapping(value="showAddModelForm")
	public ModelAndView showAddModelForm(@ModelAttribute("addModel") AddModel addModel){
		
		return new ModelAndView("addModel");
	}
	
	@RequestMapping(value="saveModelData")
	public ModelAndView saveModelData(AddModel addModel){
		partSettingDao.saveModel(addModel);
		return new ModelAndView("redirect:partSettingForm.zzz");
	}
/*========================================================Part Setting Operation End Here===================================================*/
	
	public String setupConnection(){

		System.out.println(sock);		
		if(sock==null){
			try
			{
				sock=new Socket("192.168.1.55",2000);
				InputStreamReader streamReader=new InputStreamReader(sock.getInputStream());
				reader=new BufferedReader(streamReader);
				writer=new PrintWriter(sock.getOutputStream());
				System.out.println("networking stablished");
				Thread t=new Thread(new Runnable() {						
					@Override
					public void run() {
						// TODO Auto-generated method stub
						try
						{
							while ((message=reader.readLine())!=null)
							{								
								System.out.println("read"+message);									
							}
						}
						catch(Exception ex)
						{
							try {
								sock.close();
								sock=null;
							} catch (IOException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
						}
					}
				});
				t.start();
			}
			catch(IOException ex)
			{
				/*ex.printStackTrace();
				System.out.println("main socket catch working");*/
			}
		}
		return null;
	}
	
}


