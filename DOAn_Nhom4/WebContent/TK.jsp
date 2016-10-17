<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="js/jquery-3.1.0.min.js"></script>    
    <script src="js/bootstrap.min.js"></script>    
           <script src="js/angular.min.js"></script>
    
   <title>Trang Trưởng Khoa/Trưởng Bộ Môn</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
     <link rel="icon" href="img/logo.PNG" type="image/x-icon" />
    <link rel="shortcut icon" href="img/logo.PNG"/>
<script>
var validationApp = angular.module('validationApp', []);

  validationApp.controller('mainController', function($scope) {
     
    $scope.submitForm = function() {
      if ($scope.userForm.$valid) {
        alert('May Report finished.');
      }

    };

  });
</script>
  <style>
img {
    width: 100%;
    height: auto;
}
body {
    background-image: url("img/bkg3.jpg");
}
</style>
</head>
<body>
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
            <div class="btn-group btn-group-justified" role="group" aria-label="abc">
                <div class="btn-group" role="group">
                    <a href="nhapthongtin.html"><button type="button"  class="btn btn-info" >Nhập/Xem thông tin</button></a>
                </div>
                <div class="btn-group" role="group">
                  <a href="TK_SapXep.jsp"><button type="button" class="btn btn-default">Sắp xếp hội đồng</button></a>
                </div>
              <div class="btn-group" role="group">
                <a href="TK_TimKiem.jsp"><button type="button" class="btn btn-default">Tìm kiếm hội đồng</button></a>
              </div>
            </div>
            <br>
            <br>
           <div class="panel panel-default ">
              <div class="panel-heading">Nhập danh sách đề tài</div>
                  <div class="panel-body">            
                      <div ng-app="validationApp" ng-controller="mainController">
                          <div class="container">
                              <div class="row">   
                                  <div class="col-md-3"> 
                                     <form name="userForm" ng-submit="submitForm()" novalidate>
                                         <div class="form-group">
                                             <label>tên đề tài</label>
                                              <input type="text " name="tendt" class="form-control" ng-model="tendt" 
                                              ng-minlength="2" ng-maxlength="100" ng-required=true>
                                            
                                              <span class="error" ng-show="userForm.tendt.$error.required">required</span>
                                              <span class="error" ng-show="userForm.tendt.$error.minlength">words must be more than 2</span>
                                              <span class="error" ng-show="userForm.tendt.$error.maxlength">words must be less than 100</span>
                                              <span class="valid" ng-show="userForm.tendt.$valid">OK</span>
                                           </div>
                                            <div class="form-group">
                                                <label>giáo viên hướng dẫn</label>
                                                <input type="text" name="gvhd" class="form-control" ng-model="gvhd" 
                                                ng-minlength="6" ng-maxlength="20" ng-required=true>
                                              
                                                <span class="error" ng-show="userForm.gvhd.$error.required">required</span>
                                                <span class="error" ng-show="userForm.gvhd.$error.minlength">words must be more than 6</span>
                                                <span class="error" ng-show="userForm.gvhd.$error.maxlength">words must be less than 20</span>
                                                <span class="valid" ng-show="userForm.gvhd.$valid">OK</span>
                                           </div>
                                            <div class="form-group">
                                                <label>chuyên ngành</label>
                                                <input type="text" name="chuyennganh" class="form-control" ng-model="chuyennganh" 
                                                ng-minlength="3" ng-maxlength="30" ng-required=true>
                                              
                                                <span class="error" ng-show="userForm.chuyennganh.$error.required">required</span>
                                                <span class="error" ng-show="userForm.chuyennganh.$error.minlength">words must be more than 3</span>
                                                <span class="error" ng-show="userForm.chuyennganh.$error.maxlength">words must be less than 30</span>
                                                <span class="valid" ng-show="userForm.chuyennganh.$valid">OK</span>
                                           </div>
                                           <div class="form-group">
                                                <label>MSSV</label>
                                                <input type="number" name="MSSV" class="form-control" ng-model="MSSV" ng-required=true>
                                                <span class="error" ng-show="userForm.MSSV.$error.required">required</span>
                                                <span class="error" ng-show="!userForm.MSSV.$error.required && userForm.age.$invalid">MSSV must be numeric </span>
                                                <span class="valid" ng-show="userForm.MSSV.$valid">OK</span>
                                           </div>
                                          <div class="form-group">
                                              <label>Họ và tên sinh viên</label>
                                              <input type="text" name="tensv " class="form-control" ng-model="tensv" 
                                              ng-minlength="5" ng-maxlength="25" ng-required=true>
                                            
                                              <span class="error" ng-show="userForm.tensv.$error.required">required</span>
                                              <span class="error" ng-show="userForm.tensv.$error.minlength">words must be more than 5</span>
                                              <span class="error" ng-show="userForm.tensv.$error.maxlength">words must be less than 25</span>
                                              <span class="valid" ng-show="userForm.tensv.$valid">OK</span>
                                         </div>
                                        <button type="save" class="btn btn-primary" ng-disabled="userForm.$invalid">lưu</button>

                                      </form>           
                                    </div>
                                  <div class="col-md-8">
                                            <div class="col-md-offset-1 ">
                                          <table class="table table-bordered">
                                            <thead>
                                              <tr>
                                              <th>STT</th>
                                                <th>Tên đề tài</th>
                                                <th>GVHD</th>
                                                <th>Chuyên ngành</th>
                                                <th>Mã số SV</th>
                                                <th>Tên SV thực hiện</th>
                                              </tr>
                                              <tr>
                                                <td>01</td>
                                                  <td> Đề tài 01</td>
                                                  <td> Nguyễn Văn A</td>
                                                  <td> Công Nghệ phần mềm</td>
                                                  <td>14110061</td>
                                                  <td>Trương Minh Hiếu</td>
                                                
                                              </tr>
                                            </thead>
                                          </table>
                                        </div>
                                  </div>
                        </div>
                    </div>
            </div>
          </div>
        </div>
        <br>
         <div class="panel panel-default">
                <div class="panel-heading">Nhập danh sách giảng viên</div>
                   <div class="panel-body">
                        <div class="row"> 
                            <div class="col-md-5"> 
                                 <label class="col-md-0">Nhập danh sách giảng viên  </label> 
                                  <form class="form-horizontal">
                                    <div class="form-group ">
                                      <label for="magv" class=" col-md-4 control-label  ">Mã GV : </label>
                                        <div class="col-md-6">
                                          <input type="magv" class="form-control" id="magv">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                      <label for="tengv" class="col-md-4 control-label">Tên Giảng Viên</label>
                                        <div class="col-md-6">
                                          <input type="tengv" class="form-control" id="tengv">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                      <label for="chuyenmon" class="col-md-4 control-label">Chuyên môn</label>
                                        <div class="col-md-6">
                                          <input type="chuyenmon" class="form-control" id="chuyenmon" placeholder="">
                                        </div>
                                    </div>
                                      <div class="col-sm-offset-2 col-sm-10">
                                        <button type="submit" class="btn btn-default">Lưu</button>
                                      </div>
                                  </form>
                            </div>
                            <div class="col-md-7">
                              <label class="col-md-6">Xem danh sách giảng viên </label>
                                  <div class="col-md-offset-0 ">
                                    <table class="table table-bordered">
                                      <thead>
                                        <tr>
                                        <th>STT</th>
                                          <th>Mã GV</th>
                                          <th>Tên GV</th>
                                          <th>Chuyên môn</th>
                                        </tr>
                                        <td>01</td>
                                          <td> 01</td>
                                          <td> Nguyễn Văn A</td>
                                          <td> Công Nghệ phần mềm</td>
                                      
                                      </thead>
                                    </table>
                                  </div>
                              </div>
                                
                          </div>
                        </div>
                      </div>
         

              <br>
              <div class="panel panel-default">
                    <div class="panel-heading">Nhập danh sách phòng trống</div>
                       <div class="panel-body">
                                <div class="col-md-5"> 
                                    <form class="form-horizontal">
                                      <div class="form-group ">
                                        <label for="maphong" class=" col-md-4 control-label  ">Mã Phòng: </label>
                                          <div class="col-md-6">
                                            <input type="maphong" class="form-control" id="maphong">
                                          </div>
                                      </div>
                                      <div class="form-group">
                                        <label for="ngay" class="col-md-4 control-label">Ngày</label>
                                          <div class="col-md-6">
                                            <input type="ngay" class="form-control" id="ngay">
                                          </div>
                                      </div>
                                      <div class="form-horizontal">
                                        <label for="tgbd" class="col-md-3 control-label">Trống từ </label>
                                          <div class="col-md-3">
                                            <input type="tgbd" class="form-control" id="tgbd">
                                          </div>
                                          <label for="tgkt" class="col-md-1 control-label">tới </label>
                                          <div class="col-md-3">
                                            <input type="tgkt" class="form-control" id="tgkt">
                                          </div>
                                      </div>
                                      <br>
                                      <br>
                                        <div class="col-sm-offset-2 col-md-10">
                                          <button type="submit" class="btn btn-default">Lưu</button>
                                        </div>
                                    </form>
                                  </div>
                                      <div class="col-md-7">
                                            <div class="col-md-offset-0 ">
                                              <table class="table table-bordered">
                                                <thead>
                                                  <tr>
                                                  <th>Mã Phòng</th>
                                                    <th>Ngày</th>
                                                    <th>Từ</th>
                                                    <th>Tới</th>
                                                  </tr>
                                                  <td>A404</td>
                                                    <td> 18/5/2016</td>
                                                    <td> 7h</td>
                                                    <td> 10h</td>
                                                
                                                </thead>
                                              </table>
                                            </div>
                                      

                                </div>
                              </div>
                  </div>
            
      </div>
  </nav>
</body>
</html>