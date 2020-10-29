<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴</title>
</head>
<body> 
<%--  <img src="${pageContext.request.contextPath}/images/been.jpg"> --%>
<!-- 메뉴 row 시작 -->
 <div class="row">
    <div class="col-lg-6 col-md-12">
    <h1>Beverages</h1>
       <p>Cappucino $3.25</p>
       <p>Latte $3.35</p>
       <p>Espresso $2.00</p>
       <p>Mocha $3.50</p>
   </div>
   
   <div class="col-lg-6 col-md-12">
    <h1>삼겹살</h1>
       <p>등심 $3.25</p>
       <p>안심 $3.35</p>
       <p>갈매기살 $2.00</p>
       <p>한우 $3.50</p>
   </div>
 </div>
 <!-- 메뉴 row 끝 -->
 <div class="row">
    <div class="col">
       <table class="table">
           <thead>
             <tr>
               <th scope="col">#</th>
               <th scope="col">First</th>
               <th scope="col">Last</th>
               <th scope="col">Handle</th>
             </tr>
           </thead>
           <tbody>
             <tr>
               <th scope="row">1</th>
               <td>Mark</td>
               <td>Otto</td>
               <td>@mdo</td>
             </tr>
             <tr>
               <th scope="row">2</th>
               <td>Jacob</td>
               <td>Thornton</td>
               <td>@fat</td>
             </tr>
             <tr>
               <th scope="row">3</th>
               <td>Larry</td>
               <td>the Bird</td>
               <td>@twitter</td>
             </tr>
           </tbody>
      </table>
       <span class="btn btn-warning"> Notifications <span class="badge badge-light"/>4</span></span>
       <a class="btn btn-outline-info" href="#" role="button" >Link</a>
      <button class="btn btn-outline-primary" type="submit">Button</button>
      <input class="btn btn-outline-dark" type="button" value="Input">
    </div>
 </div>
</body>
</html>