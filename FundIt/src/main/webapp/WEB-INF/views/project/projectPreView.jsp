<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="" name="pageTitle"/>
</jsp:include>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- 창작자문의 메세지이모티콘 링크 --><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
/**************************** header ****************************/
body{
	user-select: none;
	overflow-x: hidden;
}

div#nav a, div#nav a:link, div#nav a:visited, div#nav a:active, div#nav a:hover{
	text-decoration: none;
	color: black;
}
div#nav{
	width: 110%;
    height: 60px;
    padding: 6.5px 20% 0;
    box-sizing: border-box;
    background: rgba(255,255,255,0.8);
    position: fixed;
    left: -5%;
    top: -5px;
    z-index: 100;
    font-size: 16px;
}
div#nav div{
	display: inline-block;
	width: 30%;
	font-family: 'Do Hyeon', sans-serif;
	position: relative;
   	box-sizing: border-box;
   	color: black;
}
div#nav div#nav-menu{
	text-align: left;
	padding-left: 20px;
}
div#nav div#nav-title{
	text-align: center;
	font-family: 'Shadows Into Light', cursive;
	font-size: 2em;
    padding-left: 10%;
}
div#nav div#nav-login{
	width: 37%;
	text-align: right;
	padding-right: 20px;
}
div#nav div#nav-login img{
	width: 35px;
    top: -4px;
    position: relative;
    cursor: pointer;
}
div#nav div#nav-menu img{
	width: 20px;
    /* top: 5px; */
    position: relative;
}
.menu-click:hover, .profile-click:hover{
	cursor: pointer;
}
div#nav div#menu-click-div{
	display: none;
	width: 170px;
	background: rgba(255,255,255,0.8); 
    position: fixed;
    top: 55px;
    left: 15.5%;
    border-bottom-right-radius: 5px;
    border-bottom-left-radius: 5px;
    box-sizing: border-box;
    padding: 10px;
}
div#nav div#profile-click-div{
	display: none;
	width: 160px;
	background: rgba(255,255,255,0.8); 
    position: fixed;
    top: 55px;
    right: 17%;
    border-bottom-right-radius: 5px;
    border-bottom-left-radius: 5px;
    box-sizing: border-box;
    padding: 10px;
}
div#profile-click-div hr{
	border: 0.5px dashed gray;
}




