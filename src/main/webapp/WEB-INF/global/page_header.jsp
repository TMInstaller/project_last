<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#wrap {
   height: auto;
   width: 80%;
   margin-left: 10%;
}

/* Page Header */
#page_header {
   float: left;
   height: 145px;
   width: 100%;
}
#header_menu{
   border-bottom: 1px solid rgb(182, 182, 182);
   width:100%;
}


#header_menu_right{
   width:50%;
   float:right;
   height: 30px;
   margin-bottom: 5px;
   text-align: right;
}

#header_menu_left {
   width: 50%;
   height: 30px;
   margin-bottom: 5px;
   text-align: left;
}

a{
   text-decoration: none;
   color: rgb(114, 114, 114);
}
a:hover {
   color: rgb(153, 0, 0);
}

/* Search */
#search {
   z-index: -1;
   float: left;
   height: 97px;
   width: 30%;
   margin-top: 80px;
   vertical-align: bottom;
}


/* Logo */
#page_header_logo {
   margin-top: 10px;
   float: left;
   height: 97px;
   width: 40%;
   justify-content: center;
}

.logo_top {
   height: 97px;
   width: 167px;
   text-align: center;
   margin: auto;
}


/* MenuBar */
#menubar1 {
   text-align: center;
   margin-bottom: 10px;
   width: 100%;
   display: flex;
   border-bottom: 1px solid rgb(182, 182, 182);
   justify-content: space-between;
}

/* 드롭다운 메뉴  */

.dropdown-content {
   display: none;
   position: absolute;
   z-index: 10;
   text-align: center;
   /* ٸ    ҵ麸    տ    ġ*/
}

.dropdown-content a {
   display: block;
}

.dropdown:hover .dropdown-content {
   border: 1px solid wheat;
   background-color: white;
   display: block;
   margin-top: 2px;
   margin-left: 1%;
   padding: 25px;
}
/* 드롭다운 메뉴 끝 */

#menubar1 .search{
   display:inline-block;
}

/* 텍스트 슬라이드 */
.animated-text {
   color: rgb(0, 0, 0);
   padding: 0 40px;
   height: 30px;
   overflow: hidden;
}

.line {
   text-transform: uppercase;
   text-align: center;
   font-size: 1vw;
   line-height: 30px;
}

.line:first-child {
   animation: anim 12s infinite;
}

@keyframes anim {
   0% {
      margin-top: 0;
   }

   16% {
      margin-top: -30px;
   }

   33% {
      margin-top: -60px;
   }

   50% {
      margin-top: -90px;
   }

   66% {
      margin-top: -60px;
   }

   82% {
      margin-top: -30px;
   }

   100% {
      margin-top: 0;
   }
}
/* 텍스트 슬라이드 끝 */

#menubar2 {
   width: 100%;
   text-align: center;
}
</style>
</head>
<body>
   <div id="page_header">
      <div id="header_menu">
         <div id="header_menu_right">
            <%
               String loginid = null;
               String loginname = null;
                 //                    
                 loginid = (String)session.getAttribute("LOGINID");
                 loginname = (String)session.getAttribute("LOGINNAME");
               String admin = "admin";
            %>
            <% if(loginid==null){ %>
            <a style="cursor:default;" href="sub1_loginform.jsp">비로그인 유저입니다</a>&nbsp;&nbsp;&nbsp;
            <a href=sub2_joinform.jsp>회원가입</a> &nbsp;&nbsp;&nbsp; 
            <a href=sub1_loginform.jsp>로그인</a>
            <% }else if(loginid!=null){%>
            <a>[<%= session.getAttribute("LOGINID") %>]님 환영합니다</a> &nbsp;&nbsp;&nbsp; 
            <a href=sub9_cartview_main.jsp?>장바구니</a> &nbsp;&nbsp;&nbsp; 
            <a href=sub1_logout.jsp>로그아웃</a>
            <% }; %>
         </div>
         <div id="header_menu_left">
         <% if(loginid!=null){ %>
            <a href="sub6_reviewlist.jsp">REVIEW</a> &nbsp;&nbsp;&nbsp;
            <a href="sub7_notice_list.jsp">NOTICE</a> &nbsp;&nbsp;&nbsp;
            <% if(loginid.equals("admin")){ %>
               <a href="sub8_additems_list.jsp">상품관리</a>&nbsp;&nbsp;&nbsp;
            <% } %>
         <% }else{ %>
           <a onclick="service()" style="cursor:pointer">REVIEW &nbsp;&nbsp;&nbsp;</a>
           <a onclick="service()" style="cursor:pointer">NOTICE &nbsp;&nbsp;&nbsp;</a>
         <% } %>
         </div>
      </div>
      <div id="search">
         <section></section>
      </div>
      <div id="page_header_logo">
         <div class="logo_top">
            <a href="WEB-INF/project/mainPage.jsp"> <img src="WEB-INF/project/images/cool20.png" width="167" height="97" />
            </a>
         </div>
      </div>

   </div>
   
   <div id="menubar1">
      <div class="menubar_left">
         
      <div class="search">
         <form method="post">
            <input type="text" name="keyword"onkeypress="if(event.keyCode==13){searchCheck(form);}"> 
            <input type="button" value="상품검색" onclick="searchCheck(form)">
         </form>
      </div>
   </div>
   <div id="menubar2">
      <a href="sub3_itemlist.jsp">All</a>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="sub3_itemlist.jsp?frm1=    ">TOP</a>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="sub3_itemlist.jsp?frm1=    ">PANTS</a>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="sub3_itemlist.jsp?frm1=    ">HAT</a>
   </div>
   
   
      <script type="text/javascript">
      function service(){
          let loginId= "${LOGINID}";
          if(loginId ==""){
             alert("로그인 후 사용하실 수 있습니다");
             location.href="/Project/html/sub1_loginform.jsp";
          }
       }
      
      function searchCheck(frm1){
         if (frm1.keyword.value==""){
            alert("검색어를 입력하세요.");
            //     
            frm1.keyword.focus();
            //     ̴           
            return;
         } else {
            frm1.submit();
            var key = frm1.keyword.value.trim();
            window.open("sub3_itemlist.jsp?frm1="+key);

            //    
         }
      }
</script>
</body>
</html>