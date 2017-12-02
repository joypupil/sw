package com.sw.controller;

import java.util.List;

import com.jfinal.core.Controller;
import com.sw.model.Transfiguration;

public class TransfigurationControlller extends Controller{
    
    //首页自动展示学生信息
    public void list() {
        List<Transfiguration> list = Transfiguration.dao.find("select * from student");
        setAttr("studentList", list);
        render("/index.jsp");
    }
    //跳转到添加页面
    public void add() {
        render("/add.jsp");
    }
    //删除操作
    public void delete() {
        // 获取url请求中第一个值
        Transfiguration.dao.deleteById(getParaToInt());
        forwardAction("/list");
    }
    //修改操作
    public void update() {
        Transfiguration student = getModel(Transfiguration.class);
        student.update();
        forwardAction("/list");
    }
    //查询需要修改的学生信息
    public void get() {
        Transfiguration student = Transfiguration.dao.findById(getParaToInt());
        setAttr("student", student);
        render("/update.jsp");
    }
    //保存
    public void save() {
        Transfiguration student = getModel(Transfiguration.class);
        student.save();
        forwardAction("/list");
    }
    

}
