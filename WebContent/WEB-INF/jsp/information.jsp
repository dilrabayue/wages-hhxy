<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="itheima" uri="http://itheima.com/common/"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>教师管理-BootCRM</title>
	<!-- 引入css样式文件 -->
	<!-- Bootstrap Core CSS -->
	<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" />
	<!-- MetisMenu CSS -->
	<link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet" />
	<!-- DataTables CSS -->
	<link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet" />
	<!-- Custom CSS -->
	<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet" />
	<!-- Custom Fonts -->
	<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath%>css/boot-crm.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="wrapper">
  <!-- 导航栏部分 -->
  <nav class="navbar navbar-default navbar-static-top" role="navigation"
		 style="margin-bottom: 0">
	<div class="navbar-header">
		<a class="navbar-brand" href="<%=basePath%>customer/list.action">怀化学院工资管理系统</a>
	</div>
	<!-- 导航栏右侧图标部分 -->
	<ul class="nav navbar-top-links navbar-right">
	    <!-- 邮件通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-envelope fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-messages">
				<li>
				    <a href="#">
						<div>
							<strong>张经理</strong> <span class="pull-right text-muted">
								<em>昨天</em>
							</span>
						</div>
						<div>今天晚上开会，讨论一下下个月工作的事...</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#">
				        <strong>查看全部消息</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul>
		</li>
		<!-- 邮件通知 end -->
		<!-- 任务通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
			    <i class="fa fa-tasks fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-tasks">
				<li>
				    <a href="#">
						<div>
							<p>
								<strong>任务 1</strong> 
								<span class="pull-right text-muted">完成40%</span>
							</p>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-success"
									role="progressbar" aria-valuenow="40" aria-valuemin="0"
									aria-valuemax="100" style="width: 40%">
									<span class="sr-only">完成40%</span>
								</div>
							</div>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<p>
								<strong>任务 2</strong> 
								<span class="pull-right text-muted">完成20%</span>
							</p>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-info" role="progressbar"
									aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
									style="width: 20%">
									<span class="sr-only">完成20%</span>
								</div>
							</div>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#"> 
				        <strong>查看所有任务</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
		</li>
		<!-- 任务通知 end -->
		<!-- 消息通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-bell fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-alerts">
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-comment fa-fw"></i> 新回复 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-envelope fa-fw"></i> 新消息 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-tasks fa-fw"></i> 新任务 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-upload fa-fw"></i> 服务器重启 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#"> 
				        <strong>查看所有提醒</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
		</li>
		<!-- 消息通知 end -->
		<!-- 用户信息和系统设置 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-user fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-user">
				<li><a href="#"><i class="fa fa-user fa-fw"></i>
				               用户：${USER_SESSION.user_name}
				        <c:if test="${USER_SESSION.cust_institute ==1 }">
				        	院部：计算机院
				        </c:if>
				        <c:if test="${USER_SESSION.cust_institute ==2 }">
				        	院部:教科院
				        </c:if>
				         <c:if test="${USER_SESSION.cust_institute ==3 }">
				        	院部:数计院
				        </c:if>
				         <c:if test="${USER_SESSION.cust_institute ==4 }">
				        	院部：文新院
				        </c:if>
				         <c:if test="${USER_SESSION.cust_institute ==5 }">
				        	院部：体育学院
				        </c:if>
				    </a>
				</li>
				<li><a href="#"><i class="fa fa-gear fa-fw"></i> 系统设置</a></li>
				<li class="divider"></li>
				<li>
					<a href="${pageContext.request.contextPath }/logout.action">
					<i class="fa fa-sign-out fa-fw"></i>退出登录
					</a>
				</li>
			</ul> 
		</li>
		<!-- 用户信息和系统设置结束 -->
	</ul>
	<!-- 左侧显示列表部分 start-->
	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<ul class="nav" id="side-menu">
				<li class="sidebar-search">
					<div class="input-group custom-search-form">
						<input type="text" class="form-control" placeholder="查询内容...">
						<span class="input-group-btn">
							<button class="btn btn-default" type="button">
								<i class="fa fa-search" style="padding: 3px 0 3px 0;"></i>
							</button>
						</span>
					</div> 
				</li>
				<c:if test="${USER_SESSION.cust_grade ==10}">
				<li>
				    <a href="${pageContext.request.contextPath }/customer/list.action" class="active">
				      <i class="fa fa-edit fa-fw"></i> 教师管理
				    </a>
				</li>
				</c:if>
				<c:if test="${USER_SESSION.cust_grade ==11}">
				    <c:if test="${USER_SESSION.cust_institute ==1}">
				    <li>
				       <a href="${pageContext.request.contextPath }/jkcustomer/list.action" class="active">
				          <i class="fa fa-edit fa-fw"></i> 教师管理
				        </a>
				    </li>
				    </c:if>
				    <c:if test="${USER_SESSION.cust_institute ==2}">
				    <li>
				       <a href="${pageContext.request.contextPath }/sjcustomer/list.action" class="active">
				          <i class="fa fa-edit fa-fw"></i> 教师管理
				        </a>
				    </li>
				    </c:if>
				    <c:if test="${USER_SESSION.cust_institute ==3}">
				    <li>
				       <a href="${pageContext.request.contextPath }/wxcustomer/list.action" class="active">
				          <i class="fa fa-edit fa-fw"></i> 教师管理
				        </a>
				    </li>
				    </c:if>
				    <c:if test="${USER_SESSION.cust_institute ==4}">
				    <li>
				       <a href="${pageContext.request.contextPath }/jsjcustomer/list.action" class="active">
				          <i class="fa fa-edit fa-fw"></i> 教师管理
				        </a>
				    </li>
				    </c:if>
				    <c:if test="${USER_SESSION.cust_institute ==5}">
				    <li>
				       <a href="${pageContext.request.contextPath }/tycustomer/list.action" class="active">
				          <i class="fa fa-edit fa-fw"></i> 教师管理
				        </a>
				    </li>
				    </c:if>
				</c:if>
				<c:if test="${USER_SESSION.cust_grade ==12}">
				<li>
				    <a href="${pageContext.request.contextPath }/information.action" class="active">
				      <i class="fa fa-edit fa-fw"></i> 教师管理
				    </a>
				</li>
				</c:if>
				<li>
				    <a href="${pageContext.request.contextPath}/information.action ">
				      <i class="fa fa-dashboard fa-fw" ></i> 个人信息
				    </a>
				</li>
			</ul>
		</div>
	</div>
	<!-- 左侧显示列表部分 end--> 
  </nav>
    <!-- 客户列表查询部分  start-->
	<div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">个人信息管理</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
			<div id="information">
			<table>
			<tr>
			<td>
			<h3>工号：</h3>
			</td>
			<td>
			${USER_SESSION.user_code}
			</td>
			</tr>
			<tr>
			<td>
				<h3>用户：</h3>
				</td>
				<td>
				${USER_SESSION.user_name}
				</td>
				<tr>
				<tr>
				<td>
					<h3>院部：</h3>
					</td>
					<td>
					<c:if test="${USER_SESSION.cust_institute ==1}">
						计算机院
					</c:if>
					<c:if test="${USER_SESSION.cust_institute ==2}">
						教科院
					</c:if>
					<c:if test="${USER_SESSION.cust_institute ==3}">
						数计院
					</c:if>
					<c:if test="${USER_SESSION.cust_institute ==4}">
						文新院
					</c:if>
					<c:if test="${USER_SESSION.cust_institute ==5}">
						体育学院
					</c:if>
					</td>
					</tr>
					<tr>
					<td>
				<h3>职务：</h3>
				</td>
				<td>
				<c:if test="${USER_SESSION.cust_post ==6}">
					教授
				</c:if>
				<c:if test="${USER_SESSION.cust_post ==7}">
					副教授
				</c:if>
				<c:if test="${USER_SESSION.cust_post ==8}">
					讲师
				</c:if>
				<c:if test="${USER_SESSION.cust_post ==9}">
					助教
				</c:if>
				</td>
				</tr>
				<tr>
				<td>
				<h3>等级</h3>
				</td>
				<td>
				<c:if test="${USER_SESSION.cust_grade ==12}">
					系统管理员
				</c:if>
				<c:if test="${USER_SESSION.cust_grade ==10}">
					院管理员
				</c:if>
				<c:if test="${USER_SESSION.cust_grade ==11}">
					教师
				</c:if>
				</td>
				</tr>
				<tr>
				<td>
				<h3>工资：</h3>
				</td>
				<td>
				${USER_SESSION.cust_wages}
				</td>
				</tr>
				<tr>
				<td>
				<h3>移动电话：</h3>
				</td>
				<td>
				${USER_SESSION.cust_mobile}
				</td>
				</tr>
				<tr>
				<td>
				<h3>联系地址：</h3>
				</td>
				<td>
				${USER_SESSION.cust_address}
				</td>
			</tr>
			</table>
			</div>
		
			</div>						
			
