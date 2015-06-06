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
                        <li role="presentation" class="active" style='margin:20px 0px 0px 0px;'><a href="/search"><center>친 구  찾 기</center></a></li>
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
            <li role="presentation" class="active"><a href="/search"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a></li>
            <li role="presentation" ><a href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a></li>
            <li role="presentation" ><a href="#"><span class="glyphicon glyphicon-comment" aria-hidden="true"></span></a></li>
            <li role="presentation" ><a href="/profile"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span></a></li>
         </ul>
      </div>
      <div class='col-md-9'> <!--고정틀말고-->
      <form action = "/search_Friend" method ="post">
         <div class="panel panel-default" style='margin: 10px 0px 0px 0px;'>
            <div class="panel-heading">인천대학교 친구들을 찾아줍니다!</div>
               <div class="panel-body" style='height:100%;'>
                  <div class='col-md-12'>
                     <div class='col-md-4'>
                        <div class="panel panel-default">
                           <div class="panel-heading">성별</div>
                           <div class="panel-body">
                              <div class="radio" style='margin: 10px 0px 0px 0px;'>
                                 <label>
                                 <input type="radio" name="sex" id="optionsRadios1" value="남자" checked>
                                 남자
                                 </label>
                              </div>
                              <div class="radio" style='margin: 10px 0px 0px 0px;'>
                                 <label>
                                 <input type="radio" name="sex" id="optionsRadios2" value="여자">
                                    여자
                                 </label>
                              </div>
                              <div class="radio" style='margin: 10px 0px 0px 0px;'>
                                 <label>
                                 <input type="radio" name="sex" id="optionsRadios2" value="남자 여자">
                                 무관
                                 </label>
                              </div>
                           </div>
                        </div>
                        <div class="panel panel-default">
                           <div class="panel-heading">학과</div>
                           <div class="panel-body">
                              <div class="checkbox" style='margin: 10px 0px 0px 0px;'>
                                 <label>
                                 <input type="checkbox" name="major" id="optionsRadios1" value="같은과" checked>
                                컴퓨터공학과
                                 </label>
                              </div>
                              <div class="checkbox" style='margin: 10px 0px 0px 0px;'>
                                 <label>
                                 <input type="checkbox" name="major" id="optionsRadios2" value="제외">
                                정봉통신학과
                                 </label>
                              </div>
                              <div class="checkbox" style='margin: 10px 0px 0px 0px;'>
                                 <label>
                                 <input type="checkbox" name="major" id="optionsRadios2" value="무관">
                                 무관
                                 </label>
                              </div>
                           </div>
                        </div>
                        <div class="panel panel-default">
                           <div class="panel-heading">강의</div>
                           <div class="panel-body">
                              <div class="checkbox" style='margin: 10px 0px 0px 0px;'>
                                 <label>
                                 <input type="checkbox" name="subject" id="optionsRadios1" value="1" checked>
                                 A
                                 </label>
                              </div>
                              <div class="checkbox" style='margin: 10px 0px 0px 0px;'>
                                 <label>
                                 <input type="checkbox" name="subject" id="optionsRadios2" value="2">
                                 B
                                 </label>
                              </div>
                              <div class="checkbox" style='margin: 10px 0px 0px 0px;'>
                                 <label>
                                 <input type="checkbox" name="subject" id="optionsRadios2" value="3">
                                 C
                                 </label>
                              </div>
                              <div class="checkbox" style='margin: 10px 0px 0px 0px;'>
                                 <label>
                                 <input type="checkbox" name="subject" id="optionsRadios2" value="4">
                                 D
                                 </label>
                              </div>
                           </div>
                        </div>
                        <button type="submit" class="btn btn-primary" style='width:100%; margin: 2px 0px 0px 0px;'>찾기</button>
                     </div>
                     <div class='col-md-8'>
                        <div class="panel panel-default" style='margin:0% 0% 0% 0%; height:100%;'>
                           <div class="panel-body">
                           <div class='col-md-12'>
                                 <div class='col-md-6'>
                                    <table width="100%">
                                      <tbody>
                                        <tr>
                                          <td class="goods_img"><sapn class="goods_cnt"></sapn> 
                                          <img src="/resources/inuimg.jpg" style="height:100px; width:100px; margin: 0px 0px 0px -10px;"></td>
                                          <td class="goods_infogrp">
                                                <h5 style='margin:20px 0px 0px -35px;'>이름</h6>
                                             <h5 style='margin:10px 0px 0px -35px;'>학과</h5>
                                             <h5 style='margin:10px 0px 10px -35px;'>학번</h5>
                                               <button class="btn btn-primary" type="button" id="add">추가</button>
                                          </td>
                                        </tr>
                                      </tbody>
                                    </table>
                                 </div>
                                 <div class='col-md-6'>
                                    <table width="100%">
                                      <tbody>
                                        <tr>
                                          <td class="goods_img"><sapn class="goods_cnt"></sapn> 
                                          <img src="/resources/inuimg.jpg" style="height:100px; width:100px; margin: 0px 0px 0px -10px;"></td>
                                          <td class="goods_infogrp">
                                             <h5 style='margin:20px 0px 0px -35px;'>이름</h6>
                                             <h5 style='margin:10px 0px 0px -35px;'>학과</h5>
                                             <h5 style='margin:10px 0px 10px -35px;'>학번</h5>
                                               <button class="btn btn-primary" type="button" id="add">추가</button>
                                          </td>
                                        </tr>
                                      </tbody>
                                    </table>
                                 </div>
                              </div>
                           </div>
                        </div>
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