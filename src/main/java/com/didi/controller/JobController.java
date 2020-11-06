package com.didi.controller;

import com.didi.pojo.Department;
import com.didi.pojo.Job;
import com.didi.pojo.Staff;
import com.didi.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/job")
public class JobController {
    @Autowired
    @Qualifier("JobServiceImpl")
    private JobService jobService;

    @RequestMapping("/allJob")
    public String list(Model model){
        List<Job> list = jobService.queryAllJob();
        model.addAttribute("list",list);
        return "allJob";
    }
    @RequestMapping("/queryJob")
    public String queryJob(String jobName,Model model){
        List<Job>list = jobService.queryJobByName(jobName);
        model.addAttribute("list",list);
        return "allJob";
    }


    @RequestMapping("/toAddJob")
    public String toAddJob(){
        return "addJob";
    }

    @RequestMapping("/addJob")
    public String addJob(Job job){
        jobService.addJob(job);
        return "redirect:/job/allJob";
    }


    @RequestMapping("/toUpdateJob")
    public String toUpdateDepartment(Model model, int id){
        Job job = jobService.queryJobById(id);
        model.addAttribute("job",job);
        return "updateJob";
    }
    @RequestMapping("/updateJob")
    public String updateJob(Model model,Job job){
        jobService.updateJob(job);
        Job job1 = jobService.queryJobById(job.getJ_ID());
        model.addAttribute("job",job);
        return "redirect:/job/allJob";
    }

    @RequestMapping("/deleteJob")
    public String deleteJob(int id){
        jobService.deleteJobById(id);
        return "redirect:/job/allJob";
    }

    @RequestMapping("/queryJobStaff")
    public String queryJobStaff(Model model,int id) {
        List<Staff> list = jobService.queryJobStaff(id);
        model.addAttribute("list", list);
        return "allJobStaff";
    }
}