<!-- 修改客户模态框 -->
<div class="modal fade" id="customerEditDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">修改客户信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="edit_customer_form">
					<input type="hidden" id="edit_cust_id" name="cust_id"/>
					<div class="form-group">
						<label for="edit_phone" class="col-sm-2 control-label">工号</label>
						<div class="col-sm-10">
							
						<p class=form-control>${USER_SESSION.user_code}</p>
						
						</div>
					</div>
					<div class="form-group">
						<label for="edit_customerName" class="col-sm-2 control-label">教师名称</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_customerName" placeholder="教师名称" name="cust_name" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_customerFrom" style="float:left;padding:7px 15px 0 27px;" class="col-sm-2 control-label">院部</label> 
						<div class="col-sm-10">
							<select	class="form-control" id="edit_customerFrom" name="cust_institute">
								<option selected="selected">
								<c:if test="${USER_SESSION.cust_institute ==1}">
						计算机院
					</c:if>
					<c:if test="${USER_SESSION.cust_institute ==2}">
						教科院
					</c:if>
					<c:if test="${USER_SESSION.cust_institute ==3}">
						数计院
					</c:if>
					<c:if test="${USER_SESSION.cust_institute ==4}">
						文新院
					</c:if>
					<c:if test="${USER_SESSION.cust_institute ==5}">
						体育学院
					</c:if></option>
								
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="edit_custIndustry" style="float:left;padding:7px 15px 0 27px;" class="col-sm-2 control-label">职务</label>
						<div class="col-sm-10"> 
							<select	class="form-control" id="edit_custIndustry"  name="cust_post">
								<option value="" selected="selected">
								<c:if test="${USER_SESSION.cust_post ==6}">
									教授
								</c:if>
								<c:if test="${USER_SESSION.cust_post ==7}">
									副教授
								</c:if>
								<c:if test="${USER_SESSION.cust_post ==8}">
									讲师
								</c:if>
								<c:if test="${USER_SESSION.cust_post ==9}">
									助教
								</c:if>
								</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="edit_custLevel" style="float:left;padding:7px 15px 0 27px;" class="col-sm-2 control-label">等级</label>
						<div class="col-sm-10">
							<select	class="form-control" id="edit_custLevel" name="cust_grade">
								<option value="" selected="selected">
								<c:if test="${USER_SESSION.cust_grade ==10}">
									系统管理员
								</c:if>
								<c:if test="${USER_SESSION.cust_grade ==11}">
									院管理员
								</c:if>
								<c:if test="${USER_SESSION.cust_grade ==12}">
									教师
								</c:if>
								</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="edit_linkMan" class="col-sm-2 control-label">工资</label>
						<div class="col-sm-10">
						<p class=form-control>${USER_SESSION.cust_wages}</p>
						</div>
					</div>
					<div class="form-group">
						<label for="edit_mobile" class="col-sm-2 control-label">移动电话</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_mobile" placeholder="移动电话" name="cust_mobile" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_address" class="col-sm-2 control-label">联系地址</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_address" placeholder="联系地址" name="cust_address" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_password" class="col-sm-2 control-label">密码</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_password" placeholder="密码" name="cust_password" />
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="updateCustomer()">保存修改</button>
			</div>
		</div>
	</div>
