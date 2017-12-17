<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.model2.mvc.service.domain.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="EUC-KR">
	
	<!-- 참조 : http://getbootstrap.com/css/   참조 -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<link rel="stylesheet" href="/css/admin.css" type="text/css">
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	
	
	<!-- 달력사용위한  -->

	<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  

	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  

	<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>  
	
	<!-- Bootstrap Dropdown Hover CSS -->
   <link href="/css/animate.min.css" rel="stylesheet">
   <link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
   
   <script type="text/javascript" src="../javascript/calendar.js"></script>
    <!-- Bootstrap Dropdown Hover JS -->
   <script src="/javascript/bootstrap-dropdownhover.min.js"></script>
   
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
		body {
            padding-top : 50px;
        }
    </style>
    
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
	
function fncUpdateProduct(){
	//Form 유효성 검증
 	var name = $("input[name='prodName']").val();
	var detail = $("input[name='prodDetail']").val();
	var manuDate = $("input[name='manuDate']").val();
	var price = $("input[name= 'price']").val();

	if(name == null || name.length<1){
		alert("상품명은 반드시 입력하여야 합니다.");
		return;
	}
	if(detail == null || detail.length<1){
		alert("상품상세정보는 반드시 입력하여야 합니다.");
		return;
	}
	if(manuDate == null || manuDate.length<1){
		alert("제조일자는 반드시 입력하셔야 합니다.");
		return;
	}
	if(price == null || price.length<1){
		alert("가격은 반드시 입력하셔야 합니다.");
		return;
	}
		
	$("form").attr("method","POST").attr("action","/product/updateProduct").submit();

}


//등록버튼 이벤트
$(function() {
	 $( "button.btn.btn-primary" ).on("click" , function() {
		
		alert(  $( "button.btn.btn-primary" ).html() );
		fncUpdateProduct();
	}); 
	 
});	



//취소버튼 이벤트
$(function() {
	 $( "button.btn.btn-default" ).on("click" , function() {
		alert(  $( "button.btn.btn-default" ).html() );
		history.go(-1);
	});
});

/* $(function() {
	$("button.btn.btn-danger").on("click", function() {
		show_calendar($("input[name='manuDate']"),$("input[name='manuDate']").val());
	});


}); */

$(function() {
	  $( "#manuDate" ).datepicker({
		  showOn: "button",
	      buttonImage: "../images/ct_icon_date.gif",
	      buttonImageOnly: true,
	      buttonText: "Select date"
	  });
	});

	</script>

</head>

<body>

	<jsp:include page="/layout/toolbar.jsp" />
	
	<div class="container">
	
		<div class="page-header text-center">
	       <h3 class=" text-info">
	       <span class="glyphicon glyphicon-grain"></span>
	       	 상 품 수 정 
  			  <span class="glyphicon glyphicon-grain"></span></h3>
	       <h5 class="text-muted">새로운 정보를 <strong class="text-danger">
	       	입력</strong>해 주세요.</h5>
	    </div>
	</div>
	
	<form class="form-horizontal">
			<div class="form-group">
		    <label for="prodName" class="col-sm-offset-1 col-sm-3 control-label">상 품 명</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="prodNo" name="prodNo" value="${product.prodNo}">
		    </div>
		  </div>
				
		  <div class="form-group">
		    <label for="prodName" class="col-sm-offset-1 col-sm-3 control-label">상 품 명</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="prodName" name="prodName" value="${product.prodName}">
		      
		       <span id="helpBlock" class="help-block">
		      	<strong class="text-danger">상품명을 반드시 입력하세요.</strong>
		      </span>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="prodDetail" class="col-sm-offset-1 col-sm-3 control-label">상 세 정 보</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="prodDetail" name="prodDetail" value="${product.prodDetail}" >
		    	<span id="helpBlock" class="help-block">
		      	<strong class="text-danger">상세정보를 반드시 입력하세요.</strong>
		      </span>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for=manuDate class="col-sm-offset-1 col-sm-3 control-label">제 조 일 자</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="manuDate" name="manuDate" value="${product.manuDate}" >	
		      	<span id="helpBlock" class="help-block">
		     <strong class="text-danger">제조일자를 반드시 입력하세요.</strong>
		  		</span>
		    </div>
		 		
		  </div>
		  
		  <div class="form-group">
		    <label for=price class="col-sm-offset-1 col-sm-3 control-label">가&nbsp;격</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="price" name="price" value="${product.price}" >
		    	<span id="helpBlock" class="help-block">
		      	<strong class="text-danger">가격을 반드시 입력하세요.</strong>
		      </span>
		    
		    </div>
		  </div>
		  
		<div class="form-group">
		    <label for=fileName class="col-sm-offset-1 col-sm-3 control-label">상품이미지</label>
		    <div class="col-sm-4">
		      <input type="file" name="fileName" class="btn btn-default">
		    </div>
		  </div>
		
	   <div class="form-group">
	     <div class="col-sm-offset-4  col-sm-4 text-center">
		      <button type="button" class="btn btn-primary" >등&nbsp;록</button>
			 <button id="cancel" type="button" class="btn btn-default" >취&nbsp;소</button>
		 </div>
	  </div>
				  
	</form>
	

</body>
</html>