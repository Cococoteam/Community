<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; utf-8">
   <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
   <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
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
                                <img src='/resources/inuimg.jpg' style='width:100%; height:120px; margin:0px 0px 0px -20px;'>
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
                                <li role="presentation" style='margin:20px 0px 0px 0px;' ><a href="/profile"><center>환 경 설 정</center></a></li>
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
                <li role="presentation" ><a href="/profile"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span></a></li>
            </ul>
        </div>
        <div class='col-md-9'> <!--고정틀말고-->
        <center>
            <img src='resources/inuimg.jpg' style='height:170px; margin:110px 0px 0px 0px;'>
            </br></br></br></br></br>
            <B style="font-size:20px;font-family:TD씨_씨고딕">인천대학교 Campusbook에 오신것을 환영합니다.</B></br>
            <B style="font-size:20px;font-family:씨고딕">Campusbook에서 나와 같은 수업을 듣는 친구들을 만나보세요.</B>
         </center>
      </div>
    </div>

</body>
<script>
</script>
</html>