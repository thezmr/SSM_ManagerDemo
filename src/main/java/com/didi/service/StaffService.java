package com.didi.service;

import com.didi.pojo.Staff;

import java.util.List;

public interface StaffService {
    List<Staff> queryAllStaff();
    int addStaff(Staff staff);

    //查询部门岗位id名称用于增、改
    List<Integer>listDeID();
    List<String>listDeName();
    List<Integer>listJobID();
    List<String>listJobName();
}
