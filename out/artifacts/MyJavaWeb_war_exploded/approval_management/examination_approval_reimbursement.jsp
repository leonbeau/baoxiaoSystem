<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: leondon
  Date: 19-5-7
  Time: 上午8:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="../error-page500.html" %>

<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>审批报销单</title>


    <!--STYLESHEET-->
    <!--=================================================-->



    <!--Bootstrap Stylesheet [ REQUIRED ]-->
    <link href="./nifty/css/bootstrap.min.css" rel="stylesheet">


    <!--Nifty Stylesheet [ REQUIRED ]-->
    <link href="./nifty/css/nifty.min.css" rel="stylesheet">


    <!--Premium Icons [ OPTIONAL ]-->
    <link href="./nifty/premium/icon-sets/icons/line-icons/premium-line-icons.min.css" rel="stylesheet">
    <link href="./nifty/premium/icon-sets/icons/solid-icons/premium-solid-icons.min.css" rel="stylesheet">
    <link href="./nifty/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    <link href="./nifty/css/nifty-demo-icons.css" rel="stylesheet">



    <!--JAVASCRIPT-->
    <!--=================================================-->

    <!--Page Load Progress Bar [ OPTIONAL ]-->
    <link href="./nifty/css/pace.min.css" rel="stylesheet">
    <script src="./nifty/js/pace.min.js"></script>


    <!--jQuery [ REQUIRED ]-->
    <script src="./nifty/js/jquery.min.js"></script>


    <!--BootstrapJS [ RECOMMENDED ]-->
    <script src="./nifty/js/bootstrap.min.js"></script>


    <!--Nifty Admin [ RECOMMENDED ]-->
    <script src="./nifty/js/nifty.min.js"></script>
    <script src="./nifty/plugins/bootstrap-table/bootstrap-table.min.js"></script>






</head>

<!--TIPS-->
<!--You may remove all ID or Class names which contain "demo-", they are only used for demonstration. -->

<body>
<%String role=(String) session.getAttribute("role");%>
<%if(role==null){
    request.getRequestDispatcher("../login.jsp").forward(request,response);
}if(!role.contains("审批人员")){
    request.getRequestDispatcher("../login.jsp").forward(request,response);
}%>
<div id="container" class="effect mainnav-lg">

    <!--NAVBAR-->
    <!--===================================================-->
    <header id="navbar">
        <div id="navbar-container" class="boxed">

            <!--Brand logo & name-->
            <!--================================-->
            <div class="navbar-header">
                <a href="index.html" class="navbar-brand">
                    <img src="./nifty/img/logo.png" alt="Nifty Logo" class="brand-icon">
                    <div class="brand-title">
                        <span class="brand-text">报销管理系统</span>
                    </div>
                </a>
            </div>
            <!--================================-->
            <!--End brand logo & name-->


            <!--Navbar Dropdown-->
            <!--================================-->
            <div class="navbar-content clearfix">
                <ul class="nav navbar-top-links pull-left">

                    <!--Navigation toogle button-->
                    <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                    <li class="tgl-menu-btn">
                        <a class="mainnav-toggle" href="#">
                            <i class="pli-view-list icon-lg"></i>
                        </a>
                    </li>
                    <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                    <!--End Navigation toogle button-->



                </ul>
                <ul class="nav navbar-top-links pull-right">



                    <!--User dropdown-->
                    <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                    <li id="dropdown-user" class="dropdown">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle text-right">
                                <span class="ic-user pull-right">
                                    <!-- You may use image instead of an icon.
                                    <!--<img class="img-circle img-user media-object" src="img/av1.png" alt="Profile Picture">-->
<%--                                    <i class="pli-male"></i>--%>
                                </span>
<%--                            <div class="username hidden-xs">John Doe</div>--%>
                        </a>


                        <div class="dropdown-menu dropdown-menu-md dropdown-menu-right panel-default">



                            <!-- User dropdown menu -->
<%--                            <ul class="head-list">--%>

