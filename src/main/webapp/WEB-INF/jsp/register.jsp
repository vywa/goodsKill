<?xml version="1.0" encoding="UTF-8" ?>
<%@include file="common/head.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:f="http://java.sun.com/jsf/core" xmlns:h="http://java.sun.com/jsf/html">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>
<link href="http://cdn.bootcss.com/bootstrap-validator/0.5.3/css/bootstrapValidator.min.css" rel="stylesheet">
<style type="text/css">
	.form-control{
		width:40%;
	}
</style>
<script type="text/javascript">
$(document).ready(function() {
    /**
     * 下面是进行插件初始化
     * 你只需传入相应的键值对
     * */
    $('#defaultForm').bootstrapValidator({
            message: 'This value is not valid',
            feedbackIcons: {/*输入框不同状态，显示图片的样式*/
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {/*验证*/
                account: {/*键名username和input name值对应*/
                    message: 'The username is not valid',
                    validators: {
                        notEmpty: {/*非空提示*/
                            message: '用户名不能为空'
                        },
                        stringLength: {/*长度提示*/
                            min: 6,
                            max: 20,
                            message: '用户名长度必须在6到20之间'
                        }/*最后一个没有逗号*/
                    }
                },
                password: {
                    message:'密码无效',
                    validators: {
                        notEmpty: {
                            message: '密码不能为空'
                        },
                        stringLength: {
                            min: 6,
                            max: 30,
                            message: '用户名长度必须在6到20之间'
                        }
                    }
                },
                email: {
                    validators: {
                        notEmpty: {
                            message: 'The email address is required and can\'t be empty'
                        },
                        emailAddress: {
                            message: 'The input is not a valid email address'
                        }
                    }
                }
            }
        });
});
</script>
</head>
<body>
	<div style="width:35%;margin:0 auto;">
		<form id="defaultForm" action="register" role="form" style="width:100%;" method="post">
		<div class="form-group">
			<label for="account" >创建账号：</label>
			<input type="text" class="form-control" name="account" id="account" placeholder="6-20位字母数字以及下划线"></input>
		</div>
		<div class="form-group">
			<label for="password" >创建密码：</label>
			<input type="password" class="form-control" name="password" id="password" placeholder="6-20数字字母混合密码"></input>
		</div>
		<div class="form-group">
			<label for="password2" >再次输入：</label>
			<input type="password" class="form-control" id="password2" placeholder="请保持输入密码一致"></input>
		</div>
		<div class="form-group">
			<label for="password2" style="display:block;">手机验证码：</label>
			<input type="text" class="form-control" name="phoneCode" id="phoneCode" placeholder="输入手机收到的验证码" style="display:inline;"></input>
			<button type="button" class="btn btn-info">获取短信验证码</button>
			<p></p>
			
		</div>
		<div class="form-group">
			<button type="button" class="btn btn-info">注册</button>
		</div>
	</form>
	</div>
	
	
	
	
</body>



	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<script src="http://cdn.bootcss.com/bootstrap-validator/0.5.3/js/bootstrapValidator.js"></script>
</html>