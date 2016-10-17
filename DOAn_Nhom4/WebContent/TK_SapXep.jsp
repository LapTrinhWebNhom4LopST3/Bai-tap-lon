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
    
   <title>Trang Trưởng Khoa/Trưởng Bộ Môn Sắp Xếp</title>
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
  <div class="row">
      <div class="col-md-1"></div>
      <div class="col-md-8">
        <div class="container">
         
          <div class="btn-group btn-group-justified" role="group" aria-label="abc">
              <div class="btn-group" role="group">
                <a href="TK_NhapTTGV.jsp"> <button   type="button"  class="btn btn-default" >Nhập/Xem thông tin</button></a>
              </div>
              <div class="btn-group" role="group">
                 <a href="TK_SapXep.jsp"> <button type="button" class="btn btn-info">Sắp xếp hội đồng</button></a>
              </div>
              <div class="btn-group" role="group">
                <a href="TK_TimKiem.jsp"><button type="button" class="btn btn-default">Tìm kiếm hội đồng</button></a>
              </div>
          </div>
           <br>
          <div class="col-md-2 " >
                        <select class="form-control ">
                            <option>Chuyên ngành</option>
                            <option>Công nghệ phần mềm</option>
                            <option>Quản trị mạng</option>
                        </select>
          </div>
          <div class="col-md-2 " >
                        <select class="form-control ">
                            <option>Ngày</option>
                        </select>
          </div>
          <br>
          <br>

          <div class="row">
            <div class="col-md-24 ">
              <table class="table table-bordered">
                <thead>
                  <tr>
                    <th>Địa Điểm</th>
                    <th>Từ giờ</th>
                    <th>Đến giờ</th>
                    <th>Chủ tịch</th>
                    <th>Ủy viên 1</th>
                    <th>Ủy viên 2</th>
                    <th>Ủy viên 3</th>
                    <th>Thư Kí</th>
                    <th>Tên Sinh Viên</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td rowspan="4">A503</td>
                    <td>7h</td>
                    <td>7h30</td>
                    <td> 
                  <select class="form-control" col-md-1>
					  <option>Tên GV 1</option>
					  <option>Tên GV 2</option>
					  <option>Tên GV 3</option>
					  <option>Tên GV 4</option>
					  <option>Tên GV 5</option>
					</select></td>
                    </td>
                    <td>
                   <select class="form-control" col-md-1>
					  <option>Tên GV 1</option>
					  <option>Tên GV 2</option>
					  <option>Tên GV 3</option>
					  <option>Tên GV 4</option>
					  <option>Tên GV 5</option>
					</select></td>
                    <td> 
                    <select class="form-control" col-md-1>
					  <option>Tên GV 1</option>
					  <option>Tên GV 2</option>
					  <option>Tên GV 3</option>
					  <option>Tên GV 4</option>
					  <option>Tên GV 5</option>
					</select></td>
                    <td> 
                    <select class="form-control" col-md-1>
					  <option>Tên GV 1</option>
					  <option>Tên GV 2</option>
					  <option>Tên GV 3</option>
					  <option>Tên GV 4</option>
					  <option>Tên GV 5</option>
					</select></td>
                    <td> 
                    <select class="form-control" col-md-1>
					  <option>Tên GV 1</option>
					  <option>Tên GV 2</option>
					  <option>Tên GV 3</option>
					  <option>Tên GV 4</option>
					  <option>Tên GV 5</option>					  
					</select>
				   </td>
				   <td>1</td>
                  <tr>
                    <td>7h30</td>
                    <td>8h</td>
                    <td> </td>
                    <td> </td>
                    <td> </td>
                    <td> </td>
                    <td></td>
                    <td>2.</td>
                  </tr>
                  <tr>
                    <td>8h</td>
                    <td>8h30</td>
                    <td> </td>
                    <td> </td>
                    <td> </td>
                    <td> </td>
                    <td></td>
                    <td>3.</td>
                  </tr>
                  <tr>
                    <td>8h30</td>
                    <td>9h</td>
                    <td> </td>
                    <td> </td>
                    <td> </td>
                    <td> </td>
                    <td></td>
                    <td>4.</td>
                  </tr>
                  <tr>
                    <td rowspan="2">A103</td>
                    <td>8h</td>
                    <td>8h30</td>
                    <td> </td>
                    <td> </td>
                    <td> </td>
                    <td> </td>
                    <td> </td>
                    <td>5.</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
         </div>
            
        </div>          
      </div>

              
       <!--  <div class="col-md-3"> -->
              <div class ="row">
              <div class="col-md-10"></div>
              <div class="col-md-2 col-md-2">
                                <button type="submit" class="btn btn-primary " >Save</button>

              </div>
              
      </div>
</body>
</html>