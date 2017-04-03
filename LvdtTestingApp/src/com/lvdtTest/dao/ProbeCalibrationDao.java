package com.lvdtTest.dao;

import java.util.List;

import com.lvdtTest.bean.ProbeCalibration;

public interface ProbeCalibrationDao {
public void saveSetting(ProbeCalibration measurementSetting);
public List<ProbeCalibration> settingList();
public ProbeCalibration getSetting(Integer id);
public void deleteSetting(Integer id);
public boolean checksetting(Integer id);
}
