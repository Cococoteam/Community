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
                            <h3>이름</h3>
                            <button type="submit" class="btn btn-default" style='width:100%;'>내시간표</button>
                            <div class="btn-group" >
                              <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false" >
                                친구목록 <span class="caret"></span>
                              </button>
                              <ul class="dropdown-menu" role="menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li class="divider"></li>
                              </ul>
                            </div>
                            <button type="submit" class="btn btn-default" style='width:100%;'>게시판</button>
                            <div class="btn-group" >
                              <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false" >
                                강의 <span class="caret"></span>
                              </button>
                              <ul class="dropdown-menu" role="menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li class="divider"></li>
                              </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class='col-md-9'>
            <div class="row">
                <div class="col-sm-10 col-md-12" style=' margin: 0px 0px 0px -10px;'>
                    <div class="thumbnail" style='height:50px;'>
                        <div class="caption">
                            <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                            <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                            <span class="glyphicon glyphicon-comment" aria-hidden="true"></span>
                            <span class="glyphicon glyphicon-bookmark" aria-hidden="true"></span>
                            <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
                        </div>
                    </div>
                </div>
            </div>  
        </div>
        <div class='col-md-9'>
            <div class="row">
                <div class="col-sm-10 col-md-12" style='margin: -10px 0px 0px -10px;'>
                    <div class="thumbnail" style='height:50px;'>
                        <div class="caption">
                            <p>강의 : </p>
                            <p>교수님 : </p>
                            <p>강의시간 : </p>
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