/* body{background-color:#cce2ff; } */
div.ground{background-color: #f7f5f5; margin: 0 auto; vertical-align: top;} 
div.mainDIV{text-align: center; }
div.mainTitle{height: 480px; width: 960px; display: inline-block;}
div.sideDiv{display: inline-block; vertical-align: top;}

div.goal{display: inline-block;}
img.mainImg{height: 450px; width: 560px; padding: 10px 20px 0 0px; vertical-align: top;}
div.goal{text-align: left;}
div.notice{border: 1px solid #fafafa; padding: 10px; background-color: #faf8f8;}
span#sp1{font-size: 40px; font-weight: bold;}
span#sp2{font-size: 25px; font-weight: bold;}
span.sp{font-size: 15px; font-weight: bold; padding-bottom:10px; display: inline-block;}
span.sp2{font-size: 14px;}

span#story:hover{cursor: pointer;}
span#community:hover{cursor: pointer;}
span#change:hover{cursor: pointer;}

div.menuDiv{text-align: left; padding: 5px 0 18px 18%; }
div.mainContext{width: 700px;display: inline-block; background:white; margin-top: 15px; box-shadow: 1px 1px silver; margin-bottom: 30px;}

div.communityDiv{width: 700px;display: inline-block; background:#faf8f8; margin-top: 15px; }
div.communityS{width: 700px; display: inline-block; padding-bottom:10px; padding-top:10px; background:white; margin-top: 15px; box-shadow: 1px 1px silver;}
div.communityMain{width: 700px;display: inline-block; background:#faf8f8; margin-top: 15px;}
div.community{background: white; box-shadow: 1px 1px silver; text-align: left; padding-left: 30px; padding-bottom:10px; padding-top:10px;}

div.changeDiv{width: 700px;display: inline-block; background:white; margin-top: 15px; box-shadow: 1px 1px silver; padding-bottom:10px; padding-top:10px;}
span.refundSp{font-weight: bold;}

div.originator{width: 270px;display: inline-block; text-align: left; padding: 15px; background:white; margin: 10px; margin-top: 15px; box-shadow: 1px 1px silver;}
#originatorStory{font-weight: bold; padding-bottom:10px; display: inline-block;}
img.originatorImg{border-radius: 100%; width: 30px; height: 30px;}
.originContext{word-break:break-all; width: 250px; padding-top:15px;}

div.gift{width: 270px; display: inline-block; background: white; box-shadow: 1px 1px silver; text-align: center;}
div.gift2{width: 240px; display: inline-block; text-align:left; padding-top: 10px; padding-bottom: 10px;}

span#change,#community,#story{padding: 0 10px;}

span.tag{
    font-size: 1.5rem;
    font-weight: 600;
    padding: 1rem;
    color: #757575;
    background-color: #fafafa;
    border: 1px solid #efefef;
    border-radius: 2px;
}
a#tagA:link {color:#757575;}
a#tagA:visited {color:#757575;}
a#tagA:hover {color:black; text-decoration: none;}

a#tagA2:link {color:black;}
a#tagA2:visited {color:black;}
a#tagA2:hover {color:#757575; text-decoration: none;}
/* 후원버튼 시작*/
.button {
  display: inline-block;
  border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 23px;
  padding: 10px;
  width: 270px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 3px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
.disabled {
    opacity: 0.6;
    cursor: not-allowed;
}
/* 후원버튼 끝*/
/* 후원버튼취소 시작 */
.delbutton{
	background: #e7e7e7;
	color:rgba(50,100,100,100);
	font-weight: bold;
}
.delbutton:hover {
  background: #d9d9d9;
	color:black;
}
/* 후원버튼취소 끝 */
/* 담기버튼 시작 */
.button2 {
    background-color: #4CAF50; /* Green */
    border-radius: 4px;
    border: none;
    color: white;
    padding: 14px 8px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
}
.button3 {
    background-color: #e7e7e7;
    color: rgba(50,100,100,100);
    border: 2px solid #e7e7e7;
    padding: 8px 8px;
    width: 100%;
    font-weight: bold;
}

.button4 {
    background-color: white;
    color: black;
    border: 2px solid #e7e7e7;
}

.button4:hover {background-color: #e7e7e7;}
.button3:hover {background-color: #d9d9d9; color:black;}
/* 담기버튼 끝*/

@media (max-width: 800px){
	img.mainImg{display: block; padding-bottom: 20px; }
	div.mainTitle{width: 500px;}
}
</style>
<hr />
	
    <div class="mainDIV">
	<c:forEach var="i" items="${list }">
        <div class="title">
            <br>
            <span class="tag">
            <c:if test="${i.categoryCode eq 'C1' }">
        		<a id="tagA" href="${pageContext.request.contextPath}/project/projectList.do?categoryCode=C1">게임</a>
	        </c:if>
	        <c:if test="${i.categoryCode eq 'C2' }">
	        	<a id="tagA" href="${pageContext.request.contextPath}/project/projectList.do?categoryCode=C2">푸드</a>
	        </c:if>
	        <c:if test="${i.categoryCode eq 'C3' }">
	        	<a id="tagA" href="${pageContext.request.contextPath}/project/projectList.do?categoryCode=C3">예술</a>
	        </c:if>
	        <c:if test="${i.categoryCode eq 'C4' }">
	        	<a id="tagA" href="${pageContext.request.contextPath}/project/projectList.do?categoryCode=C4">패션</a>
	        </c:if>
	        <c:if test="${i.categoryCode eq 'C5' }">
	        	<a id="tagA" href="${pageContext.request.contextPath}/project/projectList.do?categoryCode=C5">출판</a>
	        </c:if>
	        <c:if test="${i.categoryCode eq 'C6' }">
	        	<a id="tagA" href="${pageContext.request.contextPath}/project/projectList.do?categoryCode=C6">테크놀리지</a>
	        </c:if>
            </span>
            <br />
            <h1>${i.projectTitle }</h1>
        </div>
        <br>
        <div class="mainTitle">
            <img src="${pageContext.request.contextPath }/resources/images/projects/${i.projectImage }" alt="메인사진" class="mainImg">
            <div class="goal">
                모인금액 <br>
                <span id="sp1"><fmt:formatNumber>${i.supportMoney }</fmt:formatNumber></span>원 <br><br>
                남은시간 <br>
                <span id="sp1">${i.deadlineDay gt 0 ? i.deadlineDay:'0' }</span>일<br><br>
                후원자 <br>
                <span id="sp1">${i.supportor }</span>명 <br><br>
                <div class="notice">
                
               	<c:if test="${i.deadlineDay le 0 and i.supportGoal le i.supportMoney } ">
                	<span class="sp">펀딩 성공!</span><br />
                    <span class="sp2">목표금액인 <fmt:formatNumber>${i.supportGoal }</fmt:formatNumber>원이 모였습니다.</span><br />
                    <span class="sp2">결제는 <fmt:formatDate value="${i.calculateduedDate }" pattern="yyyy년 MM월 dd일"/> 에 다함께 결제됩니다.</span>
                </c:if>
                <c:if test="${i.deadlineDay le 0 and i.supportGoal gt i.supportMoney }">
                	<span class="sp">펀딩 실패!</span><br />
                    <span class="sp2">목표금액인 <fmt:formatNumber>${i.supportGoal }</fmt:formatNumber>원이 모이지 않았습니다.</span><br />
                    <span class="sp2">결제는 모두 진행되지 않습니다.</span>
                </c:if>
                
                <c:if test="${i.deadlineDay gt 0}" > 
                    <span class="sp">펀딩 진행중</span><br />
                    <span class="sp2">목표금액인 <fmt:formatNumber>${i.supportGoal }</fmt:formatNumber>원이 모여야 결제됩니다.</span><br />
                    <span class="sp2">결제는 <fmt:formatDate value="${i.calculateduedDate }" pattern="yyyy년 MM월 dd일"/> 에 다함께 진행됩니다.</span>
                </c:if>
                
                </div>
                <c:if test="${deadlineDay ge 0 }">
                <c:if test="${supportStatus==false }">
                	<button class="button" style="vertical-align:middle"><span>후원하기 </span></button>
                </c:if>
                <c:if test="${supportStatus==true }">
                	<button class="button delbutton" style="vertical-align:middle"><span>후원 취소하기</span></button>
               	</c:if>
                <button class="button2 button4">
                	<span class="glyphicon glyphicon-shopping-cart"></span>
                	담아두기
                </button>
                </c:if>
                <c:if test="${deadlineDay lt 0 }">
                	<button class="button disabled">후원이 종료되었습니다.</button>
                </c:if>
            </div>
        </div>
	</c:forEach>
        <hr />

        <div class="menuDiv">
	            <span id="story">스토리</span>   <span id="community">커뮤니티</span>   <span id="change">환불 및 교환</span>
	            <input type="hidden" name="hidden" id="hiddenNum" value="1">
	        </div>
	        <div class="ground">
		        <div class="mainContext">
		        <c:if test="${not empty ps }">
		        	${ps.getProjectStory() }
		        </c:if>
		        <c:if test="${empty ps }">
		        	<br /><br />
		        	임시적으로 수정중입니다.
		        	<br />
		        	불편을드려죄송합니다...ㅠㅠ
		        	<br /><br />
		        </c:if>
		        </div>
		        <!-- 커뮤니티 -->
		        <div class="communityDiv">
		        	<div class="communityS"><span>후원자만 글을 쓸 수 있어요</span></div>
		        	<div class="communityMain"></div>
		        </div>
		        <!-- 커뮤니티 끝 -->
		        <div class="changeDiv">
		        	<span class="refundSp">이 프로젝트의 환불 및 교환 정책</span><br />
		        	<hr />
		        	<br />
		        	<c:if test="${not empty refund }">
		        	<span>${refund }</span>
		        	</c:if>
		        	<c:if test="${empty refund }">
		        	<span>이 프로젝트의 환불정책이 없습니다.</span><br />
		        	<span>창작에게 직접문의하세요!</span>
		        	<br /><br />
		        	</c:if>
		        </div>
		        
		        <div class="sideDiv">
		        <div class="originator">
		            <span id="originatorStory">창작자 소개</span>
		            <div>
	 	                <img src="${pageContext.request.contextPath }/resources/upload/profileImg/${p.profileImage != null ? p.profileImage: 'profile.png' }" alt="프로필" class="originatorImg">
		                <span class="sp"></span>
		                <p class="originContext">${p.profileIntroduce }</p>
		                <hr />
		                <button class="button2 button3" ><i style="font-size:24px" class="fa">&#xf0e0;</i> 창작자에게 문의하기</button>
		            </div>
		        </div>
		        
		        <c:if test="${deadlineDay gt 0 }"> 
		        
		        <c:if test="${not empty gList}">
		        <c:forEach var="g" items="${gList }" begin="0" end="${gList.size() }" step="1" varStatus="gg">
				<br /><br />
		        <div class="gift">
		        	<div class="gift2">
		        	<ul>
		        		<li>
		        			<span id="sp2"><fmt:formatNumber>${gList[gg.index] }</fmt:formatNumber>원 +</span>
		        		</li>
		        		<li>
		        		<c:forEach var="g2" items="${strarr }" begin="0" end="${gList.size() }" step="1" varStatus="gg2">
		        			<c:forEach var="g3" items="${strarr2 }" begin="0" end="${gList.size() }" step="1" varStatus="gg3">
		        			<c:if test="${gg.index == gg2.index and  gg2.index == gg3.index }">
		        				${strarr[gg2.index] } (X ${strarr2[gg3.index]})
		        			</c:if>
		        			</c:forEach>
		        		</c:forEach>
		        		</li>
		        		<li>
		        			예상전달일 <fmt:formatDate value="${calculateduedDate }" pattern="yyyy년 MM월 dd일"/> 후 순차배송됩니다.
		        		</li>
		        		<hr />
		        	</ul>
		        		<button class="button2 button3">선물 선택하고 후원하기</button>
		        	</div>
		        </div>
				</c:forEach>
				</c:if>
				
		        <c:if test="${empty gList }">
		        <br /><br />
		        <div class="gift">
		        	<div class="gift2">
		        	<ul>
		        		<li>
		        			상품없이 지원자를 후원하는 프로젝트입니다.
		        		</li>
		        		<hr />
		        	</ul>
		        		<button class="button2 button3">후원하기</button>
		        	</div>
		        </div>
		        </c:if>
		        </c:if>
	        </div>
	        
		</div>


    </div>
    <script>
    $(function(){
        $(".communityDiv").hide();
        $(".changeDiv").hide();
        var menuSelect = $("#menuSelect").val();
        var hiddenNum = $("#hiddenNum").val();
        /* 호버했을때 이미지변경 */
        $("#story").hover(function() {
        	   $(this).css("background-color", "#F3F3F3");
        	}, function(){
        	    $(this).css("background-color", "white");
        	});
        $("#community").hover(function() {
     	   $(this).css("background-color", "#F3F3F3");
     	}, function(){
     	    $(this).css("background-color", "white");
     	});
        $("#change").hover(function() {
     	   $(this).css("background-color", "#F3F3F3");
     	}, function(){
     	    $(this).css("background-color", "white");
     	});
        /* 클릭했을때 이미지변경 */
        if(hiddenNum==1){
            $("#story").css({"color": "black", "background-color": "#F3F3F3", "border-bottom": "4px solid black", "padding-bottom": "0"});
        }

        $("#story").click(function(){
            $("#story").css({"color": "black", "background-color": "#F3F3F3", "border-bottom": "4px solid black", "padding-bottom": "0"});
            $("#community").css({"color": "black", "background-color": "white", "border-bottom": "0px solid black", "padding-bottom": "0"});
            $("#change").css({"color": "black", "background-color": "white", "border-bottom": "0px solid black", "padding-bottom": "0"});
            hiddenNum = 1;
            $(".mainContext").show();
            $(".communityDiv").hide();
            $(".changeDiv").hide();
        });
        $("#community").click(function(){
            $("#story").css({"color": "black", "background-color": "white", "border-bottom": "0px solid black", "padding-bottom": "0"});
            $("#community").css({"color": "black", "background-color": "#F3F3F3", "border-bottom": "4px solid black", "padding-bottom": "0"});
            $("#change").css({"color": "black", "background-color": "white", "border-bottom": "0px solid black", "padding-bottom": "0"});
            hiddenNum = 2;
            $(".mainContext").hide();
            $(".communityDiv").show();
            $(".changeDiv").hide();
        });
        $("#change").click(function(){
            $("#story").css({"color": "black", "background-color": "white", "border-bottom": "0px solid black", "padding-bottom": "0"});
            $("#community").css({"color": "black", "background-color": "white", "border-bottom": "0px solid black", "padding-bottom": "0"});
            $("#change").css({"color": "black", "background-color": "#F3F3F3", "border-bottom": "4px solid black", "padding-bottom": "0"});
            hiddenNum = 3;
            $(".mainContext").hide();
            $(".communityDiv").hide();
            $(".changeDiv").show();
        });
        
    });
</script>


<jsp:include page="/WEB-INF/views/common/footer.jsp" />
	