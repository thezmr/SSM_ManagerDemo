package com.didi.dao;

import com.didi.pojo.Job;
import com.didi.pojo.Staff;

import java.util.List;

public interface StaffMapper {
    //查询全部岗位,返回list集合
    List<Staff> queryAllStaff();
    //增加一个员工
    int addStaff(Staff staff);

    //查询部门岗位id名称用于增、改
    List<Integer>listDeID();
    List<String>listDeName();
    List<Integer>listJobID();
    List<String>listJobName();
}
