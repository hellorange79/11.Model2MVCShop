
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html >
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>


<head>
<meta charset="EUC-KR">

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	
   <link href="/css/animate.min.css" rel="stylesheet">
   <link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
   
    <!-- Bootstrap Dropdown Hover JS -->
   <script src="/javascript/bootstrap-dropdownhover.min.js"></script>
   
	<style>
       body {
        	padding-top : 50px;

        }
    </style>

<link rel="stylesheet" href="/css/admin.css" type="text/css">
<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="../javascript/calendar.js"></script>


<script type="text/javascript"> 

$(function() {
	//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
	 $( "button" ).on("click" , function() {
			self.location = "/product/listProduct?menu=${param.menu}"
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
	       	 상 품 등 록 
  			  <span class="glyphicon glyphicon-grain"></span></h3>
  			  
	       <h5 class="text-muted"> <strong class="text-danger">상품등록이완료되었습니다</strong></h5>
	    </div>
	</div>
	
	<form class="form-horizontal">
		
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
		    <div class="col-lg-4">
		     <button type="button" class="btn btn-default">
		     <span class="glyphicon glyphicon-calendar"></span>
		     </button>
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
		      <input type="file" class="btn btn-default">
		    </div>
		  </div>
		
	  	
	<div class="row">
	  		<div class="col-md-12 text-right ">
	  			<button type="button" class="btn btn-primary">이전</button>
	  		</div>
		</div>
				  
	</form>
	    
	
</body>
</html>
