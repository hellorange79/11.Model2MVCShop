
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
	//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
	 $( "button" ).on("click" , function() {
			self.location = "/product/listProduct?menu=${param.menu}"
		});
});


</script>

</head>


<body>

	<jsp:include page="/layout/toolbar.jsp"/>
	
	<div class="container">
	
		<div class="page-header">
	       <h3 class=" text-info">��ǰ�������</h3>
	       <h5 class="text-muted"><strong class="text-danger">${product.prodName}</strong>
	       	�� ���� ������</h5>
		</div>
		
		
		<!-- ��ǰ��ȣ�� �ȳ��� �ФФФФ�  -->
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>��ǰ��ȣ</strong></div>
			<div class="col-xs-8 col-md-4">${product.prodNo}</div>
		</div>
	
	<hr/>
	
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>�� ǰ ��</strong></div>
			<div class="col-xs-8 col-md-4">${product.prodName}</div>
		</div>
	
	<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>��&nbsp;��</strong></div>
			<div class="col-xs-8 col-md-4">${product.price}</div>
		</div>
		

	
	<hr/>
	
		<div class="row">
	 		<div class="col-xs-4 col-md-2 "><strong>��ǰ�̹���</strong></div>
			<img src="../images/uploadFiles/${product.fileName}"  class="img-rounded" height="200" width="200">
			
		</div>
		
	<hr/>	
	
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>������</strong></div>
			<div class="col-xs-8 col-md-4">${product.prodDetail}</div>
		</div>
		
	<hr/>
	
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>��������</strong></div>
			<div class="col-xs-8 col-md-4">${product.manuDate}</div>
		</div>
		
		
	<hr/>
	
	
		
	<div class="row">
	  		<div class="col-md-12 text-center ">
	  			<button type="button" class="btn btn-primary">Ȯ��</button>
	  		</div>
		</div>
	
	</div>
	
	
	
</body>
</html>