<%--                                <li>--%>
<%--                                    <a href="#">--%>
<%--                                        <span class="badge badge-danger pull-right">9</span>--%>
<%--                                        <i class="pli-mail icon-fw icon-lg"></i> 信息--%>
<%--                                    </a>--%>
<%--                                </li>--%>
<%--                                <li>--%>
<%--                                    <a href="#">--%>
<%--                                        <span class="label label-success pull-right">New</span>--%>
<%--                                        <i class="pli-gear icon-fw icon-lg"></i> 设置--%>
<%--                                    </a>--%>
<%--                                </li>--%>
<%--                            </ul>--%>

<%--                            <!-- Dropdown footer -->--%>
<%--                            <div class="pad-all text-right">--%>
<%--                                <a href="pages-login.html" class="btn btn-primary">--%>
<%--                                    <i class="pli-unlock icon-fw"></i> 登出--%>
<%--                                </a>--%>
<%--                            </div>--%>
                        </div>
                    </li>
                    <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                    <!--End user dropdown-->


                </ul>
            </div>
            <!--================================-->
            <!--End Navbar Dropdown-->

        </div>
    </header>
    <!--===================================================-->
    <!--END NAVBAR-->

    <div class="boxed">

        <!--CONTENT CONTAINER-->
        <!--===================================================-->
        <div id="content-container">

            <!--Page Title-->
            <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
            <div id="page-title">
                <h1 class="page-header text-overflow">审批报销申请单</h1>

                <!--Searchbox-->
                <div class="searchbox">
                    <div class="input-group custom-search-form">
<%--                        <input type="text" class="form-control" placeholder="搜索..">--%>
                        <span class="input-group-btn">
<%--                                <button class="text-muted" type="button"><i class="pli-magnifi-glass"></i></button>--%>
                            </span>
                    </div>
                </div>
            </div>
            <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
            <!--End page title-->


            <!--Breadcrumb-->
            <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
            <ol class="breadcrumb">
                <li><a href="#">财务管理</a></li>
                <li class="active">审批报销申请单</li>
            </ol>
            <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
            <!--End breadcrumb-->




            <!--Page content-->
            <!--===================================================-->
            <div id="page-content">



                <div class="col-sm-12">

                    <!--Custom Toolbar-->
                    <!--===================================================-->
                    <div class="panel">
                        <div class="panel-heading">
                            <h3 class="panel-title">审批报销单：查询报销单、查看报销单详情并且审批</h3>
                        </div>
                        <div class="panel-body">
                            <!-- Inline Form  -->
                            <!--===================================================-->
<%--                            <form class="form-inline">--%>
<%--                                <div class="form-group">--%>
<%--                                    <label for="demo-inline-inputmail" class="sr-only">开始日期</label>--%>
<%--                                    <input type="email" placeholder="开始日期" id="demo-inline-inputmail" class="form-control">--%>
<%--                                </div>--%>
<%--                                <div class="form-group">--%>
<%--                                    <label for="demo-inline-inputmail" class="sr-only">截止日期</label>--%>
<%--                                    <input type="email" placeholder="截止日期" id="demo-inline-inputmail" class="form-control">--%>
<%--                                </div>--%>
<%--                                <div class="form-group">--%>
<%--                                    <label for="demo-inline-inputmail" class="sr-only">支付状态</label>--%>
<%--                                    <input type="email" placeholder="报销状态" id="demo-inline-inputmail" class="form-control">--%>
<%--                                </div>--%>


