<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html; charset=euc-kr" %>

<!DOCTYPE html>

	

<html lang="ko">

<head>

<meta charset="EUC-KR">
<!-- 참조 : http://getbootstrap.com/css/   참조 -->
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
   
   
   <!-- jQuery UI toolTip 사용 CSS-->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <!-- jQuery UI toolTip 사용 JS-->
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	<style>/* 상단바랑 떨어뜨림 */
	  body {
            padding-top : 50px;
        }
    </style>


<script type="text/javascript">

function fncGetUserList(currentPage) {
	
	$("#currentPage").val(currentPage)
	
	$("form").attr("method","POST").attr("action","/product/listProduct?menu=${param.menu}").submit();
}
	//document.getElementById("currentPage").value = currentPage;
   	//document.detailForm.submit();		
   	
   	$(function () {
		
   		$("btn btn-default").on("click", function () {
			
   			fncGetUserList(1);
   			
   		});
		
   		
   		
   		
   		//menu=search 일때 ProductName  "click" getproduct //menu=manage 일때  ProductName "click" updateproduct
   		$("td:nth-child(2)").on("click", function () {
   		
   			alert("${param.menu}")
   		if("${param.menu}"=='manage'){
   			
   			self.location="/product/updateProduct?menu=${param.menu}&prodNo="+$($("input[name=prodbyNo]")[$("td:nth-child(2)").index(this)]).val();
   		
   		}else{
   			//alert( "index : "+$($("input[name=prodbyNo]")[$("td:nth-child(2)").index(this)]).val());
			self.location="/product/getProduct?menu=${param.menu}&prodNo="+$($("input[name=prodbyNo]")[$("td:nth-child(2)").index(this)]).val();
   		}
   		
   			
   		
		});
		 
   		
   		
   		
		//productName 빨간색으로변경
		$( "td:nth-child(2)" ).css("color" , "blue");
		$("h7").css("color" , "blue");
		
		
   	
   	});
</script>
</head>

<body>

	<jsp:include page="/layout/toolbar.jsp" />
	
	<div class="container">
	
		<div class="page-header text-info">
			<c:if test="${param.menu eq 'manage' }"><h3>상품관리조회</h3></c:if>
			<c:if test="${param.menu eq 'search' }"><h3>상품목록조회</h3></c:if>	
		</div>
	
	<div class="row">
	    
	  <div class="col-md-6 text-left">
	   		<p class="text-primary">
	   			전체  ${resultPage.totalCount } 건수, 현재 ${resultPage.currentPage}  페이지
	   		</p>
	  </div>
	
	
	
	 <div class="col-md-6 text-right">
		<form class="form-inline" name="detailForm">
			    
		  <div class="form-group">
			 <select class="form-control" name="searchCondition" >
				<option value="0" ${! empty searchCondition.equals && searchCondition.equals==0 ? "selected" : "" }>상품번호</option>
				<option value="1" ${! empty searchCondition.equals && searchCondition.equals==1 ? "selected" : "" }>상품명</option>
				<option value="2" ${! empty searchCondition.equals && searchCondition.equals==2 ? "selected" : "" }>상품가격</option>
			 </select>
			</div>
				  
			<div class="form-group">
			 <label class="sr-only" for="searchKeyword">검색어</label>
			 <input type="text" class="form-control" id="searchKeyword" name="searchKeyword"  placeholder="검색어"
			   			 value="${! empty search.searchKeyword ? search.searchKeyword : '' }"  >
		    </div>
				  
			<button type="button" class="btn btn-default">검색</button>
				  
				  <!-- PageNavigation 선택 페이지 값을 보내는 부분 -->
			<input type="hidden" id="currentPage" name="currentPage" value=""/>
				  
			</form>
		</div>
	
	</div>
		
		
	<table class="table table-hover table-striped">
		<thead>
          <tr>
            <th align="center">No</th>
            <th align="left" >상품명</th>
            <th align="left">가격</th>
            <th align="left">등록일</th>
            <th align="left">현재상태</th>
          </tr>
        </thead>
        
        <tbody>
        	<c:set var="i" value="0"/>
			<c:forEach var="product" items="${list}">
				<c:set var="i" value="${i+1}"/>
				<tr>
					<td align="left">${ i }</td>
					<td align="left">
					<input type="hidden" name="prodbyNo" value="${product.prodNo}"/>
					${product.prodName}
					</td>
					<td align="left">${product.price}</td>
					<td align="left">${product.regDate}</td>
					<td> 
					
					<c:if test="${product.proTranCode.trim() == null && param.menu =='search'}">판매중</c:if>
					<c:if test="${product.proTranCode.trim() == null && param.menu =='manage'}">판매중</c:if>
					
					<c:if test="${product.proTranCode.trim() == '1' && user.role =='user'}">재고없음</c:if>
					<c:if test="${product.proTranCode.trim() == '1' && user.role =='admin'}">구매완료
					<a href="/purchase/updateTranCodeByProd?proTranCode=2&prodNo=${product.prodNo}">&nbsp;배송하기</a></c:if>
					
					<c:if test="${product.proTranCode.trim() =='2' && user.role =='admin'}">배송중</c:if>
					<c:if test="${product.proTranCode.trim() =='2' && user.role =='user'}">재고없음</c:if>
									
					<c:if test="${product.proTranCode.trim() =='3' }">배송완료</c:if>
					
					
					</td>
					
				</tr>
				
				</c:forEach>
        
        </tbody>
	
	
	</table>
	
	</div>
	
	<jsp:include page="../common/pageNavigator_new.jsp"/>
	
	
</body>

</html>
