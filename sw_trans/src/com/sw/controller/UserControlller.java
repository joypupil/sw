package com.sw.controller;

import java.util.List;

import com.jfinal.aop.Clear;
import com.jfinal.core.Controller;
import com.sw.model.Transfiguration;
import com.sw.model.User;

public class UserControlller extends Controller{
    
    //展示用户信息
    public void list() {
        List<User> list = User.dao.find("select * from user");
        setAttr("userList", list);
        render("/userlist.jsp");
    }
    //跳转到添加页面
    public void add() {
        render("/useradd.jsp");
    }
    //删除操作
    public void delete() {
        // 获取url请求中第一个值
        User.dao.deleteById(getParaToInt());
        forwardAction("/user/list");
    }
    //修改操作
    public void update() {
        User user = getModel(User.class);
        user.update();
        forwardAction("/user/list");
    }
    //查询需要修改的用户信息
    public void get() {
        User user = User.dao.findById(getParaToInt());
        setAttr("user", user);
        render("/userupdate.jsp");
    }
    //保存
    public void save() {
        User user = getModel(User.class);
        user.save();
        forwardAction("/user/list");
    }
    
   
}
