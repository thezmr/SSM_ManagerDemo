package com.didi.controller;

import com.didi.pojo.Job;
import com.didi.pojo.Staff;
import com.didi.service.StaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/staff")
public class StaffController {
    @Autowired
    @Qualifier("StaffServiceImpl")
    private StaffService staffService;

    @RequestMapping("/allStaff")
    public String list(Model model){
        List<Staff> list = staffService.queryAllStaff();
        model.addAttribute("list",list);
        return "allStaff";
    }

    @RequestMapping("/toAddStaff")
    public String toAddStaff(Model model){
        List<Integer> listDeID = staffService.listDeID();
        List<String> listDeName = staffService.listDeName();
        List<Integer> listJobID = staffService.listJobID();
        List<String> listJobName = staffService.listJobName();
        model.addAttribute("listDeID",listDeID);
        model.addAttribute("listDeName",listDeName);
        model.addAttribute("listJobID",listJobID);
        model.addAttribute("listJobName",listJobName);
        return "addStaff";
    }
    @RequestMapping("/addStaff")
    public String addStaff(Staff staff,Model model){
        staffService.addStaff(staff);

        return "redirect:/staff/allStaff";

    }
}
