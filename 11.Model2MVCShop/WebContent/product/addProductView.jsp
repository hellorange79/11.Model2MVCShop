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

function fncAddProduct(){
	//Form ��ȿ�� ����
 	/* var name = document.detailForm.prodName.value;
	var detail = document.detailForm.prodDetail.value;
	var manuDate = document.detailForm.manuDate.value;
	var price = document.detailForm.price.value; */

	var name =$("input[name='prodName']").val();
	var detail =$("input[name='prodDetail']").val();
	var manuDate =$("input[name='manuDate']").val();
	var price =$("input[name='price']").val(); 
	
	if(name == null || name.length<1){
		alert("��ǰ���� �ݵ�� �Է��Ͽ��� �մϴ�.");
		return;
	}
	if(detail == null || detail.length<1){
		alert("��ǰ�������� �ݵ�� �Է��Ͽ��� �մϴ�.");
		return;
	}
	if(manuDate == null || manuDate.length<1){
		alert("�������ڴ� �ݵ�� �Է��ϼž� �մϴ�.");
		return;
	}
	if(price == null || price.length<1){
		alert("������ �ݵ�� �Է��ϼž� �մϴ�.");
		return;
	}

	//document.detailForm.action='/product/addProduct';
	//document.detailForm.submit();
	
	$("form").attr("method" , "POST").attr("action" , "/product/addProduct").submit();
	
}

/* function resetData(){
	document.detailForm.reset();
}
 */
$(function() {
	$("td.ct_btn01:contains('���')").on("click", function(){
		
		fncAddProduct();
		
	});
});
 
 
$(function() {
	$("td.ct_btn01:contains('���')").on("click", function(){
		$("form")[0].reset();
		
	});
	
$(function () {
	$("td.ct_write01 img").on("click", function () {
		show_calendar('document.detailForm.manuDate', 'document.detailForm.manuDate.value');
	});
	
});


});
 
</script>

</head>

<body >

	<jsp:include page="/layout/toolbar.jsp" />
	
	<div class="container">
	
		<div class="page-header text-center">
	       <h3 class=" text-info">
	       <span class="glyphicon glyphicon-grain"></span>
	       	 �� ǰ �� �� 
  			  <span class="glyphicon glyphicon-grain"></span></h3>
	       <h5 class="text-muted">���ο� ��ǰ�� <strong class="text-danger">
	       	���</strong>�� �ּ���.</h5>
	    </div>
	</div>
	
	<form class="form-horizontal">
		
		  <div class="form-group">
		    <label for="userId" class="col-sm-offset-1 col-sm-3 control-label">�� ǰ ��</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="prodName" name="prodName">
		      
		       <span id="helpBlock" class="help-block">
		      	<strong class="text-danger">��ǰ���� �ݵ�� �Է��ϼ���.</strong>
		      </span>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="prodDetail" class="col-sm-offset-1 col-sm-3 control-label">�� �� �� ��</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="prodDetail" name="prodDetail" >
		    	<span id="helpBlock" class="help-block">
		      	<strong class="text-danger">�������� �ݵ�� �Է��ϼ���.</strong>
		      </span>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for=manuDate class="col-sm-offset-1 col-sm-3 control-label">�� �� �� ��</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="manuDate" name="manuDate" >
		      	<button type="button" class=" btn btn-default btn-ms">
  				<span class="input-group-btn glyphicon glyphicon-calendar" aria-hidden="false"></span>
				</button>
		  		<strong class="text-danger">�������ڸ� �ݵ�� �Է��ϼ���.</strong>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for=price class="col-sm-offset-1 col-sm-3 control-label">��&nbsp;��</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="price" name="price" >
		    	<span id="helpBlock" class="help-block">
		      	<strong class="text-danger">������ �ݵ�� �Է��ϼ���.</strong>
		      </span>
		    
		    </div>
		  </div>
		  
		<div class="form-group">
		    <label for=fileName class="col-sm-offset-1 col-sm-3 control-label">��ǰ�̹���</label>
		    <div class="col-sm-4">
		      <input type="file" class="btn btn-danger">
		    </div>
		  </div>
		
	   <div class="form-group">
	     <div class="col-sm-offset-4  col-sm-4 text-center">
		      <button type="button" class="btn btn-primary" >��&nbsp;��</button>
			  <a class="btn btn-primary btn" href="#" role="button">��&nbsp;��</a>
		 </div>
	  </div>
				  
	</form>
	    

</body>
</html>