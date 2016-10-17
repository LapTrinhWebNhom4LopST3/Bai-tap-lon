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
   <title>Trang Sinh Viên</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
     <link rel="icon" href="img/logo.PNG" type="image/x-icon" />
    <link rel="shortcut icon" href="img/logo.PNG"/>

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
<jsp:include page= "HeaderSV.jsp"></jsp:include>

 <div class="container">
   <div class="row">
      <div class="col-md-6">
         <!-- <div class="panel panel-default"> -->
         <div class="panel panel-primary">
            <div class="panel-heading">Thông Tin Khóa Luận</div>
              <div class="panel-body">
                <table class="table table-bordered">
                  <thead>
                    <tr>
                      <th>Tên Đề Tài</th>
                      <th>Chuyên Ngành</th>
                      <th>Mã Sinh Viên</th>
                      <th>Giáo Viên Hướng Dẫn</th>  
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>Kết nối các máy tính</td>
                      <td>Mạng máy tính</td>
                      <td>14110233-14110003</td>
                      <td>Nguyễn Văn A</td>
                    </tr>
                    <tr>
                      <th> </th>
                      <th> </th>
                      <th> </th>
                      <th> </th>
                      </tr>
                  </tbody>
                </table>
              </div>
            </div>
        </div> 
<!-- thong tin hoi dong -->
<div class="container"> 
  <div class="col-md-6">
       <!--  <div class="panel panel-default"> -->
       <div class="panel panel-primary">
            <div class="panel-heading">Thông Tin Hội Đồng</div>
                <div class="panel-body">
                    <table class="table table-bordered">
                          <thead>
                              <tr>
                            <th>STT</th>
                            <th>Tên Đề Tài</th>
                            <th>Mã GV</th>
                            <th>Tên GV</th>
                            <th>Vai Trò</th>
                             <th>Địa Điểm</th>
                            <th>Thời Gian (Ngày giờ)</th>
                              </tr>
                              <tr>
                                <th> </th>
                                <th> </th>
                                <th> </th>
                                <th> </th>
                                <th> </th>
                                <th> </th>
                                <th> </th>
                              </tr>
                          </thead>
                    </table>
                </div>
        </div>
  </div>
</div>

    </div>
    </div>
</body>
</html>