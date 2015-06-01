<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; utf-8">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <link href='./stylesheets/style.css' rel='stylesheet' >
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
                                <img src='/resources/inuimg.jpg' style='height:120px; margin:0px 0px 0px -20px;'>
                            </div>
                            <div class='col-md-5' style='margin:0px 0px 0px -20px;'>
                                </br></br></br>
                                <h3>이름</h3>
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
            <div class='col-md-12'>
                <div class='col-md-5'>
                    <img src='/resources/inuimg.jpg' style='height:45%; width:100%; margin:60px 0px 0px 0px;'>
                </div>
                <div class='col-md-7'>
                    <div class="list-group" style='margin: 60px 0px -7px 0px;'>
                      <a href="#" class="list-group-item">
                        <h4 class="list-group-item-heading" style='margin: 10px 0px 0px 0px;'>이름</h4>
                        <p class="list-group-item-text">
                            <div class="input-group" style='width:100%; margin: 10px 0px -5px 0px;'>
                                <input type="text" class="form-control" placeholder="NAME">
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
                                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                                                                                    남자
                                    </label>
                            </div>
                            <div class="radio-inline" style='margin: 10px 0px -7px 0px;'>
                                <label>
                                    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                                                                                    여자
                                </label>
                            </div>
                        </p>
                      </a>
                    </div>
                    <div class="list-group" style='margin:20px 0px -7px 0px;'>
                      <a href="#" class="list-group-item">
                        <h4 class="list-group-item-heading">학과</h4>
                        <p class="list-group-item-text">
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                단과 대학 <span class="caret"></span>
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                학과 <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">야간강좌</a></li>
                                <li><a href="#">정보기술대학</a></li>
                            </ul>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">컴퓨터공학부(야)</a></li>
                                <li><a href="#">산업경영공학부(야)</a></li>
                            </ul>
                        </p>
                      </a>
                    </div>
                    <div class="list-group" style=' margin:20px 0px -7px 0px;'>
                      <a href="#" class="list-group-item">
                        <h4 class="list-group-item-heading">메일 주소</h4>
                        <p class="list-group-item-text">
                            <div class="input-group" style='width:100%; margin: 10px 0px 0px 0px;'>
                                <input type="text" class="form-control" placeholder="E-MAIL">
                                <span class="input-group-btn" >
                                </span>
                            </div>
                        </p>
                        <h4 class="list-group-item-heading">연락처</h4>
                        <p class="list-group-item-text">
                            <div class="input-group" style='width:100%; margin: 10px 0px 0px 0px;'>
                                <input type="text" class="form-control" placeholder="PHONE NUMBER">
                                <span class="input-group-btn" >
                                </span>
                            </div>
                        </p>
                        <h4 class="list-group-item-heading">생일</h4>
                        <p class="list-group-item-text">
                            <div class="input-group" style='width:100%; margin: 10px 0px 0px 0px;'>
                                <input type="text" class="form-control" placeholder="YYYY/MM/DD">
                                <span class="input-group-btn" >
                                </span>
                            </div>
                        </p>
                      </a>
                    </div>
                    <!--수정버튼-->
                    <button type="button" class="btn btn-primary" style='width: 49%; margin:20px 0px 0px 0px;'>수정</button>
                    <button type="button" class="btn btn-default" style='width: 49%; margin:20px 0px 0px 0px;'>취소</button>
                    </br>
                    <button type="button" class="btn btn-link" style='width: 99%; margin:7px 0px 0px 0px; float:right;'><B>회원탈퇴</B></button>
                </div>
            </div>
        </div>
    </div>

</body>
<script>
</script>
</html>