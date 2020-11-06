package com.didi.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Staff {
    private int S_ID;
    private String S_NAME;
    private String S_SEX;
    private String S_DEPARTMENTID;
    private String S_JOBID;
    private String S_EINFORMATION;
    private String S_PSOURCE;
    private String S_TEL;
    private String S_EMAIL;
    private String S_EDUCATION;

    private Department department;
    private Job job;
}
