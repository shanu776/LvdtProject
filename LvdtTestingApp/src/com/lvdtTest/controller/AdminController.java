package com.lvdtTest.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;
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
import org.springframework.web.servlet.ModelAndView;

import com.lvdtTest.bean.AddModel;
import com.lvdtTest.bean.PartSetting;
import com.lvdtTest.dao.PartSettingDao;

@Controller
public class AdminController {	
	private PartSettingDao partSettingDao;
	
	
	
	BufferedReader reader;
	PrintWriter writer;
	Socket sock;
	String message="";
	List<Integer> switches=new ArrayList<Integer>(Collections.nCopies(8,1));
	List<String> list=new ArrayList<>();	
	
	@Autowired
	public AdminController(PartSettingDao partSettingDao) {
		this.partSettingDao = partSettingDao;
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
	
/*========================================================Part Setting Operation Starts Here===================================================*/
	@RequestMapping(value="partSettingForm")
	public ModelAndView partSettingForm(){		
		return new ModelAndView("addPartSetting");		
	}
	
	@RequestMapping(value="savePartSetting",method=RequestMethod.POST)
	public ModelAndView savePartSetting(PartSetting partSetting){
		partSettingDao.savePartSetting(partSetting);
		return new ModelAndView("redirect:addPartSetting");		
	}
	
	@RequestMapping(value="showAddModelForm")
	public ModelAndView showAddModelForm(@ModelAttribute("addModel") AddModel addModel){
		
		return new ModelAndView("addModel");
	}
	
	@RequestMapping(value="saveModelData")
	public ModelAndView saveModelData(AddModel addModel){
		System.out.println("calling");
		partSettingDao.saveModel(addModel);
		return new ModelAndView("redirect:addPartSetting");
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