<%--                                <!-- <div class="checkbox">--%>
<%--                                    <input id="demo-remember-me" class="magic-checkbox" type="checkbox">--%>
<%--                                    <label for="demo-remember-me">Remember me</label>--%>
<%--                                </div> -->--%>
<%--                                <button class="btn btn-primary" type="submit">搜索</button>--%>
<%--                                <!-- <button class="btn btn-default" type="submit">重置</button> -->--%>
<%--                            </form>--%>
                            <!--===================================================-->
                            <!-- End Inline Form  -->
                            <!-- <button id="demo-delete-row" class="btn btn-primary" ><i class="glyphicon glyphicon-plus"></i> 添加</button> -->
                            <table id="demo-custom-toolbar" class="demo-add-niftycheck" data-toggle="table"
                                   data-multiple-search="true"
                                   data-show-refresh="true"
                                   data-show-toggle="true"
                                   data-show-columns="true"
                                   data-toolbar="#demo-delete-row"
                                   data-search="true"
                                   data-sort-name="id"
                                   data-page-list="[5, 10, 20]"
                                   data-page-size="10"
                                   data-height="600"
                                   data-pagination="true" data-show-pagination-switch="false">
                                <thead>
                                <tr>
                                    <th data-align="center" data-sortable="true" >序号</th>
                                    <th>报销单号</th>
                                    <th data-sortable="true">提交日期</th>
                                    <th>消费类别</th>
                                    <th>费用</th>
                                    <th>发票类别</th>
                                    <th>是否同意</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <% int i = 0;%>
                                <c:forEach  items="${ExpenseList}" var="i">
                                    <%--<c:forEach items="${User}"  >--%>
                                    <tr>
                                        <td><%=++i%></td>
                                        <td>${i.expense_num}</td>
                                        <td>${i.create_current_date}</td>
                                        <td>${i.create_cost_category}</td>
                                        <td>${i.create_fee}</td>
                                        <td>${i.create_invoice_type}</td>
                                        <td>
                                            <c:if test="${i.shen_pi_status == 0}">
                                            <button class="btn btn-success btn-sm"  id="submitShenPiButton" onclick="change_shenpi_status('${i.expense_num}','1')" >&nbsp同意&nbsp</button>
                                            <button class="btn btn-warning btn-sm"  id="submitShenPiButton" onclick="change_shenpi_status('${i.expense_num}','2')" >不同意</button></td>
                                            </c:if>
                                            <c:if test="${i.shen_pi_status == 1}"><button class="btn btn-success btn-sm" disabled>已同意</button></td></c:if>
                                            <c:if test="${i.shen_pi_status == 2}"><button class="btn btn-danger btn-sm" disabled>已拒绝</button></td></c:if>

                                        <td> <button class="btn btn-default btn-sm" onclick="expense_details('${i.expense_num}')" >查看</button> &nbsp </td>
                                    </tr>
                                    <%--</c:forEach>--%>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!--===================================================-->

                </div>

            </div>
            <!--===================================================-->
            <!--End page content-->


        </div>
        <!--===================================================-->
        <!--END CONTENT CONTAINER-->



        <!--MAIN NAVIGATION-->
        <!--===================================================-->
        <nav id="mainnav-container">
            <div id="mainnav">

                <!--Menu-->
                <!--================================-->
                <div id="mainnav-menu-wrap">
                    <div class="nano">
                        <div class="nano-content">

                            <!--Profile Widget-->
                            <!--================================-->
                            <div id="mainnav-profile" class="mainnav-profile">
                                <div class="profile-wrap text-center">
                                    <div class="pad-btm">
                                        <img class="img-circle img-md" src="./nifty/img/profile-photos/9.png"
                                             alt="Profile Picture">
                                    </div>
                                    <a href="#profile-nav" class="box-block" data-toggle="collapse"
                                       aria-expanded="false">
                                            <span class="pull-right dropdown-toggle">
                                                <i class="dropdown-caret"></i>
                                            </span>
                                        <p class="mnp-name">你好,<%=session.getAttribute("username")%></p>
                                        <span class="mnp-desc">当前身份:审批</span>
                                    </a>
                                </div>
                                <div id="profile-nav" class="collapse list-group bg-trans">

<%--                                    <a href="#" class="list-group-item">--%>
<%--                                        <i class="pli-gear icon-lg icon-fw"></i> 设置--%>
<%--                                    </a>--%>
<%--                                    <a href="#" class="list-group-item">--%>
<%--                                        <i class="pli-information icon-lg icon-fw"></i> 帮助--%>
<%--                                    </a>--%>
                                    <a href="Logout" class="list-group-item">
                                        <i class="pli-unlock icon-lg icon-fw"></i> 登出
                                    </a>
                                </div>
                            </div>


                            <!--Shortcut buttons-->
                            <!--================================-->
                            <div id="mainnav-shortcut">
