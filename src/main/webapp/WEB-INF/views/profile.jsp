<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html"; charset=utf-8">


    <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <!-- <link href='./stylesheets/style.css' rel='stylesheet' > -->
</head>

<body>
    <div class='col-md-12'><!--상단바-->
        <p class="bg-primary" style="margin 0% 0% 0% 0%;"><B>CAMPUSBOOK</B></p>
    </div>
    
    <div class='col-md-12'>
        <div class='col-md-3'>
            <div class="row">
                <div class="col-sm-10 col-md-12" >
                    <div class="thumbnail" style='height:100%;'>
                        <div class="caption">
                        <div class='col-md-12'>
                            <div class='col-md-7'>
                                <img src='/resources/inuimg.jpg' style= 'width:100%; height:120px; margin:0px 0px 0px -20px;'>
                            </div>
                            <div class='col-md-5' style='margin:0px 0px 0px -20px;'>
                                </br></br></br>
                                <h4><B><%=session.getAttribute("username") %></B></h4>
                            </div>
                        </div>
                            <ul class="nav nav-pills nav-stacked" >
                                <center><li role="presentation" style='margin: 40px 0px 0px 0px;'><a href="#">시 간 표</a></li></center>
                                <center><li role="presentation" class="dropdown" style='margin:20px 0px 0px 0px;'>
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false">
                                      게 시 판 <span class="caret"></span>
                                    </a>
                                    <ul class="dropdown-menu" role="menu">
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">A</a></li>
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">B</a></li>
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">C</a></li>
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">D</a></li>
                                    </ul>
                                 </li></center>
                                <center><li role="presentation" style='margin:20px 0px 0px 0px;'><a href="/search">친 구  찾 기</a></li></center>
                                <center><li role="presentation" style='margin:20px 0px 0px 0px;'><a href="#">친 구  요 청</a></li></center>
                                <center><li role="presentation" style='margin:20px 0px 0px 0px;'><a href="#">메 세 지</a></li></center>
                                <li role="presentation" class="active" style='margin:20px 0px 0px 0px;' ><a href="/profile"><center>환 경 설 정</center></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class='col-md-9'>
            <ul class="nav nav-tabs nav-justified">
                <li role="presentation" ><a href="/search"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a></li>
                <li role="presentation" ><a href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a></li>
                <li role="presentation" ><a href="#"><span class="glyphicon glyphicon-comment" aria-hidden="true"></span></a></li>
                <li role="presentation" class="active"><a href="/profile"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span></a></li>
            </ul>
        </div>
        <div class='col-md-9'> <!--고정틀말고-->
        <form action = "/modify" method ="post" enctype="multipart/form-data">
            <div class='col-md-12'>
                <div class='col-md-5'>
                    <img src='/resources/inuimg.jpg' style='height:45%; width:100%; margin:60px 0px 0px 0px;'>
                  <input type=file name='upload' style='display: none;'> 
                  <button type="button" class="btn btn-primary" style='float:right; margin: 10px 0px 0px 0px;' src='이미지경로' border='0' onclick='document.all.upload.click(); document.all.file2.value=document.all.file1.value'> 
                     사진 바꾸기
                  </button>                  
                </div>
                <div class='col-md-7'>
                    <div class="list-group" style='margin: 60px 0px -7px 0px;'>
                      <a href="#" class="list-group-item">
                        <h4 class="list-group-item-heading" style='margin: 10px 0px 0px 0px;'>이름</h4>
                        <p class="list-group-item-text">
                            <div class="input-group" style='width:100%; margin: 10px 0px -5px 0px;'>
                                <h4><B><%=session.getAttribute("username") %></B></h4>
                                <span class="input-group-btn" >
                                </span>
                            </div>
                        </p>
                      </a>
                    </div>
                    <div class="list-group" style=' margin:20px 0px -7px 0px;'>
                      <a href="#" class="list-group-item" >
                        <h4 class="list-group-item-heading" style='margin: 10px 0px 0px 0px;'>성별</h4>
                        <p class="list-group-item-text">    
                            <div class="radio-inline" style='margin: 10px 0px -7px 0px;'>
                                <label>
                                    <input type="radio" name="sex" id="optionsRadios1" value="남자">
                                    남자
                                    </label>
                            </div>
                            <div class="radio-inline" style='margin: 10px 0px -7px 0px;'>
                                <label>
                                    <input type="radio" name="sex" id="optionsRadios2" value="여자">
                                    여자
                                </label>
                            </div>
                        </p>
                      </a>
                    </div>
                    <div class="list-group" style='margin:20px 0px -7px 0px;'>
                      <li href="#" class="list-group-item">
                        <h4 class="list-group-item-heading">학과</h4>
                        <p class="list-group-item-text">
                     <div class="radio-inline" style='margin: 10px 0px -7px 0px;'>
                                <label>
                                    <input type="radio" name="major" id="optionsRadios1" value="컴퓨터공학부">
                              컴퓨터공학부
                                    </label>
                            </div>
                            <div class="radio-inline" style='margin: 10px 0px -7px 0px;'>
                                <label>
                                    <input type="radio" name="major" id="optionsRadios2" value="정보통신공학과">
                              정보통신공학과
                                </label>
                            </div>
                     <div class="radio-inline" style='margin: 10px 0px -7px 0px;'>
                                <label>
                                    <input type="radio" name="major" id="optionsRadios2" value="임베디드시스템공학부">
                              임베디드시스템공학부
                                </label>
                            </div>
                        </p>
                      </li>
                    </div>
                    <div class="list-group" style=' margin:20px 0px -7px 0px;'>
                      <a href="#" class="list-group-item">
                  <h4 class="list-group-item-heading">과목</h4>
                     <table class="table table-condensed ">
                        <thead>
                           <tr>
                              <td>
                                 <div class="checkbox" style='margin: 10px 0px 0px 0px;'>
                                 <label>
                                    <input type="checkbox" name="subnum" id="optionsRadios1" value="1">
                                       분산시스템
                                    </label>
                                 </div>
                              </td>
                              <td>
                                 <div class="checkbox" style='margin: 5px 0px 0px 0px;'>
                                    <label>
                                       <input type="checkbox" name="subnum" id="optionsRadios1" value="2">
                                          웹프로그래밍
                                    </label>
                                 </div>
                              </td>
                            </tr>
                            <tr>
                              <td>
                                 <div class="checkbox" style='margin: 10px 0px 0px 0px;'>
                                 <label>
                                    <input type="checkbox" name="subnum" id="optionsRadios1" value="3">
                                       데이터 베이스
                                    </label>
                                 </div>
                              </td>
                              <td>
                                 <div class="checkbox" style='margin: 5px 0px 0px 0px;'>
                                    <label>
                                       <input type="checkbox" name="subnum" id="optionsRadios1" value="4">
                                          운영체제
                                    </label>
                                 </div>
                              </td>
                            </tr>
                            <tr>
                              <td>
                                 <div class="checkbox" style='margin: 10px 0px 0px 0px;'>
                                 <label>
                                    <input type="checkbox" name="subnum" id="optionsRadios1" value="5">
                                       이산수학
                                    </label>
                                 </div>
                              </td>
                              <td>
                                 <div class="checkbox" style='margin: 5px 0px 0px 0px;'>
                                    <label>
                                       <input type="checkbox" name="subnum" id="optionsRadios1" value="6">
                                          프로그래밍언어론
                                    </label>
                                 </div>
                              </td>
                            </tr>
                           
                        </thead>
                     </table>
                        <h4 class="list-group-item-heading">메일 주소</h4>
                        <p class="list-group-item-text">
                            <div class="input-group" style='width:100%; margin: 10px 0px 0px 0px;'>
                                <input type="text" name="email" class="form-control" placeholder="E-MAIL">
                                <span class="input-group-btn" >
                                </span>
                            </div>
                        </p>
                        <h4 class="list-group-item-heading">연락처</h4>
                        <p class="list-group-item-text">
                            <div class="input-group" style='width:100%; margin: 10px 0px 0px 0px;'>
                                <input type="text" name="phone" class="form-control" placeholder="PHONE NUMBER">
                                <span class="input-group-btn" >
                                </span>
                            </div>
                        </p>
                        <h4 class="list-group-item-heading">생일</h4>
                        <p class="list-group-item-text">
                            <div class="input-group" style='width:100%; margin: 10px 0px 0px 0px;'>
                                <input type="text" name="birth" class="form-control" placeholder="YYYY/MM/DD">
                                <span class="input-group-btn" >
                                </span>
                            </div>
                        </p>
                      </a>
                    </div>
                    <!--수정버튼-->
                    <div class='col-md-12'>
                        <div class='col-md-6'>
                        </div>
                        <div class='col-md-6'>
                            <button type="submit" class="btn btn-primary" style='width: 49%; margin:20px 0px 0px 0px;'>수정</button>
                            <button type="button" class="btn btn-default" style='width: 49%; margin:20px 0px 0px 0px;'>취소</button></br>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        </div>
    </div>

</body>
<script>
</script>
</html>