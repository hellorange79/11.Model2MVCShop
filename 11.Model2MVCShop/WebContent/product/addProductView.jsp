<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

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
	$("button.btn.btn-info").on("click", function(){
		
		fncAddProduct();
		
	});
});
 
 
$(function() {
	$("button.btn.btn-default").on("click" , function() {
		$("form")[0].reset();
	});
});	

$(function () {
	$('#date').bootstrapMaterialDatePicker({ weekStart : 0, time: false });

});

function fncAddProduct(){
	
	var name =$("input[name='prodName']").val();
	var detail =$("input[name='prodDetail']").val();
	var manuDate =$("input[name='manuDate']").val();
	var price =$("input[name='price']").val(); 
	
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

	
	$("form").attr("method" , "POST").attr("action" , "/product/addProduct").submit();
	
}

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
	       <h5 class="text-muted">새로운 상품을 <strong class="text-danger">
	       	등록</strong>해 주세요.</h5>
	    </div>
	
	
	<form class="form-horizontal">
		
		  <div class="form-group">
		    <label for="prodName" class="col-sm-offset-1 col-sm-3 control-label">상 품 명</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="prodName" name="prodName">
		      
		       <span id="helpBlock" class="help-block">
		      	<strong class="text-danger">상품명을 반드시 입력하세요.</strong>
		      </span>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="prodDetail" class="col-sm-offset-1 col-sm-3 control-label">상 세 정 보</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="prodDetail" name="prodDetail" >
		    	<span id="helpBlock" class="help-block">
		      	<strong class="text-danger">상세정보를 반드시 입력하세요.</strong>
		      </span>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for=manuDate class="col-sm-offset-1 col-sm-3 control-label">제 조 일 자</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="manuDate" name="manuDate" >	
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
		      <input type="text" class="form-control" id="price" name="price" >
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
		
	   <div class="form-group">
	     <div class="col-sm-offset-4  col-sm-4 text-center">
		     <button type="button" class="btn btn-info">등&nbsp;록</button>
			 <button type="button" class="btn btn-default">취&nbsp;소</button>
		 </div>
	  </div>
				  
	</form>
  </div> 

</body>
</html>