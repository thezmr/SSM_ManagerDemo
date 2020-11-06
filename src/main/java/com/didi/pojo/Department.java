package com.didi.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Department {
    private int D_ID;
    private String D_NAME;
    private String D_TYPE;
    private String D_TEL;
}
