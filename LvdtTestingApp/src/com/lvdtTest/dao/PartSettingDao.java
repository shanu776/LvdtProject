package com.lvdtTest.dao;

import java.util.List;

import com.lvdtTest.bean.AddModel;
import com.lvdtTest.bean.PartSetting;

public interface PartSettingDao {
	public void savePartSetting(PartSetting partSetting);
	public List<PartSetting> getListofPartSettings();
	public PartSetting getPartSetting(Integer id);
	public void deletePartSetting(int Id);
	public void saveModel(AddModel addModel);
	public List<AddModel> listModel();
	public void deleteModel();
}
