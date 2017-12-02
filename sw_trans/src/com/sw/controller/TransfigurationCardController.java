package com.sw.controller;

import java.util.List;

import com.jfinal.core.Controller;
import com.sw.model.TransfigurationCard;
import com.sw.model.User;

public class TransfigurationCardController extends Controller{
    
    //首页自动展示学生信息
    public void list() {
    	List<User> list = User.dao.find("select * from user");
        setAttr("userList", list);
        render("/TransfigurationCardList.jsp");
    }
    //跳转到添加页面
    public void add() {
    	render("/TransfigurationCardAdd.jsp");
    }
    //删除操作
    public void delete() {
        // 获取url请求中第一个值
        TransfigurationCard.dao.deleteById(getParaToInt());
        forwardAction("/list");
    }
    //修改操作
    public void update() {
        TransfigurationCard student = getModel(TransfigurationCard.class);
        student.update();
        forwardAction("/list");
    }
    //查询需要修改的学生信息
    public void get() {
        TransfigurationCard student = TransfigurationCard.dao.findById(getParaToInt());
        setAttr("student", student);
        render("/update.jsp");
    }
    //保存
    public void save() {
        TransfigurationCard transfigurationCard = getModel(TransfigurationCard.class);
        transfigurationCard.save();
        forwardAction("/list");
    }
    

}
