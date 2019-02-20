<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="UTF-8">
<title>ueditor demo</title>
</head>

<body>

	<form method="get" action="${ctx}/demo/save">
		<table>
			<tr>
				<td>用户名</td>
				<td>${name}</td>
			</tr>
			<tr>
				<td>性别</td>
				<td>${sex}</td>
			</tr>
			<tr>
				<td>个人信息</td>
				<td>
					<!-- 加载编辑器的容器 --> <script id="container" name="content"
						type="text/plain">
        ${personal_infomation}
    </script> <!-- 配置文件 --> <script type="text/javascript"
						src="utf8-jsp/ueditor.config.js"></script> <!-- 编辑器源码文件 --> <script
						type="text/javascript" src="utf8-jsp/ueditor.all.js"></script> <!-- 实例化编辑器 -->
					<script type="text/javascript">
						var ue = UE.getEditor('container');
					</script>
				</td>
			</tr>

		</table>
		<button>提交</button>
	</form>
</body>



</html>