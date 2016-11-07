<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible"content="IE=edge">
<link rel="icon" href="img/logo.PNG" type="image/x-icon" />
    <link rel="shortcut icon" href="img/logo.PNG"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <style>
        body    { padding-top:30px; }
    </style>
    
    <!-- JS ===================== -->
    <!-- load angular -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js">
    <script src="app.js"></script>
<style>
img {
    width: 100%;
    height: auto;
}
</style>
<style>
body {
    background-image: url("img/bkg3.jpg");
}
</style>
</head>
<body>
<sql:setDataSource var ="con" driver ="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/do_an" user="root" password="6796"/>
 <sql:query var="result" sql="select * from giangvien" dataSource="${con}"/>
 
<jsp:include page= "HeaderTK.jsp"></jsp:include>
 <nav class="navbar navbar col-md-offset-0">
        <div class="container">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
          </div>
         <a href="TK_SapXep.jsp" class="btn btn-success btn-lg">
    <span class="glyphicon glyphicon-hand-left"></span> Trở về
  </a>
        <div class="btn-group btn-group-justified" role="group" aria-label="abc">
  <div class="btn-group" role="group">
          <a href="TK_NhapTTGV.jsp"><button   type="button"  class="btn btn-info" >Nhập thông tin giảng viên</button></a>
  </div>
  <div class="btn-group" role="group">
   <a href="TK_NhapTTDeTai.jsp"> <button type="button" class="btn btn-default">nhập thông tin đề tài</button></a>
  </div>
  <div class="btn-group" role="group">
   <a href="TK_NhapTTPhong.jsp"> <button type="button" class="btn btn-default">nhập thông tin phòng</button></a>
  </div>
</div>
<br><br><br>

