<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html"; charset="utf-8">
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
                                <li role="presentation" class="dropdown" style='margin:20px 0px 0px 0px;'><center>
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false">
                                      게 시 판 <span class="caret"></span>
                                    </a>
                                    <ul class="dropdown-menu" role="menu">
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">A</a></li>
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">B</a></li>
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">C</a></li>
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">D</a></li>
                                    </ul>
                                 </center></li>
                                <center><li role="presentation" style='margin:20px 0px 0px 0px;'><a href="/search">친 구  찾 기</a></li></center>
                                <center><li role="presentation" style='margin:20px 0px 0px 0px;'><a href="#">친 구  요 청</a></li></center>
                                <center><li role="presentation" style='margin:20px 0px 0px 0px;'><a href="#">메 세 지</a></li></center>
                                <center><li role="presentation" style='margin:20px 0px 0px 0px;'><a href="/profile">환 경 설 정</a></li></center>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class='col-md-9'>
            <ul class="nav nav-tabs nav-justified">
                <li role="presentation" ><a href="#"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a></li>
                <li role="presentation" ><a href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a></li>
                <li role="presentation" ><a href="#"><span class="glyphicon glyphicon-comment" aria-hidden="true"></span></a></li>
                <li role="presentation" ><a href="#"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span></a></li>
            </ul>
        </div>
        <div class='col-md-9'> <!--고정틀말고-->
            <div class="panel panel-default" style='margin: 10px 0px 0px 0px;'>
                <div class="panel-heading">강좌</div>
                    <div class="panel-body" style='height:100%;'>
                        <div class="panel panel-default" style='margin: 3px 0px 0px 0px;'>
                            <div class="panel-heading"><input type="text" class="form-control" placeholder="말 한마디"> </div>
                                <div class="panel-body" style='height:30%;'>
                                    내용이촤르륵
                                </div>
                        </div>
                        <div class="list-group" style='width:100%; margin:30px 0px 0px 0px;'>
                              <a href="#" class="list-group-item">post1</a>
                              <a href="#" class="list-group-item">post2</a>
                              <a href="#" class="list-group-item">post3</a>
                              <a href="#" class="list-group-item">post4</a>
                              <a href="#" class="list-group-item">post5</a>
                              <a href="#" class="list-group-item">post6</a>
                        </div>
                        <button type="button" class="btn btn-primary" style='margin: 10px 0px 0px 0px; float:right;'>글쓰기</button>
                    </div>
            </div>
        </div>
    </div>
</body>
<script>
</script>
</html>