package com.lvdtTest.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.lvdtTest.bean.ProbeCalibration;

public class ProbeCalibrationDaoClass implements ProbeCalibrationDao{

	private HibernateTemplate hibernateTemplate;

	public void setSessionDataFactory(SessionFactory sessionFactory) 
	{
		this.hibernateTemplate = new HibernateTemplate(sessionFactory);
	}
	@Override
	public void saveSetting(ProbeCalibration probeCalibration) {
		// TODO Auto-generated method stub	
		hibernateTemplate.saveOrUpdate(probeCalibration);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ProbeCalibration> settingList() {
		// TODO Auto-generated method stub
		return (List<ProbeCalibration>)hibernateTemplate.find("from ProbeCalibration");
	}

	@Override
	public ProbeCalibration getSetting(Integer id) {
		// TODO Auto-generated method stub
		return (ProbeCalibration) hibernateTemplate.get(ProbeCalibration.class, id);
	}

	@Override
	public void deleteSetting(Integer id) {
		// TODO Auto-generated method stub
		List<ProbeCalibration> setting=(List) hibernateTemplate.get(ProbeCalibration.class, id);
		hibernateTemplate.delete(setting);
	}
	@Override
	public boolean checksetting(Integer id) {
		// TODO Auto-generated method stub
		for(ProbeCalibration p:(List<ProbeCalibration>)hibernateTemplate.find("from ProbeCalibration")){
			if(p.getId().equals(id)){
				return true;
			}
		}
		return false;
	}

}
