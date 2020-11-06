package com.didi.service;

import com.didi.pojo.Department;
import com.didi.pojo.Staff;


import java.util.List;

public interface DepartmentService {
    //查询全部部门,返回list集合
    List<Department> queryAllDepart();

    //按名字查询部门
    List<Department> queryDepartByName(String departName);

    //根据id查询,返回一个部门
    Department queryDepartById(int id);

    int addDepart(Department department);

    //根据id删除一个部门
    int deleteDepartById(int id);

    //更新部门
    int updateDepart(Department departs);

    //查询员工
    List<Staff> queryDeStaff(int id);

}
