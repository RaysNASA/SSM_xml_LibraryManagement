# 图解SpringMVC工作流程

![image-20221002160613940](E:\Java全栈学习记录\SSM图书管理系统项目\SSM图书馆里系统MD图库\image-20221002160613940.png)

当发起请求时被前置的控制器拦截到请求，根据请求参数生成代理请求，找到请求对应的实际控制器，控制器处理请求，创建数据模型，访问数据库，将模型响应给中心控制器，控制器使用模型于视图渲染视图结果，将结果返回给中心控制器，再将结果返回给请求者。具体实现如下图所示。具体实现流程如下：

1、DispatchServlet表示前置控制器，是整个SpringMVC的控制中心。用户发出请求，DispatchServlet接收并拦截请求。

​		配置文件位于：src\main\webapp\WEB-INF\web.xml

​		![image-20221003164735444](E:\Java全栈学习记录\SSM图书管理系统项目\SSM图书馆里系统MD图库\image-20221003164735444.png)

2、HandlerMapping为处理器映射。DispathServlet调用HandlerMapping，HadnlerMapping根据请求url查找Handler。

​		

3、返回处理器执行链，根据url查找控制器，并且将解析后的信息传递给DispatchServlet

4、HandlerAdapter表示处理器适配器，并且将解析后的信息传递给DispatchServlet

5、执行handler找到具体的处理器

6、Controller将具体的执行信息返回给HandlerAdapter，如ModeAndView

7、HandlerAdapter将视图逻辑名或模型传递给DispatchServlet

8、DispatchServlet调用视图解析器(ViewResolver)来解析HandlerAdapter传递的逻辑视图名

9、视图解析器将解析的逻辑视图名传给DispatchServlet。

10、DispatchServlet根据视图解析器解析的视图结果，调用具体的视图，进行视图渲染

11、将响应数据返回给客户端
