<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>싸고 예쁜 쇼핑몰 쿨20</title>
	<style>
		#wrap {
			width: 80%;
			margin: 0 auto;
			overflow: hidden;
		}

		.page_header_wrapper {
			clear: both;
		}

		.page_footer_wrapper {
			clear: both;
		}
		/* Page Content */
#page_content {
   text-align: center;
   float: left;
   width: 100%;
}

.nav {
   width: 100%;
   height: 34px;
   float: right;
   padding: 0px;
   margin-top: 15px;
   margin-right: 0px;
   margin-bottom: 0px;
   margin-left: 0px;
}

.nav ul {
   list-style-position: inside;
   list-style-type: none;
   margin: 0px;
   /*전체 내부여백 삭제*/
   padding: 0px;
   /*버튼앞 이미지 여백삭제*/
}

.nav ul li {
   float: right;
   /*버튼 가로정렬*/
   width: 97px;
}

ul {
   list-style-type: none;
   margin: 0;
   padding: 0;
   width: 200px;
}

li a {
   display: block;
   color: #000;
   padding: 8px 16px;
   text-decoration: none;
}

/* Content */
#content {
   float: left;
   width: 80%;
}

/* Content center Image Slide */
@import url(https://fonts.googleapis.com/css?family=Varela+Round);

.slides {
   padding: 0;
   width: 100%;
   height: 600px;
   display: block;
   margin: 0 auto;
   position: relative;
}

.slides * {
   user-select: none;
   -ms-user-select: none;
   -moz-user-select: none;
   -khtml-user-select: none;
   -webkit-user-select: none;
   -webkit-touch-callout: none;
}

.slides input {
   display: none;
}

.slide-container {
   display: block;
}

.slide {
   top: 0;
   opacity: 0;
   width: 100%;
   height: 100%;
   display: block;
   position: absolute;

   transform: scale(0);

   transition: all .7s ease-in-out;
}

.slide img {
   width: 100%;
   height: 600px;
}


.nav label {
   width: 200px;
   height: 100%;
   display: none;
   position: absolute;

   opacity: 0;
   z-index: 9;
   cursor: pointer;

   transition: opacity .2s;

   color: #FFF;
   font-size: 156pt;
   text-align: center;
   line-height: 380px;
   font-family: "Varela Round", sans-serif;
   background-color: rgba(255, 255, 255, .3);
   text-shadow: 0px 0px 15px rgb(119, 119, 119);
}

.slide:hover+.nav label {
   opacity: 0.5;
}

.nav label:hover {
   opacity: 1;
}

.nav .prev {
   top: 0;
   left: 0;
}

.nav .next {
   top: 0;
   right: 0;
}

input:checked+.slide-container .slide {
   opacity: 1;
   transform: scale(1);
   transition: opacity 0.5s ease-in-out;
}

input:checked+.slide-container .nav label {
   display: block;
}

.nav-dots {
   width: 100%;
   bottom: 9px;
   height: 11px;
   display: block;
   position: absolute;
   text-align: center;
}

.nav-dots .nav-dot {
   top: -5px;
   width: 11px;
   height: 11px;
   margin: 0 4px;
   position: relative;
   border-radius: 100%;
   display: inline-block;
   background-color: rgba(0, 0, 0, 0.6);
}

.nav-dots .nav-dot:hover {
   cursor: pointer;
   background-color: rgba(0, 0, 0, 0.8);
}

input#img-1:checked~.nav-dots label#img-dot-1,
input#img-2:checked~.nav-dots label#img-dot-2,
input#img-3:checked~.nav-dots label#img-dot-3,
input#img-4:checked~.nav-dots label#img-dot-4,
input#img-5:checked~.nav-dots label#img-dot-5,
input#img-6:checked~.nav-dots label#img-dot-6 {
   background: rgba(0, 0, 0, 0.8);
}
		
	</style>
</head>
<body>
<div id="wrap">
	<!-- page_header 삽입 위치 -->
	<div class="page_header_wrapper">
		<jsp:include page="../global/page_header.jsp" flush="false"/>
	</div>

	<!-- page_content -->
	<div id="page_content">
		<!-- 메인페이지 내용추가 -->
		<ul class="slides">
				<input type="radio" name="radio-btn" id="img-1" checked />
				<li class="slide-container">
					<div class="slide">
						<a href="/Project/html/advertisement/ad_movie.jsp"> <img src="/project/images/EventPage1.png" />
						</a>
					</div>
					<div class="nav">
						<label for="img-6" class="prev">&#x2039;</label> <label for="img-2" class="next">&#x203a;</label>
					</div>
				</li>

				<input type="radio" name="radio-btn" id="img-2" />
				<li class="slide-container">
					<div class="slide">
						<a href="sub9_purchase.jsp?iid=69"> <img src="/images/cloth3_4.png" />
						</a>
					</div>
					<div class="nav">
						<label for="img-1" class="prev">&#x2039;</label> <label for="img-3" class="next">&#x203a;</label>
					</div>
				</li>
				<input type="radio" name="radio-btn" id="img-3" />
				<li class="slide-container">
					<div class="slide">
						<a href="sub3_itemlist.jsp?frm1=상의"> <img src="images/cloth5_6.png" />
						</a>
					</div>
					<div class="nav">
						<label for="img-2" class="prev">&#x2039;</label> <label for="img-4" class="next">&#x203a;</label>
					</div>
				</li>
				<input type="radio" name="radio-btn" id="img-4" />
				<li class="slide-container">
					<div class="slide">
						<a href="sub3_itemlist.jsp?frm1=하의"> <img src="images/pants1_2.png" />
						</a>
					</div>
					<div class="nav">
						<label for="img-3" class="prev">&#x2039;</label> <label for="img-5" class="next">&#x203a;</label>
					</div>
				</li>
				<input type="radio" name="radio-btn" id="img-5" />
				<li class="slide-container">
					<div class="slide">
						<a href="sub9_purchase.jsp?iid=61"> <img src="images/hat1_1.png" />
						</a>
					</div>
					<div class="nav">
						<label for="img-4" class="prev">&#x2039;</label> <label for="img-6" class="next">&#x203a;</label>
					</div>
				</li>
				<input type="radio" name="radio-btn" id="img-6" />
				<li class="slide-container">
					<div class="slide">
						<a href="sub9_purchase.jsp?iid=62"> <img src="images/hat2_1.png" />
						</a>
					</div>
					<div class="nav">
						<label for="img-5" class="prev">&#x2039;</label> <label for="img-1" class="next">&#x203a;</label>
					</div>
				</li>
				<li class="nav-dots"><label for="img-1" class="nav-dot" id="img-dot-1"></label> <label for="img-2" class="nav-dot" id="img-dot-2"></label> <label for="img-3" class="nav-dot" id="img-dot-3"></label> <label for="img-4" class="nav-dot" id="img-dot-4"></label> <label for="img-5" class="nav-dot" id="img-dot-5"></label> <label for="img-6" class="nav-dot" id="img-dot-6"></label></li>
			</ul>

		</div>
	</div>

	<!-- page_footer 삽입 위치 -->
	<div class="page_footer_wrapper">
		<jsp:include page="../global/page_footer.jsp" flush="false"/>
	</div>
</div>
</body>
</html>
