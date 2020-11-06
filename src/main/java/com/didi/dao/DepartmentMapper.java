package com.didi.dao;

import com.didi.pojo.Department;
import com.didi.pojo.Staff;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DepartmentMapper {

    //添加一个部门
    int addDepart(Department department);

    //根据id删除一个部门
    int deleteDepartById(@Param("D_ID") int id);

    //更新部门
    int updateDepart(Department departs);

    //根据id查询,返回一个部门
    Department queryDepartById(@Param("D_ID") int id);

    //查询全部部门,返回list集合
    List<Department> queryAllDepart();

    //按名字查询部门
    List<Department> queryDepartByName(@Param("D_NAME") String departName);

    //查询部门下员工
    List<Staff> queryDeStaff(@Param("D_ID") int id);
}
