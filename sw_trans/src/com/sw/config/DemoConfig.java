package com.sw.config;


import com.jfinal.config.Constants;
import com.jfinal.config.Handlers;
import com.jfinal.config.Interceptors;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.activerecord.dialect.MysqlDialect;
import com.jfinal.plugin.c3p0.C3p0Plugin;
import com.jfinal.render.ViewType;
import com.jfinal.template.Engine;
import com.sw.controller.TransfigurationControlller;
import com.sw.controller.UserControlller;
import com.sw.model.Transfiguration;
import com.sw.model.User;

public class DemoConfig extends JFinalConfig {
    //配置开发模式以及视图类型
    @Override
    public void configConstant(Constants me) {
        PropKit.use("datasource.properties");
        //开发者模式 控制台可输出请求的信息
        me.setDevMode(true);
        me.setEncoding("utf-8");
        me.setViewType(ViewType.JSP);

    }
    //配置模板引擎
    @Override
    public void configEngine(Engine arg0) {
        // TODO Auto-generated method stub

    }

    @Override
    //配置全局处理器
    public void configHandler(Handlers me) {
        
    }
    //配置全局拦截器，全局拦截器将拦截所有 action  请求，除非使用@Clear 在 Controller 中清除
    @Override
    public void configInterceptor(Interceptors arg0) {
        // TODO Auto-generated method stub

    }
    //配置了 C3p0 数据库连接池插件与 ActiveRecord数据库访问插件
    @Override
    public void configPlugin(Plugins me) {
        C3p0Plugin cp = new C3p0Plugin(PropKit.get("jdbcurl"), PropKit.get("username"), PropKit.get("password"));
        me.add(cp);
        ActiveRecordPlugin arp = new ActiveRecordPlugin(cp);
        me.add(arp);
        //配置方言
        arp.setDialect(new MysqlDialect());
        arp.addMapping("transfiguration_card", "Id", Transfiguration.class);
        arp.addMapping("user", "Id", User.class);
    }

    @Override
    //配置路由
    public void configRoute(Routes me) {
        // TODO Auto-generated method stub
        me.add("/transfiguration", TransfigurationControlller.class);
        me.add("/user", UserControlller.class);
    }

}
