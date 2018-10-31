<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/myPage.css">
<link rel="stylesheet" href="./css/product.css">
<link rel="stylesheet" href="./css/i1810c.css">
<title>マイページ</title>
</head>
<body>

<s:include value="header.jsp"/>

<div id="mypage-contents">
    <div id="title-box">
        <h4 class="title">マイページ</h4>
    </div>
    <s:form action="PurchaseHistoryAction">
        <table class="common-table">
            <tr>
                <th><s:label value="氏名"/></th>
                <td><s:property value="name"/></td>
            </tr>
            <tr>
                <th><s:label value="ふりがな" /></th>
                <td><s:property value="furigana"/></td>
            </tr>
            <tr>
                <th><s:label value="性別" /></th>
                <td><s:property value="sex"/></td>
            </tr>
            <tr>
                <th><s:label value="メールアドレス" /></th>
                <td><s:property value="email" /></td>
            </tr>
        </table>
        <div class="submit-btn-box">
            <s:submit value="購入履歴" class="submit-btn"/>
        </div>
    </s:form>
</div>
<s:include value="footer.jsp"/>
</body>
</html>