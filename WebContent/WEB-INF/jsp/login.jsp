<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>登录页面</title>
<meta http-equiv=Content-Type content="text/html; charset=utf-8">
<link href="${pageContext.request.contextPath}/css/style.css"
	   type=text/css rel=stylesheet>
<link href="${pageContext.request.contextPath}/css/boot-crm.css"
	   type=text/css rel=stylesheet>
	   <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/demo.css" />
<!--必要样式-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/component.css" />
<script src=
       "${pageContext.request.contextPath}/js/jquery-1.11.3.min.js">
</script>
<meta content="MSHTML 6.00.2600.0" name=GENERATOR>
<script>
// 判断是登录账号和密码是否为空
function check(){
    var usercode = $("#usercode").val();
    var password = $("#password").val();
    if(usercode=="" || password==""){
    	$("#message").text("账号或密码不能为空！");

        return false;
    }  
    return true;
}
</script>
</head>
<body>
		<div class="container demo-1">
			<div class="content">
				<div id="large-header" class="large-header">
					<canvas id="demo-canvas"></canvas>
					<div class="logo_box">
						<h3>欢迎你</h3>
						<font color="red">
			 <%-- 提示信息--%>
			 <span id="message">${msg}</span>
		</font>
						<form  action="${pageContext.request.contextPath }/login.action" 
			                       method="post" onsubmit="return check()" name="f">
							<div class="input_outer">
								<span class="u_user"></span>
								<input id="usercode" name="usercode" class="text" style="color: #FFFFFF !important" type="text" placeholder="请输入账户">
							</div>
							<div class="input_outer">
								<span class="us_uer"></span>
								<input id="password" name="password" class="text" style="color: #FFFFFF !important; position:absolute; z-index:100;"value="" type="password" placeholder="请输入密码">
							</div>
							<div class="mb2"><input class="act-but submit" type="submit" style="color: #FFFFFF" value="登录" /></div>
						</form>
					</div>
				</div>
			</div>
		</div><!-- /container -->
		<script src="${pageContext.request.contextPath}/js/TweenLite.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/EasePack.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/rAF.js"></script>
		<script src="${pageContext.request.contextPath}/js/demo-1.js"></script>
	</body>
</html>
