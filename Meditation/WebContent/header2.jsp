<%@page import="vo.MemberVO" %>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html lang="ko">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>치명상</title>
            <link rel="stylesheet" href="<%=request.getContextPath()%>/css/fontawesome/css/all.min.css">
            <link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap/css/bootstrap-grid.min.css">
            <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
            <link href="./resources/imgs/headerIcon.png" rel="shortcut icon" type="image/x-icon">
            <script src="<%=request.getContextPath()%>/js/jquery-3.1.1.min.js"></script>
        </head>

        <body>
            <div class="wrapper">
                <header>
                    <div class="header-wrap row align-items-center justify-content-between">
                        <div class="col-2">
                            <div class="logo d-flex align-items-center justify-content-left">                                
                                <img src="./resources/imgs/logo2.png" alt="로고" width="100px">
                            </div>
                        </div>
                        <nav class="menuBox col-7">
                            <ul class="menu d-flex align-items-center justify-content-left">
                                <li><a href="#">명상</a></li>
                                <li><a href="#">전생 체험</a></li>
                                <li><a href="#">주파수</a></li>
                            </ul>
                        </nav>
                        <div class="sign col-3">
                            <div class="d-flex align-items-center justify-content-right">
                            
                            <div class="searchBox">
                                <div class="search">
                                    <i class="fa-solid fa-magnifying-glass"></i>
                                </div>
                            </div>
                            <% MemberVO login=(MemberVO) session.getAttribute("loginOK"); if(login==null) { %>

                                <div class="login">
                                    <a href="<%=request.getContextPath()%>/member/login.jsp">로그인</a>
                                </div>
                                <div class="register">
                                    <a href="<%=request.getContextPath()%>/member/register.jsp">회원가입</a>
                                </div>

                                <% } else { %>


                                    <div class="login">
                                        <a href="<%=request.getContextPath()%>/member/myPage.jsp">
                                            <%=login.getName() %> 님
                                        </a>
                                    </div>
                                    <div class="register">
                                        <button onclick="logout()" id="logout">로그아웃</button>
                                    </div>
                                    <% } %>
                        </div></div>
                        <script>
                            function logout() {
                                let bool = confirm('정말 로그아웃 하시겠습니까?')
                                if (bool) {
                                    location.href = "<%=request.getContextPath()%>/logout";
                                    return;
                                } else {
                                    alert("로그아웃이 취소되었습니다.")

                                }
                            }
                        </script>
                    </div>
                </header>