<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE jsp PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Lookz Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!--webfont-->
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
</head>
<body>
<div class="wrap">	
   <div class="container">
        <div class="header_top">
		  <div class="col-sm-9 h_menu4">
				<ul class="megamenu skyblue">
					  <li class="active grid"><a class="color8" href="index.jsp">首页</a></li>	
				      <li><a class="color1" href="men.jsp">零食饮料</a>
					</li>
				    <li class="grid"><a class="color2" href="#">新鲜水果</a></li>
				<li><a class="color4" href="#">寂寞</a></li>				
				<li><a class="color6" href="#">关于我们</a></li>
			  </ul> 
			</div>
			<div class="col-sm-3 header-top-right">
   			    <div class="register-info">
				    <ul>
						<li><a href="login.jsp">登录/注册</a></li>
					</ul>
			    </div>
				<div class="clearfix"> </div>
   			 </div>
			
   			 <div class="clearfix"> </div>
	</div>

    <div class="header_bootm">
		<div class="col-sm-4 span_1">
		  <div class="logo">
			<a href="index.jsp"><img src="images/logo.png" alt=""/></a>
		  </div>
		</div>
		<div class="col-sm-8 row_2">
		  <div class="header_bottom_right">
			<div class="search">
			  <input type="text" value="搜索你想要的零食" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '搜索你想要的零食';}">
			  <input type="submit" value="">
	  		</div>
	  		<div class="clearfix"> </div>
		   </div>
		</div>
		 <div class="clearfix"></div>
	</div>
	<div class="grid_1">
		<div class="col-md-3 banner_left">
			<img src="images/pic1.png" class="img-responsive" alt=""/>
			<div class="banner_desc">
			<form action="">
				<h1 >最热商品</h1>
				<input type="text" name="coke" value="${list1.name}" style="border: none;background-color:#f3f3f3; ">
				<h5>3元</h5>
			    <input type="submit" class="btn1 btn4 btn-1 btn1-1b" value="添加到购物车">
			    </form>
			</div>
		</div>
		<div class="col-md-9 banner_right">
			 <!-- FlexSlider -->
              <section class="slider">
				  <div class="flexslider">
					<ul class="slides">
						<li><img src="images/banner.jpg" alt=""/></li>
						<li><img src="images/banner1.jpg" alt=""/></li>
					</ul>
				  </div>
	          </section>
              <!-- FlexSlider -->
		</div>
		<div class="clearfix"></div>
	</div>
<div class="content" style="height: 900px;">
  <div class="content_box">
	<ul class="grid_2">
		<a href="single.jsp"><li><img src="images/pic2.png" class="img-responsive" alt=""/>
			<span class="btn5">10元</span>
			<p>红旗渠</p>
		</li></a>
		<a href="single.jsp"><li><img src="images/pic3.png" class="img-responsive" alt=""/>
			<span class="btn5">1元</span>
			<p>双汇玉米脆皮肠</p>
		</li></a>
		<a href="single.jsp"><li><img src="images/pic4.png" class="img-responsive" alt=""/>
			<span class="btn5">3元</span>
			<p>卫龙大面筋</p>
		</li></a>
		<a href="single.jsp"><li><img src="images/pic5.png" class="img-responsive" alt=""/>
			<span class="btn5">5元</span>
			<p>康师傅老坛酸菜面</p>
		</li></a>
		<a href="single.jsp"><li class="last1"><img src="images/pic6.png" class="img-responsive" alt=""/>
			<span class="btn5">1.2</span>
			<p>乡巴佬卤蛋</p>
		</li></a>
		<div class="clearfix"> </div>
	</ul>
	<div class="grid_3">
		<div class="col-md-6 box_2">
			<div class="section_group"> 
		      	<div class="col_1_of_2 span_1_of_2">
		      		<img src="images/pic7.jpg" class="img-responsive" alt=""/>
		        </div>
                <div class="col_1_of_2 span_1_of_2">
		      		<img src="images/pic8.jpg" class="img-responsive" alt=""/>
		        </div>
                <div class="clearfix"> </div>
            </div>
		</div>
		<div class="col-md-6">
			<div class="box_3">
			  <div class="col_1_of_2 span_1_of_2 span_3">
		      		<h3>双汇香辣香脆肠</h3>
                  <h4>1元</h4>
                  
                  <a href="cart.jsp" class="btn1 btn6 btn-1 btn1-1b">加入购物车</a>
		        </div>
                <div class="col_1_of_2 span_1_of_2 span_4">
                   <div class="span_5">
		      		 <img src="images/pic9.png" class="img-responsive" alt=""/>
		      	    </div>
		        </div>
                <div class="clearfix"> </div>
            </div>
		</div>
		<div class="clearfix"> </div>
	</div>
	
   </div>
</div>	
<link href="css/flexslider.css" rel='stylesheet' type='text/css' />
							  <script defer src="js/jquery.flexslider.js"></script>
							  <script type="text/javascript">
								$(function(){
								  SyntaxHighlighter.all();
								});
								$(window).load(function(){
								  $('.flexslider').flexslider({
									animation: "slide",
									start: function(slider){
									  $('body').removeClass('loading');
									}
								  });
								});
							  </script>
</body>
</html>