<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file = "../header.jsp" %>
    <form action="<%=request.getContextPath()%>/login" method="post">
        <h1>로그인</h1>
        <input type="text" name="id" class="id" placeholder="아이디를 입력해주세요"><br>
        <input type="password" name="pwd" class="pwd" placeholder="비밀번호를 입력해주세요"> <br>

        <input type="submit" value="로그인">

    </form>

<%@ include file = "../footer.jsp" %>
