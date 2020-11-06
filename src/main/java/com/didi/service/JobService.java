package com.didi.service;

import com.didi.pojo.Job;
import com.didi.pojo.Staff;

import java.util.List;

public interface JobService {
    //查询全部部门,返回list集合
    List<Job> queryAllJob();

    //按名字查询部门
    List<Job> queryJobByName(String J_NAME);

    //根据id查询,返回一个部门
    Job queryJobById(int id);

    int addJob(Job job);

    //根据id删除一个部门
    int deleteJobById(int id);

    //更新部门
    int updateJob(Job job);

    //查询员工
    List<Staff> queryJobStaff(int id);
}
