<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            <li role="presentation" ><a href="/search"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a></li>
            <li role="presentation" ><a href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a></li>
            <li role="presentation" ><a href="#"><span class="glyphicon glyphicon-comment" aria-hidden="true"></span></a></li>
            <li role="presentation" ><a href="/profile"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span></a></li>
         </ul>
      </div>
      <div class='col-md-9'> <!--고정틀말고-->
         <div class="panel panel-default" style='margin: 10px 0px 0px 0px;'>
            <div class="panel-heading">강좌</div>
               <div class="panel-body" style='height:100%;'>
                  <div class="panel panel-default" style='margin: 3px 0px 0px 0px;'>
                     <div class="input-group">
                       <input type="text" class="form-control" placeholder="글쓰기">
                       <span class="input-group-btn">
                        <button class="btn btn-default" type="button">OK!</button>
                       </span>
                     </div><!-- /input-group -->
                  </div><!-- /.row -->
               </div>
         </div>
      </div>
   </div>
</body>
<script>
</script>
</html>