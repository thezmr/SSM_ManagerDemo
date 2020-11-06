package com.didi.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Job {
    private int J_ID;
    private String J_NAME;
    private String J_TYPE;
    private int J_SIZE;
}
