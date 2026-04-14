package com.example.service;

import com.example.entity.Order;
import com.example.mapper.OrderMapper;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import java.util.List;

@Service
public class OrderService {
    @Autowired
    private OrderMapper orderMapper;

    public List<Order> getAllOrders() {
        return orderMapper.findAll();
    }
}