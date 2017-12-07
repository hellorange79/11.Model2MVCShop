<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html >

<html>
<head>

<meta charset="EUC-KR">
<title>��ǰ �����ȸ</title>

<link rel="stylesheet" href="/css/admin.css" type="text/css">

<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<script type="text/javascript">


function fncGetUserList(currentPage) {
	
	$("#currentPage").val(currentPage)
	
	$("form").attr("method","POST").attr("action","/product/listProduct?menu=${param.menu}").submit();
}
	//document.getElementById("currentPage").value = currentPage;
   	//document.detailForm.submit();		
   	
   	$(function () {
		
   		$("td.ct_btn01:contains('�˻�')").on("click", function () {
			
   			fncGetUserList(1);
   			
   		});
		
   		
   		//menu=manage �϶�  ProductName "click" updateproduct
		$(".ct_list_pop td:nth-child(3)").on("click" , function () {
			
			//alert( "index : "+$($("input[name=prodbyNo]")[$(".ct_list_pop td:nth-child(3)").index(this)]).val());
			self.location="/product/updateProduct?menu=${param.menu}&prodNo="+$($("input[name=prodbyNo]")[$(".ct_list_pop td:nth-child(3)").index(this)]).val();
		
		});
		
   		
   		//menu=search �϶� ProductName  "click" getproduct
   		$(".ct_list_pop td:nth-child(3)").on("click", function () {
   			
   			//alert( "index : "+$($("input[name=prodbyNo]")[$(".ct_list_pop td:nth-child(3)").index(this)]).val());
			self.location="/product/getProduct?menu=${param.menu}&prodNo="+$($("input[name=prodbyNo]")[$(".ct_list_pop td:nth-child(3)").index(this)]).val();
			
		});
		 
   		
   		
   		
		//productName ���������κ���
		$( ".ct_list_pop td:nth-child(3)" ).css("color" , "red");
		$("h7").css("color" , "red");
		
		
   	
   	});
   	

</script>
</head>

<body bgcolor="#ffffff" text="#000000">

	<div style="width: 98%; margin-left: 10px;">

		<form name="detailForm"><!--  action="/product/listProduct/"
			method="get" -->

			<table width="100%" height="37" border="0" cellpadding="0"
				cellspacing="0">
				<tr>
					<td width="15" height="37"><img src="/images/ct_ttl_img01.gif" width="15" height="37" /></td>
					<td background="/images/ct_ttl_img02.gif" width="100%" style="padding-left: 10px;">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="93%" class="ct_ttl01">
								<c:if test="${param.menu eq 'manage'}" > ��ǰ������ȸ</td></c:if>
								<c:if test="${param.menu eq 'search'}"> ��ǰ�����ȸ </td></c:if>
							</tr>
						</table>
					</td>
					<td width="12" height="37"><img src="/images/ct_ttl_img03.gif"width="12" height="37" />
					</td>
				</tr>
			</table>


			<table width="100%" border="0" cellspacing="0" cellpadding="0"
				style="margin-top: 10px;">
				<tr>

					<td align="right"><select name="searchCondition" class="ct_input_g" style="width: 80px">

							<option value="0" ${! empty searchCondition.equals && searchCondition.equals==0 ? "selected" : "" }>��ǰ��ȣ</option>
							<option value="1" ${! empty searchCondition.equals && searchCondition.equals==1 ? "selected" : "" }>��ǰ��</option>
							<option value="2" ${! empty searchCondition.equals && searchCondition.equals==2 ? "selected" : "" }>��ǰ����</option>
					</select> <input type="text" name="searchKeyword"
						value="${! empty search.searchKeyword ? search.searchKeyword : "" }" class="ct_input_g"
						style="width: 200px; height: 19px" /></td>

					<td align="right" width="70">
						<table border="0" cellspacing="0" cellpadding="0">

							<tr>
								<td width="17" height="23"><img	src="/images/ct_btnbg01.gif" width="17" height="23"></td>

								<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top: 3px;">
								<!-- 	<a href="javascript:fncGetProductList('1');">�˻�</a> -->�˻�
								</td>
								
								<td width="14" height="23"><img	src="/images/ct_btnbg03.gif" width="14" height="23"></td>
								
							</tr>
						</table>
					</td>
				</tr>
			</table>


			<table width="100%" border="0" cellspacing="0" cellpadding="0"	style="margin-top: 10px;">
				<tr>
					<td colspan="11">��ü ${resultPage.totalCount} �Ǽ�,	���� ${resultPage.currentPage} ������
					</td>
				</tr>
				
				<tr>
					<td class="ct_list_b" width="100">No</td>
					<td class="ct_line02"></td>
					<td class="ct_list_b" width="150">��ǰ��</td>
					<td class="ct_line02"></td>
					<td class="ct_list_b" width="150">����</td>
					<td class="ct_line02"></td>
					<td class="ct_list_b">�����</td>
					<td class="ct_line02"></td>
					<td class="ct_list_b">�������</td>
				</tr>
				<tr>
					<td colspan="11" bgcolor="808285" height="1"></td>
				</tr>
				
					<c:set var="i" value="0"/>
					<c:forEach var="product" items="${list}">
					<c:set var="i" value="${i+1}"/>
					<tr class="ct_list_pop">
					<td align="center">${ i }</td>
					<td></td>
					<td align="left">
					<input type="hidden" name="prodbyNo" value="${product.prodNo}"/>
					<c:if  test="${param.menu eq 'manage'}" >${product.prodName}</c:if>
					<%-- <a href="/product/updateProduct?menu=${param.menu}&prodNo=${product.prodNo}">${product.prodName}</a> --%>
					
					<c:if test="${param.menu eq 'search'}"> ${product.prodName}</c:if>
					<%-- <a href="/product/getProduct?menu=${param.menu}&prodNo=${product.prodNo}">${product.prodName}</a></td> --%>
					<td></td>
					<td align="left">${product.price}</td>
					<td></td>

					<td align="left">${product.regDate}</td>
					<td></td>
					
					<td> 
					
					<c:if test="${product.proTranCode.trim() == null && param.menu =='search'}">�Ǹ���</c:if>
					<c:if test="${product.proTranCode.trim() == null && param.menu =='manage'}">�Ǹ���</c:if>
					<c:if test="${product.proTranCode.trim() == '1' && user.role =='user'}">������</c:if>
					<c:if test="${product.proTranCode.trim() == '1' && user.role =='admin'}">���ſϷ�
					<a href="/updateTranCode.do?">&nbsp;����ϱ�</a></c:if>
					<c:if test="${product.proTranCode.trim() =='2' && param.menu =='manage'}">�����</c:if>
					<c:if test="${product.proTranCode.trim() =='2' }">�����</c:if>
					<c:if test="${product.proTranCode.trim() =='3' }">��ۿϷ�</c:if>
					
					
					</td>
					
				</tr>
				
				</c:forEach>
			</table>

			<table width="100%" border="0" cellspacing="0" cellpadding="0"
				style="margin-top: 10px;">
				<tr>
					<td align="center">
					 <input type="hidden" id="currentPage" name="currentPage" value=""/>
			
			<jsp:include page="../common/pageNavigator.jsp"/>
					</td>
				</tr>
			</table>
			<!--  ������ Navigator �� -->

		</form>

	</div>
</body>
</html>
