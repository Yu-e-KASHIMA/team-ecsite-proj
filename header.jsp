<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/header.css">
<title>header</title>
<script>
function goLoginAction(){
	document.getElementById("form").action="GoLoginAction";
}
function goMyPageAction(){
	document.getElementById("form").action="MyPageAction";
}
function goCartAction(){
	document.getElementById("form").action="CartAction";
}
function goProductListAction(){
	document.getElementById("categoryId").value=1;
	document.getElementById("form").action="ProductListAction";
}
function goLogoutAction(){
	document.getElementById("form").action="LogoutAction";
}
function goSearchItemAction(){
	document.getElementById("form").action="SearchItemAction";
}
</script>
</head>
<body>
<header>
<div id="header">
<div id="header-title">i1810c</div>
	<div id="header-menu">
        <s:form id="form" name="form">
            <div id="box1">
				<ul>
					<s:if test="#session.logined==1">
						<li><s:submit value="ログアウト" class="header-btn" onclick="goLogoutAction();" /></li>
					</s:if>
					<s:else>
						<li><s:submit value="ログイン" class="header-btn" onclick="goLoginAction();" /></li>
					</s:else>
					<li><s:submit value="カート" class="header-btn" onclick="goCartAction();" /></li>
					<li><s:submit value="商品一覧" class="header-btn" onclick="goProductListAction();" /></li>
					<s:if test="#session.logined==1">
                        <li><s:submit value="マイページ" class="header-btn" onclick="goMyPageAction();" /></li>
					</s:if>
				</ul>
			</div>

			<div id="box2">
				<ul>
					<s:if test='#session.containsKey("mCategoryDtoList")'>
						<li class="keywords-box1"><s:select name="categoryId" list="#session.mCategoryDtoList" listValue="categoryName" listKey="categoryId" id="categoryId" class="pul"/></li>
					</s:if>
					<li class="keywords-box2"><s:textfield name="keywords" class="txt-keywords" placeholder="検索ワード" /></li>
					<li class="keywords-box3"><s:submit value="商品検索" class="search-btn" onclick="goSearchItemAction();" /></li>
				</ul>
            </div>

		</s:form>
	</div>
</div>
</header>
</body>
</html>