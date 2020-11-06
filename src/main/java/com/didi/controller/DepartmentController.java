package com.didi.controller;

import com.didi.pojo.Department;
import com.didi.pojo.Staff;
import com.didi.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/depart")
public class DepartmentController {
    @Autowired
    @Qualifier("DepartmentServiceImpl")
    private DepartmentService departmentService;

    @RequestMapping("/allDepartment")
    public String list(Model model){
        List<Department> list = departmentService.queryAllDepart();
        model.addAttribute("list",list);
        return "allDepartment";
    }
    @RequestMapping("/queryDepartment")
    public String queryDepartment(String departName,Model model){
        List<Department>list = departmentService.queryDepartByName(departName);
        model.addAttribute("list",list);
        return "allDepartment";
    }


    @RequestMapping("/toAddDepartment")
    public String toAddDepartment(){
        return "addDepartment";
    }

    @RequestMapping("/addDepartment")
    public String addDepartment(Department department){
        departmentService.addDepart(department);
        return "redirect:/depart/allDepartment";
    }


    @RequestMapping("/toUpdateDepartment")
    public String toUpdateDepartment(Model model, int id){
        Department department = departmentService.queryDepartById(id);
        model.addAttribute("department",department);
        return "updateDepartment";
    }
    @RequestMapping("/updateDepartment")
    public String updateDepartment(Model model,Department department){
        departmentService.updateDepart(department);
        Department department1 = departmentService.queryDepartById(department.getD_ID());
        model.addAttribute("department",department);
        return "redirect:/depart/allDepartment";
    }

    @RequestMapping("/deleteDepartment")
    public String deleteDepartment(int id){
        departmentService.deleteDepartById(id);
        return "redirect:/depart/allDepartment";
    }

    @RequestMapping("/queryDeStaff")
    public String queryDeStaff(Model model,int id){
        List<Staff>list = departmentService.queryDeStaff(id);
        model.addAttribute("list",list);
        return "allDeStaff";
    }

}