<%--                                <ul class="list-unstyled shortcut-wrap">--%>
<%--                                    <li class="col-xs-3" data-content="我的信息">--%>
<%--                                        <a class="shortcut-grid" href="#">--%>
<%--                                            <div class="icon-wrap icon-wrap-sm icon-circle bg-trans-dark">--%>
<%--                                                <i class="psi-male"></i>--%>
<%--                                            </div>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>
<%--                                    <li class="col-xs-3" data-content="信息">--%>
<%--                                        <a class="shortcut-grid" href="#">--%>
<%--                                            <div class="icon-wrap icon-wrap-sm icon-circle bg-trans-dark">--%>
<%--                                                <i class="psi-speech-bubble-3"></i>--%>
<%--                                            </div>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>
<%--                                    <li class="col-xs-3" data-content="活动">--%>
<%--                                        <a class="shortcut-grid" href="#">--%>
<%--                                            <div class="icon-wrap icon-wrap-sm icon-circle bg-trans-dark">--%>
<%--                                                <i class="psi-thunder"></i>--%>
<%--                                            </div>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>
<%--                                    <li class="col-xs-3" data-content="锁屏">--%>
<%--                                        <a class="shortcut-grid" href="#">--%>
<%--                                            <div class="icon-wrap icon-wrap-sm icon-circle bg-trans-dark">--%>
<%--                                                <i class="psi-lock-2"></i>--%>
<%--                                            </div>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>
<%--                                </ul>--%>
                            </div>
                            <!--================================-->
                            <!--End shortcut buttons-->

                            <ul id="mainnav-menu" class="list-group">


                                <!--Menu list item-->
                                <li class="active-sub">
                                    <a href="Welcome">
                                        <i class="psi-mouse-3"></i>
                                        <span class="menu-title">欢迎</span>
                                        <i class="arrow"></i>
                                    </a>
                                </li>



                                <!--Category name-->
                                <li class="list-header">功能列表
                                </li>

                                <!--Menu list item-->
                                <li class="">
                                    <a href="#">
                                        <i class="psi-mouse-3"></i>
                                        <span class="menu-title">报销管理</span>
                                        <i class="arrow"></i>
                                    </a>

                                    <!--Submenu-->
                                    <ul class="collapse in">


                                        <li><a href="ApprovalList">审批报销申请单</a></li>
<%--                                        <li><a href="">审批数据汇总</a></li>--%>



                                    </ul>
                                </li>



                            </ul>




                        </div>
                    </div>
                </div>
                <!--================================-->
                <!--End menu-->

            </div>
        </nav>
        <!--===================================================-->
        <!--END MAIN NAVIGATION-->


    </div>



    <!-- FOOTER -->
    <!--===================================================-->
    <footer id="footer">

        <!-- Visible when footer positions are fixed -->
        <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
        <div class="show-fixed pad-rgt pull-right">
            You have <a href="#" class="text-main"><span class="badge badge-danger">3</span> pending action.</a>
        </div>



        <!-- Visible when footer positions are static -->
        <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
        <div class="hide-fixed pull-right pad-rgt">
            www.leondon.cn版权所有©
        </div>



        <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
        <!-- Remove the class "show-fixed" and "hide-fixed" to make the content always appears. -->
        <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

        <p class="pad-lft">&#0169; 2019 Leondon</p>



    </footer>
    <!--===================================================-->
    <!-- END FOOTER -->


    <!-- SCROLL PAGE BUTTON -->
    <!--===================================================-->
    <button class="scroll-top btn">
        <i class="pci-chevron chevron-up"></i>
    </button>
    <!--===================================================-->



</div>
<!--===================================================-->
<!-- END OF CONTAINER -->



</body>
<script>
    function change_shenpi_status(expense_num,agreeStatus) {
        $.ajax({
            type:"post",
            url:"changeShenpiStatus",
            data:{
                "expense_num" : expense_num,
                "agreeStatus" : agreeStatus
            },
            success:function(result){
                if (result=="success") {
                    alert("已同意");

                }
                if (result=="failure") {
                    alert("失败")
                }
                location.reload();
            }
        })


    }

    function expense_details(expense_num) {
        var pathName=window.document.location.pathname;
        var projectName=pathName.substring(0,pathName.substr(1).indexOf('/')+1);
        window.location.href=projectName+"/ApprovalDetails?expense_num="+expense_num;
    }
</script>

</html>