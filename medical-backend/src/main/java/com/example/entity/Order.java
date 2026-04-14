package com.example.entity;

import lombok.Data;
import java.time.LocalDateTime;

@Data
public class Order {
    private Integer id;
    private Integer userId;
    private Integer nurseId;
    private String status;
    private String patientName;
    private Integer patientAge;
    private String patientStatus;
    private LocalDateTime createTime;
    private LocalDateTime updateTime;
}