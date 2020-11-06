package com.didi.dao;

import com.didi.pojo.Department;
import com.didi.pojo.Job;
import com.didi.pojo.Staff;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface JobMapper {
    //添加一个岗位
    int addJob(Job job);

    //根据id删除一个岗位
    int deleteJobById(@Param("J_ID") int id);

    //更新岗位
    int updateJob(Job job);

    //根据id查询,返回一个岗位
    Job queryJobById(@Param("J_ID") int id);

    //查询全部岗位,返回list集合
    List<Job> queryAllJob();

    //按名字查询岗位
    List<Job> queryJobByName(@Param("J_NAME") String J_NAME);

    //查询岗位下员工
    List<Staff> queryJobStaff(@Param("J_ID") int id);
}
