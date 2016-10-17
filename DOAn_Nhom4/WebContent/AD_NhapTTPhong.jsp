<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>

           <script src="js/angular.min.js"></script>
    
   <title>Trang Admin Xem/Nhập Thông Tin Phòng Trống</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
     <link rel="icon" href="img/logo.PNG" type="image/x-icon" />
    <link rel="shortcut icon" href="img/logo.PNG"/>
    
 <meta http-equiv="X-UA-Compatible"content="IE=edge">
    <link rel="stylesheet" href="js//bootstrap.min.css">
    <style>
        body    { padding-top:30px; }
    </style>
    
    <!-- JS ===================== -->
    <!-- load angular -->
    
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
    <jsp:include page= "HeaderAD.jsp"></jsp:include>
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
           <a href="ADprofile.jsp" class="btn btn-success btn-lg">
    <span class="glyphicon glyphicon-hand-left"></span> Trở về
  </a><br><br>
        <div class="btn-group btn-group-justified" role="group" aria-label="abc">
  <div class="btn-group" role="group">
         <a href="AD_Xem_NhapTT.jsp"> <button   type="button"  class="btn btn-default " >Nhập thông tin giảng viên</button></a>
  </div>
  <div class="btn-group" role="group">
    <a href="AD_NhapTTDeTai.jsp"><button type="button" class="btn btn-default  ">Nhập thông tin đề tài</button></a>
  </div>
  <div class="btn-group" role="group">
    <a href="AD_NhapTTPhong.jsp"><button type="button" class="btn btn-info ">Nhập thông tin phòng</button></a>
  </div>
</div>
<br><br><br>

<html ng-app="myApp">
  <head>  
    <title>Ad_nhapthongtinphong</title>  
    <style>body{font-family:"Time new roman";background-color:#E2E2DC}</style>
  <style>
      .IDroom.ng-valid {
          background-color: lightgreen;
      }
      .IDroom.ng-dirty.ng-invalid-required {
          background-color: red;
      }
      .IDroom.ng-dirty.ng-invalid-minlength {
          background-color: yellow;
      }

    .date.ng-valid {
          background-color: lightgreen;
      }
      .date.ng-dirty.ng-invalid-required {
          background-color: red;
      }
      .date.ng-dirty.ng-invalid-minlength {
          background-color: yellow;
      }
       .start.ng-valid {
          background-color: lightgreen;
      }
      .start.ng-dirty.ng-invalid-required {
          background-color: red;
      }
      .start.ng-dirty.ng-invalid-minlength {
          background-color: yellow;
      }
         .finish.ng-valid {
          background-color: lightgreen;
      }
      .finish.ng-dirty.ng-invalid-required {
          background-color: red;
      }
      .finish.ng-dirty.ng-invalid-minlength {
          background-color: yellow;
      }
 
    </style>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
     <link rel="stylesheet" href="app.css">
  </head>
  <body ng-app="myApp">
      <div class="generic-container" ng-controller="AppController as ctrl">
          <div class="panel panel-default">
              <div class="panel-heading"><span class="lead">Nhập thông tin phòng </span></div><br>
              <div class="formcontainer">
                  <form ng-submit="ctrl.submit()" name="myForm" class="form-horizontal">
                      <input type="hidden" ng-model="ctrl.user.STT" />

                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-4 control-lable" for="ID">Mã phòng</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.user.IDroom" id="ID" class="IDroom form-control input-sm" placeholder="Nhập mã phòng" required ng-minlength="3"/>
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
                              <label class="col-md-4 control-lable" for="uname">ngày</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.user.date" id="uname" class="date form-control input-sm" placeholder="dd-mm-yyyy" ng-pattern="/^(0?[1-9]|[12][0-9]|3[01])-(0?[1-9]|1[012])-((19[0-9]{2})|(20[0-1]{1}[0-4]{1}))$/">
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
                              <label class="col-md-4 control-lable" for="cn">từ giờ</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.user.start" id="cn" class="start form-control input-sm" placeholder="Nhập giờ bắt đầu" required ng-minlength="1"/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.cn.$error.required">This is a required field</span>
                                      <span ng-show="myForm.cn.$error.minlength">Minimum length required is 3</span>
                                      <span ng-show="myForm.cn.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>

                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-4 control-lable" for="cn">đến giờ</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.user.finish" id="cn" class="finish form-control input-sm" placeholder="Nhập giờ kết thúc" required ng-minlength="1"/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.cn.$error.required">This is a required field</span>
                                      <span ng-show="myForm.cn.$error.minlength">Minimum length required is 3</span>
                                      <span ng-show="myForm.cn.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>
 
 
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
              <div class="tablecontainer">
                  <table class="table table-hover">
                      <thead>
                          <tr>
                               <th>Số thứ tự</th>
                              <th>Mã phòng</th>
                              <th>ngày</th>
                              <th>thời gian bắt dầu(giờ)</th>
                              <th>thời gian kết thúc(giờ)</th>
                              <th width="100">
                          </tr>
                      </thead>
                      <tbody>
                          <tr ng-repeat="u in ctrl.users">
                              <td><span ng-bind="u.STT"></span></td>
                              <td><span ng-bind="u.IDroom"></span></td>
                              <td><span ng-bind="u.date"></span></td>
                              <td><span ng-bind="u.start"></span></td>
                              <td><span ng-bind="u.finish"></span></td>
                              <td>
                              <button type="button" ng-click="ctrl.edit(u.STT)" class="btn btn-success custom-width">Edit</button>  <button type="button" ng-click="ctrl.remove(u.STT)" class="btn btn-danger custom-width">Remove</button>
                          </tr>
                      </tbody>
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
              self.user={STT:null,IDroom:'',date:'',start:'',finish:''};
              self.STT = 5;
               
              self.users = [// In future posts, we will get it from server using service
                      {STT:1, IDroom: 'A111', date: '26-10-2016',start:'7',finish:'9'},
                      {STT:2, IDroom: 'A112', date: '26-10-2016',start:'7',finish:'9'},
                      {STT:3, IDroom: 'A342', date: '26-10-2016',start:'7',finish:'9'},
              ];
               
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
                  self.user={STT:null,IDroom:'',date:'',work:'',start:'',finish:''};
                  $scope.myForm.$setPristine(); //reset Form
              }
 
      }]);
  </script>
</body>
</html>