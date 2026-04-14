package com.example.mapper;

import com.example.entity.Order;
import org.apache.ibatis.annotations.Mapper;  // 新增
import org.apache.ibatis.annotations.Select;
import java.util.List;

@Mapper  // 必须加这个！
public interface OrderMapper {
    @Select("SELECT * FROM orders")
    List<Order> findAll();
}