<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
<body>
    <div id="lnb">
        <h2>
        	<img src="assets/img/teaching/research_head.png" alt="科研">
        </h2>
        <span class="lnb-vs">
            <img src="assets/img/teaching/lnb_visual02.png" alt="IBM信息门户">
         </span>
		<ul class="m-lnb">
			<li class="" id="contest">
				<a href="research/contestProjects" class="nav-item-link">创新项目</a>
			</li>
			<li class="" id="inresearch">
				<a href="research/inresearchProjects" class="nav-item-link">在研项目</a>
			</li>
		</ul>
	</div>
</body>
</html>