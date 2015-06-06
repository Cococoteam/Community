<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html"; charset="utf-8">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <link href='./stylesheets/style.css' rel='stylesheet' >
    <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <!-- jQuery -->
    <script src="/resources/js/jquery/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="/resources/js/bootstrap.min.js"></script>
    <script src="/resources/js/common.js"></script>
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
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href=#">A</a></li>
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">B</a></li>
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">C</a></li>
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">D</a></li>
                                    </ul>
                                 </li></center>
                                <li role="presentation" style='margin:20px 0px 0px 0px;'><a href="/search"><center>친 구  찾 기</center></a></li>
                                <center><li role="presentation" style='margin:20px 0px 0px 0px;'><a href="#">친 구  요 청</a></li></center>
                                <center><li role="presentation" style='margin:20px 0px 0px 0px;'><a href="#">메 세 지</a></li></center>
                                <li role="presentation" style='margin:20px 0px 0px 0px;' ><a herf="#" data-toggle="modal" data-target="#myModal"><center>환 경 설 정</center></a></li>
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
                <div class="panel-heading">인천대학교 친구들을 찾아줍니다!</div>
                    <div class="panel-body" style='height:100%;'>
                        <div class='col-md-12'>
                            <div class='col-md-4'>
                                <div class="panel panel-default">
                                    <div class="panel-heading">성별</div>
                                    <div class="panel-body">
                                        <div class="radio" style='margin: 10px 0px 0px 0px;'>
                                            <label>
                                            <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                                            남자
                                            </label>
                                        </div>
                                        <div class="radio" style='margin: 10px 0px 0px 0px;'>
                                            <label>
                                            <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                                                여자
                                            </label>
                                        </div>
                                        <div class="radio" style='margin: 10px 0px 0px 0px;'>
                                            <label>
                                            <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                                            무관
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">학과</div>
                                    <div class="panel-body">
                                        <div class="radio" style='margin: 10px 0px 0px 0px;'>
                                            <label>
                                            <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                                            같은 과
                                            </label>
                                        </div>
                                        <div class="radio" style='margin: 10px 0px 0px 0px;'>
                                            <label>
                                            <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                                            같은 과 제외
                                            </label>
                                        </div>
                                        <div class="radio" style='margin: 10px 0px 0px 0px;'>
                                            <label>
                                            <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
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
                                            <input type="checkbox" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                                            A
                                            </label>
                                        </div>
                                        <div class="checkbox" style='margin: 10px 0px 0px 0px;'>
                                            <label>
                                            <input type="checkbox" name="optionsRadios" id="optionsRadios2" value="option2">
                                            B
                                            </label>
                                        </div>
                                        <div class="checkbox" style='margin: 10px 0px 0px 0px;'>
                                            <label>
                                            <input type="checkbox" name="optionsRadios" id="optionsRadios2" value="option2">
                                            C
                                            </label>
                                        </div>
                                        <div class="checkbox" style='margin: 10px 0px 0px 0px;'>
                                            <label>
                                            <input type="checkbox" name="optionsRadios" id="optionsRadios2" value="option2">
                                            D
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <button type="button" class="btn btn-primary" style='width:100%; margin: 2px 0px 0px 0px;'>찾기</button>
                            </div>
                            <div class='col-md-8'>
                                <div class="panel panel-default" style='margin:0% 0% 0% 0%; height:100%;'>
                                    <div class="panel-body">
                                        찾아준 친구목록
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>          
        </div>
    </div>

</body>
<script>
</script>
</html>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>