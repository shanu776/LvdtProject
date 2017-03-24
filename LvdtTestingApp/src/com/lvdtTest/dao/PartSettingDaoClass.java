package com.lvdtTest.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.lvdtTest.bean.AddModel;
import com.lvdtTest.bean.PartSetting;
public class PartSettingDaoClass implements PartSettingDao{

	private HibernateTemplate hibernateTemplate;

	public void setSessionDataFactory(SessionFactory sessionFactory) 
	{
		this.hibernateTemplate = new HibernateTemplate(sessionFactory);
	}
	
	@Override
	public void savePartSetting(PartSetting partSetting) {
		hibernateTemplate.saveOrUpdate(partSetting);
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<PartSetting> getListofPartSettings() {
		// TODO Auto-generated method stub
		return (List<PartSetting>)hibernateTemplate.find("from PartSetting");
	}

	@Override
	public void deletePartSetting(int Id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void saveModel(AddModel addModel) {
		// TODO Auto-generated method stub
		hibernateTemplate.saveOrUpdate(addModel);
	}

}
