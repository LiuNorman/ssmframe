<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/showPage/common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Blog</title>
<link href="${path}/resources/css/front/index/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
</head>
<body>
	
	<!---- container ---->
	<!---- header ----->
	<div class="header about-head">
		<div class="container">
			<!--- logo ----->
			<div class="logo">
				<a href="${path}/mng/index/index.rb"><span>D</span>RIVER</a>
			</div>
			<!--- logo ----->
			<!--- top-nav ----->
			<div class="top-nav">
				<span class="menu"> </span>
				<ul>
					<li ><a href="${path}/front/index/index.rb">首页</a></li>
					<%--<li><a href="${path}/front/index/contact.rb">关于我们</a></li>--%>
					<li ><a href="${path}/front/index/service.rb">服务范围</a></li>
					<li  class="active"><a href="${path}/front/index/blog.rb">社区</a></li>
					<li><a href="${path}/front/index/contact.rb">联系我们</a></li>
					<a  href="${path}/mng/index/login.rb" target="_parent">
					   <span style="font-size: 15px;color:white">登录</span>
				   </a>
				<a  href="${path}/mng/register/register.rb">
					   <span style="font-size: 15px;color:white">注册</span>
				   </a>
				</ul>
			</div>
			<div class="clearfix"></div>
			<!--- top-nav ----->
			<!----- script-for-nav ---->
			<script>
				$("span.menu").click(function() {
					$(".top-nav ul").slideToggle("slow", function() {
						// Animation complete.
					});
				});
			</script>
			<!----- script-for-nav ---->

		</div>
	</div>
	<!---- header ----->
	<!------ about ---->
	<div class="services">
		<!--- bradcrumbs ---->
		<div class="breadcrumbs">
			<div class="container">
				<div class="breadcrumbs-left">
					<h1>社区</h1>
				</div>
				<div class="breadcrumbs-right">
					<ul>
						<li><a href="index.html">Home</a> <label>:</label></li>
						<li>社区</li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<!--- bradcrumbs ---->
	</div>
	<div class="blog">
		<div class="container">
			<div class="blog-left">
				<div class="blog-left-head">
					<span> </span>
					<h1>Recent-posts</h1>
				</div>
				<div class="blog-artical-grids">
					<div class="blog-artical-grid">
						<h3>
							<a href="singlepage.html">Visualizing Tweets around
								Emmy-nominated shows</a>
						</h3>
						<div class="blog-artical-grid-pic-info">
							<div class="blog-artical-grid-pic">
								<img src="${path}/resources/images/front/index/post-pic1.jpg"
									title="place-name">
							</div>
							<div class="blog-artical-grid-pic-info-admin">
								<div class="blog-artical-grid-pic-info-admin-left">
									<ul>
										<li><a href="#"><img
												src="${path}/resources/images/front/index/admin-pic1.jpg"
												title="name-here"></a></li>
										<li><p>
												Written by <a href="#">Garry Walt</a>
											</p></li>
									</ul>
								</div>
								<div class="blog-artical-grid-pic-info-admin-right">
									<h6>
										19/<span>09</span>
									</h6>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
						<!----start-artical-tags---->
						<div class="artical-tags">
							<ul>
								<li><a href="#">Art</a></li>
								<li><a href="#">WebDesign</a></li>
								<li><a href="#">Logotypes</a></li>
								<div class="clearfix"></div>
							</ul>
						</div>
						<!----//End-artical-tags---->
						<!-----start-artical-destilas---->
						<div class="artical-details">
							<div class="artical-details-left">
								<p>
									Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Pellentesque sollicitudin felis vitae urna auctor sodales.
									Donec semper justo nec mauris aliquam mattis. <a href="#">Donec
										faucibus</a> orci quis tortor accumsan, in iaculis ipsum euismod.
									Phasellus consequat tempus ipsum, in porta magna ultricies
									cursus. Pellentesque scelerisque orci justo, non elementum
									purus lacinia id.
								</p>
							</div>
							<div class="artical-details-right">
								<p>
									Nunc id mi rutrum, sollicitudin elit eget, pretium risus.
									Quisque molestie nunc sed justo ornare, ipsum lorem mattis
									urna, eu feugiat augue justo quis risus. Sed vitae lacus
									dignissim, sodales justo sit amet, tristique justo. <a href="#">Proin
										eget erat</a> quis leo suscipit laoreet at ac diam. Integer eu
									interdum mauris. Aenean a aliquam turpis, eu tincidunt urna.
								</p>
							</div>
							<div class="clearfix"></div>
						</div>
						<!-----//End-artical-destilas---->
						<div class="artical-more-btn">
							<a href="singlepage.html"><span>ReadMore...</span></a>
						</div>
					</div>
					<!----//End-blog-artical-grid--->
					<div class="blog-artical-grid">
						<h3>
							<a href="singlepage.html">London Fashion Week drives more
								buzz than ever on Twitter</a>
						</h3>
						<div class="blog-artical-grid-pic-info">
							<div class="blog-artical-grid-pic">
								<img src="${path}/resources/images/front/index/post-pic2.jpg"
									title="place-name">
							</div>
							<div class="blog-artical-grid-pic-info-admin">
								<div class="blog-artical-grid-pic-info-admin-left">
									<ul>
										<li><a href="#"><img
												src="${path}/resources/images/front/index/admin-pic4.jpg"
												title="name-here"></a></li>
										<li><p>
												Written by <a href="#">Garry Walt</a>
											</p></li>
									</ul>
								</div>
								<div class="blog-artical-grid-pic-info-admin-right">
									<h6>
										19/<span>09</span>
									</h6>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
						<!----start-artical-tags---->
						<div class="artical-tags">
							<ul>
								<li><a href="#">Art</a></li>
								<li><a href="#">WebDesign</a></li>
								<li><a href="#">Logotypes</a></li>
								<div class="clearfix"></div>
							</ul>
						</div>
						<!----//End-artical-tags---->
						<!-----start-artical-destilas---->
						<div class="artical-details">
							<div class="artical-details-left">
								<p>
									Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Pellentesque sollicitudin felis vitae urna auctor sodales.
									Donec semper justo nec mauris aliquam mattis. <a href="#">Donec
										faucibus</a> orci quis tortor accumsan, in iaculis ipsum euismod.
									Phasellus consequat tempus ipsum, in porta magna ultricies
									cursus. Pellentesque scelerisque orci justo, non elementum
									purus lacinia id.
								</p>
							</div>
							<div class="artical-details-right">
								<p>
									Nunc id mi rutrum, sollicitudin elit eget, pretium risus.
									Quisque molestie nunc sed justo ornare, ipsum lorem mattis
									urna, eu feugiat augue justo quis risus. Sed vitae lacus
									dignissim, sodales justo sit amet, tristique justo. <a href="#">Proin
										eget erat</a> quis leo suscipit laoreet at ac diam. Integer eu
									interdum mauris. Aenean a aliquam turpis, eu tincidunt urna.
								</p>
							</div>
							<div class="clearfix"></div>
						</div>
						<!-----//End-artical-destilas---->
						<div class="artical-more-btn">
							<a href="singlepage.html"><span>ReadMore...</span></a>
						</div>
					</div>
					<!----//End-blog-artical-grid--->
					<div class="blog-artical-grid">
						<h3>
							<a href="#">#RockInRio 2013</a>
						</h3>
						<div class="blog-artical-grid-pic-info">
							<div class="blog-artical-grid-pic">
								<img src="${path}/resources/images/front/index/post-pic3.jpg"
									title="place-name">
							</div>
							<div class="blog-artical-grid-pic-info-admin">
								<div class="blog-artical-grid-pic-info-admin-left">
									<ul>
										<li><a href="#"><img
												src="${path}/resources/images/front/index/admin-pic2.jpg"
												title="name-here"></a></li>
										<li><p>
												Written by <a href="#">Garry Walt</a>
											</p></li>
									</ul>
								</div>
								<div class="blog-artical-grid-pic-info-admin-right">
									<h6>
										19/<span>09</span>
									</h6>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
						<!----start-artical-tags---->
						<div class="artical-tags">
							<ul>
								<li><a href="#">Art</a></li>
								<li><a href="#">WebDesign</a></li>
								<li><a href="#">Logotypes</a></li>
								<div class="clearfix"></div>
							</ul>
						</div>
						<!----//End-artical-tags---->
						<!-----start-artical-destilas---->
						<div class="artical-details">
							<div class="artical-details-left">
								<p>
									Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Pellentesque sollicitudin felis vitae urna auctor sodales.
									Donec semper justo nec mauris aliquam mattis. <a href="#">Donec
										faucibus</a> orci quis tortor accumsan, in iaculis ipsum euismod.
									Phasellus consequat tempus ipsum, in porta magna ultricies
									cursus. Pellentesque scelerisque orci justo, non elementum
									purus lacinia id.
								</p>
							</div>
							<div class="artical-details-right">
								<p>
									Nunc id mi rutrum, sollicitudin elit eget, pretium risus.
									Quisque molestie nunc sed justo ornare, ipsum lorem mattis
									urna, eu feugiat augue justo quis risus. Sed vitae lacus
									dignissim, sodales justo sit amet, tristique justo. <a href="#">Proin
										eget erat</a> quis leo suscipit laoreet at ac diam. Integer eu
									interdum mauris. Aenean a aliquam turpis, eu tincidunt urna.
								</p>
							</div>
							<div class="clearfix"></div>
						</div>
						<!-----//End-artical-destilas---->
						<div class="artical-more-btn">
							<a href="#"><span>ReadMore...</span></a>
						</div>
					</div>
					<!----//End-blog-artical-grid--->
					<div class="blog-artical-grid">
						<h3>
							<a href="singlepage.html">Vine videos that grew on us - Sept
								13</a>
						</h3>
						<div onclick="location.href='singlepage.html';"
							class="blog-artical-grid-pic-info">
							<div class="blog-artical-grid-pic">
								<img src="${path}/resources/images/front/index/post-pic1.jpg"
									title="place-name">
							</div>
							<div class="blog-artical-grid-pic-info-admin">
								<div class="blog-artical-grid-pic-info-admin-left">
									<ul>
										<li><a href="#"><img
												src="${path}/resources/images/front/index/admin-pic3.jpg"
												title="name-here"></a></li>
										<li><p>
												Written by <a href="#">Garry Walt</a>
											</p></li>
									</ul>
								</div>
								<div class="blog-artical-grid-pic-info-admin-right">
									<h6>
										19/<span>09</span>
									</h6>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
						<!----start-artical-tags---->
						<div class="artical-tags">
							<ul>
								<li><a href="#">Art</a></li>
								<li><a href="#">WebDesign</a></li>
								<li><a href="#">Logotypes</a></li>
								<div class="clearfix"></div>
							</ul>
						</div>
						<!----//End-artical-tags---->
						<!-----start-artical-destilas---->
						<div class="artical-details">
							<div class="artical-details-left">
								<p>
									Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Pellentesque sollicitudin felis vitae urna auctor sodales.
									Donec semper justo nec mauris aliquam mattis. <a href="#">Donec
										faucibus</a> orci quis tortor accumsan, in iaculis ipsum euismod.
									Phasellus consequat tempus ipsum, in porta magna ultricies
									cursus. Pellentesque scelerisque orci justo, non elementum
									purus lacinia id.
								</p>
							</div>
							<div class="artical-details-right">
								<p>
									Nunc id mi rutrum, sollicitudin elit eget, pretium risus.
									Quisque molestie nunc sed justo ornare, ipsum lorem mattis
									urna, eu feugiat augue justo quis risus. Sed vitae lacus
									dignissim, sodales justo sit amet, tristique justo. <a href="#">Proin
										eget erat</a> quis leo suscipit laoreet at ac diam. Integer eu
									interdum mauris. Aenean a aliquam turpis, eu tincidunt urna.
								</p>
							</div>
							<div class="clearfix"></div>
						</div>
						<!-----//End-artical-destilas---->
						<div class="artical-more-btn">
							<a href="singlepage.html"><span>ReadMore...</span></a>
						</div>
					</div>
					<!----//End-blog-artical-grid--->
				</div>
				<div class="blog-artical-pagenate">
					<ul>
						<li class="frist"><span> </span></li>
						<li class="active"><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li class="more-art"><span> </span></li>
						<li class="last"><span> </span></li>
					</ul>
				</div>
			</div>
			<div class="blog-right">
				<div class="blog-right-head">
					<span> </span>
					<h3>CaTEGORIES</h3>
				</div>
				<!----start-accordinatio-files--->
				<script src="${path}/resources/js/front/blog/vallenato.js"
					type="text/javascript" charset="utf-8"></script>
				<link rel="stylesheet"
					href="${path}/resources/css/front/blog/vallenato.css"
					type="text/css" media="screen" charset="utf-8"></link>
				<!----start-accordinatio-files--->
				<div class="blog-right-accordinations">
					<h2 class="accordion-header active-header">Webdesign</h2>
					<div class="accordion-content open-content"
						style="width: 242px; display: block;">
						<ul>
							<li><a href="#">adipiscing elit.</a></li>
							<li><a href="#">consectetur </a></li>
							<li><a href="#">Pellentesque </a></li>
							<li><a href="#">sollicitudin felis </a></li>
						</ul>
					</div>
					<h2 class="accordion-header inactive-header">Art design</h2>
					<div class="accordion-content" style="width: 242px;">
						<ul>
							<li><a href="#">adipiscing elit.</a></li>
							<li><a href="#">consectetur </a></li>
							<li><a href="#">Pellentesque </a></li>
							<li><a href="#">sollicitudin felis </a></li>
						</ul>
					</div>
					<h2 class="accordion-header inactive-header">Logotypes</h2>
					<div class="accordion-content" style="width: 242px;">
						<ul>
							<li><a href="#">adipiscing elit.</a></li>
							<li><a href="#">consectetur </a></li>
							<li><a href="#">Pellentesque </a></li>
							<li><a href="#">sollicitudin felis </a></li>
						</ul>
					</div>
					<h2 class="accordion-header inactive-header">Photography</h2>
					<div class="accordion-content" style="width: 242px;">
						<ul>
							<li><a href="#">adipiscing elit.</a></li>
							<li><a href="#">consectetur </a></li>
							<li><a href="#">Pellentesque </a></li>
							<li><a href="#">sollicitudin felis </a></li>
						</ul>
					</div>
					<h2 class="accordion-header inactive-header">Videos</h2>
					<div class="accordion-content" style="width: 242px;">
						<ul>
							<li><a href="#">adipiscing elit.</a></li>
							<li><a href="#">consectetur </a></li>
							<li><a href="#">Pellentesque </a></li>
							<li><a href="#">sollicitudin felis </a></li>
						</ul>
					</div>
					<h2 class="accordion-header inactive-header">Other</h2>
					<div class="accordion-content" style="width: 242px;">
						<ul>
							<li><a href="#">adipiscing elit.</a></li>
							<li><a href="#">consectetur </a></li>
							<li><a href="#">Pellentesque </a></li>
							<li><a href="#">sollicitudin felis </a></li>
						</ul>
					</div>
				</div>
				<!----start-tags---->
				<div class="blog-right-head">
					<span> </span>
					<h3>Tag's</h3>
				</div>
				<div class="tags-for">
					<ul>
						<li><a href="#">Art</a></li>
						<li><a href="#">WebDesign</a></li>
						<li><a href="#">Logotypes</a></li>
						<li><a href="#">Photo</a></li>
						<li><a href="#">Video</a></li>
						<li><a href="#">Other</a></li>
						<li><a href="#">WEb</a></li>
						<div class="clearfix"></div>
					</ul>
				</div>
				<!----//End-tags---->
				<!----start-comments---->
				<div class="blog-comments">
					<div class="blog-right-head">
						<span> </span>
						<h3>Last Comments</h3>
					</div>
					<div class="blog-comment-grids">
						<div class="blog-comment-grid">
							<div class="blog-comment-grid-left">
								<img src="${path}/resources/images/front/index/admin-pic1.jpg"
									alt="">
							</div>
							<div class="blog-comment-grid-right">
								<a href="#">Endy Brown</a>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								</p>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="blog-comment-grid">
							<div class="blog-comment-grid-left">
								<img src="${path}/resources/images/front/index/admin-pic2.jpg"
									alt="">
							</div>
							<div class="blog-comment-grid-right">
								<a href="#">Millana Watson</a>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								</p>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="blog-comment-grid">
							<div class="blog-comment-grid-left">
								<img src="${path}/resources/images/front/index/admin-pic3.jpg"
									alt="">
							</div>
							<div class="blog-comment-grid-right">
								<a href="#">Andrew Haching</a>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								</p>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="blog-comment-grid">
							<div class="blog-comment-grid-left">
								<img src="${path}/resources/images/front/index/admin-pic4.jpg"
									alt="">
							</div>
							<div class="blog-comment-grid-right">
								<a href="#">Bruse Loome</a>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								</p>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<!----start-Comments---->
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!---- container ---->
	<%@ include file="/WEB-INF/showPage/common/footer.jsp" %>
	<div style="display: none">
		<script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540'
			language='JavaScript' charset='gb2312'></script>
	</div>
</body>
</html>

