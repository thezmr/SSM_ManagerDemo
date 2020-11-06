package com.didi.service;

import com.didi.dao.StaffMapper;
import com.didi.pojo.Staff;

import java.util.List;

public class StaffServiceImpl implements StaffService{
    private StaffMapper staffMapper;
    public void setStaffMapper(StaffMapper staffMapper){
        this.staffMapper = staffMapper;
    }
    public List<Staff> queryAllStaff() {
        return staffMapper.queryAllStaff();
    }

    public int addStaff(Staff staff) {
        return staffMapper.addStaff(staff);
    }

    public List<Integer> listDeID() {
        return staffMapper.listDeID();
    }

    public List<String> listDeName() {
        return staffMapper.listDeName();
    }

    public List<Integer> listJobID() {
        return staffMapper.listJobID();
    }

    public List<String> listJobName() {
        return staffMapper.listJobName();
    }
}
