<%@ page import="java.util.ArrayList" %>
<%@ page import="models.Customer" %><%--
  Created by IntelliJ IDEA.
  User: Latitude 5590
  Date: 24/05/2021
  Time: 3:03 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
  ArrayList<Customer> customersList = new ArrayList<>();
  Customer tung = new Customer("tung","6/3/1995","HN","abc" );
  Customer hieu = new Customer("hieu","6/3/1995","HN","abc" );
  Customer cong = new Customer("cong","6/3/1995","HN","abc" );

  customersList.add(tung);
  customersList.add(hieu);
  customersList.add(cong);

  request.setAttribute("danhsach",customersList);

%>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <table>
    <tr>
      <td>Tên</td>
      <td>Ngày tháng năm sinh</td>
      <td>Địa chỉ</td>
      <td>Ảnh</td>
    </tr>
    <c:forEach items="${danhsach}" var="congcong">
      <tr>
        <td>
          ${congcong.name}
        </td>
        <td>
          ${customer.dob}
        </td>
        <td>
          ${customer.address}
        </td>
        <td>
          ${customer.picture}
        </td>
      </tr>
    </c:forEach>
  </table>
  </body>
</html>
