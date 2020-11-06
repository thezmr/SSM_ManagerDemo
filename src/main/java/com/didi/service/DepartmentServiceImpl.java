package com.didi.service;

import com.didi.dao.DepartmentMapper;
import com.didi.pojo.Department;
import com.didi.pojo.Staff;

import java.util.List;

public class DepartmentServiceImpl implements DepartmentService{
    //调用dao层的操作，设置一个set接口，方便Spring管理
    private DepartmentMapper departmentMapper;
    public void setDepartmentMapper(DepartmentMapper departmentMapper){
        this.departmentMapper = departmentMapper;
    }

    public List<Department> queryAllDepart()
    {
        return departmentMapper.queryAllDepart();
    }

    public List<Department> queryDepartByName(String departName) {
        return departmentMapper.queryDepartByName(departName);
    }

    public Department queryDepartById(int id) {
        return departmentMapper.queryDepartById(id);
    }

    public int addDepart(Department department) {
        return departmentMapper.addDepart(department);
    }

    public int deleteDepartById(int id) {
        return departmentMapper.deleteDepartById(id);
    }

    public int updateDepart(Department departs) {
        return departmentMapper.updateDepart(departs);
    }

    public List<Staff> queryDeStaff(int id) {
        return departmentMapper.queryDeStaff(id);
    }
}