</div>

<!-- 引入js文件 -->
<!-- jQuery -->
<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script src="<%=basePath%>js/metisMenu.min.js"></script>
<!-- DataTables JavaScript -->
<script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
<script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>
<!-- Custom Theme JavaScript -->
<script src="<%=basePath%>js/sb-admin-2.js"></script>
<!-- 编写js代码 -->
<script type="text/javascript">
//清空新建客户窗口中的数据
	function clearCustomer() {
		$("#new_phone").val("");
	    $("#new_customerName").val("");
	    $("#new_customerFrom").val("")
	    $("#new_custIndustry").val("")
	    $("#new_custLevel").val("")
	    $("#new_linkMan").val("");
	    $("#new_mobile").val("");
	    $("#new_address").val("");
	}
	// 创建客户
	function createCustomer() {
	$.post("<%=basePath%>customer/create.action",
	$("#new_customer_form").serialize(),function(data){
	        if(data =="OK"){
	            alert("客户创建成功！");
	            window.location.reload();
	        }else{
	            alert("客户创建失败！");
	            window.location.reload();
	        }
	    });
	}
	// 通过id获取修改的客户信息
	function editCustomer(id) {
	    $.ajax({
	        type:"get",
	        url:"<%=basePath%>customer/getCustomerById.action",
	        data:{"id":id},
	        success:function(data) {
	            $("#edit_cust_id").val(data.cust_id);
	           
	            $("#edit_customerName").val(data.cust_name);
	            $("#edit_mobile").val(data.cust_mobile);
	            $("#edit_address").val(data.cust_address);
	            $("#edit_password").val(data.cust_password);
	            
	        }
	    });
	}
    // 执行修改客户操作
	function updateCustomer() {
		$.post("<%=basePath%>customer/update.action",$("#edit_customer_form").serialize(),function(data){
			if(data =="OK"){
				alert("客户信息更新成功！");
				window.location.reload();
			}else{
				alert("客户信息更新失败！");
				window.location.reload();
			}
		});
	}
	// 删除客户
	function deleteCustomer(id) {
	    if(confirm('确实要删除该客户吗?')) {
	$.post("<%=basePath%>customer/delete.action",{"id":id},
	function(data){
	            if(data =="OK"){
	                alert("客户删除成功！");
	                window.location.reload();
	            }else{
	                alert("删除客户失败！");
	                window.location.reload();
	            }
	        });
	    }
	}
</script>
</body>
</html>