<html ng-app="myApp">
  <head>  
    <title>TK_nhapthongtin</title>  
    <style>body{font-family:"Time new roman";background-color:#E2E2DC}</style>
  <style>
      .IDname.ng-valid {
          background-color: lightgreen;
      }
      .IDname.ng-dirty.ng-invalid-required {
          background-color: red;
      }
      .IDname.ng-dirty.ng-invalid-minlength {
          background-color: yellow;
      }

    .username.ng-valid {
          background-color: lightgreen;
      }
      .username.ng-dirty.ng-invalid-required {
          background-color: red;
      }
      .username.ng-dirty.ng-invalid-minlength {
          background-color: yellow;
      }
       .work.ng-valid {
          background-color: lightgreen;
      }
      .work.ng-dirty.ng-invalid-required {
          background-color: red;
      }
      .work.ng-dirty.ng-invalid-minlength {
          background-color: yellow;
      }
 
    </style>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
     <link rel="stylesheet" href="app.css">
  </head>
  <body ng-app="myApp">
      <div class="generic-container" ng-controller="AppController as ctrl">
          <div class="panel panel-default">
              <div class="panel-heading"><span class="lead">nhập thông tin giảng viên </span></div><br>
              <div class="formcontainer">
                  <form ng-submit="ctrl.submit()" name="myForm" class="form-horizontal">
                      <input type="hidden" ng-model="ctrl.user.STT" />

                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-4 control-lable" for="ID">Mã giảng viên</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.user.IDname" id="ID" class="IDname form-control input-sm" placeholder="Nhập mã giảng viên" required ng-minlength="3"/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.ID.$error.required">This is a required field</span>
                                      <span ng-show="myForm.ID.$error.minlength">Minimum length required is 3</span>
                                      <span ng-show="myForm.ID.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>
                         
                       
                     <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-4 control-lable" for="uname">Tên giảng viên</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.user.username" id="uname" class="username form-control input-sm" placeholder="Nhập tên giảng viên" required ng-minlength="3"/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.uname.$error.required">This is a required field</span>
                                      <span ng-show="myForm.uname.$error.minlength">Minimum length required is 3</span>
                                      <span ng-show="myForm.uname.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>
 
                     <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-4 control-lable" for="cn">Chuyên ngành</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.user.work" id="cn" class="work form-control input-sm" placeholder="Nhập chuyên ngành" required ng-minlength="3"/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.cn.$error.required">This is a required field</span>
                                      <span ng-show="myForm.cn.$error.minlength">Minimum length required is 3</span>
                                      <span ng-show="myForm.cn.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>
						<tr>
						      <td>&nbsp;</td>
						      <td>
						      	<input type="submit" name="btnInsert" id="btnInsert" value="Insert" />
						      	<input type="submit" name="btnUpdate" id="btnUpdate" value="Update" />
						      	<input type="submit" name="btnDelete" id="btnDelete" value="Delete" />
						      </td>
						    </tr>
                      <div class="row">
                            <div class="col-md-offset-10">
                              <input type="submit"  value="{{!ctrl.user.STT ? 'Add' : 'Update'}}" class="btn btn-primary btn-sm" ng-disabled="myForm.$invalid">
                              <button type="button" ng-click="ctrl.reset()" class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine">Reset Form</button>
                          </div>
                      </div>
                  </form>
              </div>
          </div>
          <div class="panel panel-default">
                <!-- Default panel contents -->
              <div class="panel-heading"><span class="lead">Danh sách giảng viên </span></div>
              <div class="col-md-offset-0">
                  <table class="table table-bordered">
                      <thead>
                          <tr>
                               <th>Số thứ tự</th>
                              <th>Mã giảng viên</th>
                              <th>Tên giảng viên</th>
                              <th>Chuyên ngành</th>          					
                          <c:forEach var="rows" items="${result.rows}">
                          	<tr>
	                             <td>${rows.idGV }</td>
	                             <td> ${rows.MaGV }</td>
	                             <td> ${rows.TenGV }</td>
	                             <td> ${rows.ChuyenNganh }</td>
	                             
	                       </tr>
                         </thead>
                       
                        </c:forEach>
                        
                  </table>
              </div>
          </div>
      </div>
       
      <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js">
      </script>  
      <script>
          angular.module('myApp', [])
          .controller('AppController', ['$scope', function($scope) {
              var self = this;
              self.user={STT:null,IDname:'',username:'',work:''};
              self.STT = 4;
               
              //self.users = [// In future posts, we will get it from server using service
              //        {STT:1, IDname: '1411000', username: 'A', work: 'CNPM'},
              //        {STT:2, IDname: '1411001', username: 'B', work: 'MMT'},
              //        {STT:3, IDname: '1411002', username: 'C', work: 'HDH'}
              //];
               
              self.submit = function() {
                  if(self.user.STT === null){
                      self.user.STT = self.STT++;
                      console.log('Saving New User', self.user);    
                      self.users.push(self.user);//Or send to server, we will do it in when handling services
                  }else{
                      for(var i = 0; i < self.users.length; i++){
                          if(self.users[i].STT === self.user.STT) {
                            self.users[i] = self.user;
                            break;
                          }
                      }
                     console.log('User updated with STT ', self.user.STT);
                  }
                  self.reset();
              };
               
              self.edit = function(STT){
                  console.log('STT to be edited', STT);
                  for(var i = 0; i < self.users.length; i++){
                      if(self.users[i].STT === STT) {
                         self.user = angular.copy(self.users[i]);
                         break;
                      }
                  }
              }
               
              self.remove = function(STT){
                  console.log('STT to be deleted', STT);
                  for(var i = 0; i < self.users.length; i++){
                      if(self.users[i].STT === STT) {
                         self.users.splice(i,1);
                         if(self.user.STT === STT){//It is shown in form, reset it.
                            self.reset();
                         }
                         break;
                      }
                  }
              }
               
              self.reset = function(){
                  self.user={STT:null,IDname:'',username:'',work:''};
                  $scope.myForm.$setPristine(); //reset Form
              }
 
      }]);
  </script>
</body>
</html>