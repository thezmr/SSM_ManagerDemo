package com.didi.service;

import com.didi.dao.JobMapper;
import com.didi.pojo.Job;
import com.didi.pojo.Staff;

import java.util.List;

public class JobServiceImpl implements JobService {
    //调用dao层的操作，设置一个set接口，方便Spring管理
    private JobMapper jobMapper;
    public void setJobMapper(JobMapper jobMapper){
        this.jobMapper = jobMapper;
    }
    public List<Job> queryAllJob() {
        return jobMapper.queryAllJob();
    }

    public List<Job> queryJobByName(String J_NAME) {
        return jobMapper.queryJobByName(J_NAME);
    }

    public Job queryJobById(int id) {
        return jobMapper.queryJobById(id);
    }

    public int addJob(Job job) {
        return jobMapper.addJob(job);
    }

    public int deleteJobById(int id) {
        return jobMapper.deleteJobById(id);
    }

    public int updateJob(Job job) {
        return jobMapper.updateJob(job);
    }

    public List<Staff> queryJobStaff(int id) {
        return jobMapper.queryJobStaff(id);
    }
}
