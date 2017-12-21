<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html lang="ko">

<head>

<meta charset="EUC-KR">

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	
	<!-- Bootstrap Dropdown Hover CSS -->
   <link href="/css/animate.min.css" rel="stylesheet">
   <link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
    <!-- Bootstrap Dropdown Hover JS -->
   <script src="/javascript/bootstrap-dropdownhover.min.js"></script>
   
   
   <!-- jQuery UI toolTip ��� CSS-->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <!-- jQuery UI toolTip ��� JS-->
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	<style>/* ��ܹٶ� ����߸� */
	  body {
            padding-top : 50px;
        }
    </style>


<script type="text/javascript">
</script>
</head>

<body>

	<jsp:include page="/layout/toolbar.jsp" />
	
	<div class="container">
		<div class="page-header">
		<h3 class="text-info">���Ż�ǰ �����Է�</h3>
		<h5 class="text-muted"><strong class="text-danger">${product.prodName}</strong>
	       	�� ���� ������</h5>
		</div>
	
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>��ǰ��ȣ</strong></div>
			<div class="col-xs-8 col-md-4">${product.prodNo}</div>
		</div>
	
	<hr/>
	
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>��������</strong></div>
			<div class="col-xs-8 col-md-4">${product.manuDate}</div>
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
	  		<div class="col-xs-4 col-md-2 "><strong>������</strong></div>
			<div class="col-xs-8 col-md-4">${product.prodDetail}</div>
		</div>
		
	<hr/>
	
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>�������</strong></div>
			<div class="col-xs-8 col-md-4">${product.regDate}</div>
		</div>
		
		
	<hr/>
		<div class="row">
			<div class="col-xs-4 col-md-2 "><strong>�����ھ��̵�</strong></div>
			<div class="col-xs-8 col-md-4">${user.userId}</div>
		</div>
	
	<hr/>
	
		<div class="row">
			<div class="col-xs-4 col-md-2"><strong>���Ź��</strong></div>
			<div class="col-xs-2 col-md-2">
			<select class="form-control" name="paymentOption">
  				<option>���ݱ���</option>
  				<option>�ſ뱸��</option>
			</select></div>
		</div>
		
		
	<hr/>
	
		<div class="row">
			<div class="col-xs-4 col-md-2">�������̸�</div>
			<div class="col-xs-2 col-md-2">
			<input type="text" class="form-control" id="receiverName" name="receiverName" >
			</div>
		</div>
	
	<hr/>
	
	
	<div class="row">
			<div class="col-xs-4 col-md-2">�����ڿ���ó</div>
			<div class="col-xs-2 col-md-2">
			<input type="text" class="form-control" id="receiverPhone" name="receiverPhone" >
			</div>
		</div>
	
	<hr/>
	
	
	</div>





</body>
</html>