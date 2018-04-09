
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/showPage/common/common.jsp" %>

<html>
<head>
    <title>Blog-singlepage</title>
    <link href="${path}/resources/css/front/index/style.css" rel='stylesheet' type='text/css' />
    <!-- Custom Theme files -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
</head>
<body>
<!---- container ---->
<!---- header ----->
<div class="header">
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
                <li ><a href="${path}/front/index/blog.rb">社区</a></li>
                <li ><a href="${path}/front/index/contact.rb">联系我们</a></li>
                <li class="active"><a href="${path}/mng/order/index.rb">订单管理</a></li>
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
            $("span.menu").click(function () {
                $(".top-nav ul").slideToggle("slow", function () {
                    // Animation complete.
                });
            });
        </script>
        <!----- script-for-nav ---->

    </div>
</div>
<!---- header ----->
<!------ about ---->
<%--<div class="services">
    <!--- bradcrumbs ---->
    <div class="breadcrumbs">
        <div class="container">
            <div class="breadcrumbs-left">
                <h1>Blog</h1>
            </div>
            <div class="breadcrumbs-right">
                <ul>
                    <li><a href="index.html">Home</a> <label>:</label></li>
                    <li>Blog</li>
                </ul>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <!--- bradcrumbs ---->
</div>--%>
<div class="blog">
    <div class="container">
        <div class="blog-left">
            <div class="blog-left-head">
                <span> </span>
                <h1>订单详情</h1>
            </div>
            <!---start-blog-single-page---->
            <div class="blog-single-page">
                <h3><a href="#">${order.orderName}</a></h3>
                <div class="blog-artical-grid-pic-info">
                    <div class="blog-artical-grid-pic">
                        <img src="${path}/resources/images/front/index/post-pic1.jpg" title="place-name">
                    </div>
                    <div class="blog-artical-grid-pic-info-admin">
                        <div class="blog-artical-grid-pic-info-admin-left">
                            <ul>
                                <li><a href="#"><img src="${path}/resources/images/front/index/admin-pic1.jpg" title="name-here"></a></li>
                                <li><p>Written by <a href="#">Garry Walt</a></p></li>
                            </ul>
                        </div>
                        <div class="blog-artical-grid-pic-info-admin-right">
                            <h6>19/<span>09</span></h6>
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
                <div class="blog-single-page-artical-info">
                    <div class="blog-single-page-artical-info-left">
                        <p class="para1"><span>订单</span>描述，订单信息展示</p>

                        <h3>订单描述</h3>
                        <p>联系方式：${order.phone}</p>
                        <p>要求时间：${order.requireTime}分钟</p>
                        <p>订单内容：${order.orderDescription}</p>
                        <p>地址：${order.address}</p>
                        <p>订单状态：<a ><c:if test="${order.orderStatus==1}">已接单</c:if>
                            <c:if test="${order.orderStatus==0}">未接单</c:if>
                            <c:if test="${order.orderStatus!=1 && order.orderStatus!=0}">不可处理订单</c:if>
                        </a></p>

                    </div>
                    <%--<div class="blog-single-page-artical-info-right">
                        <p>Donec sed odio dui. Nulla vicies vehicula ut id elit. Integer posuere erat a ante venenatis
                            dapibus posuere velit aliquet.Pie wafer wypas candy canes toffee. Cookie icing candy jelly
                            oat cake chupa chups bear claw topping applicake. Cookie danish dessert pie. Marshmallow
                            wypas dessert. Chocolate cake sweet cotton candy toffee topping lollipop. Gummi bears cake
                            chocolate cake tiramisu sesame snaps.</p>
                        <p class="spa-para">Plum liquorice cookie ice cream caramels oat cake dragee. Dessert cookie
                            faworki applicake apple pie. Gingerbread cotton candy icing ice cream applicake wafer powder
                            lemon drops.</p>
                        <h3>Vitae adipisicing elit libe</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                            labore et dolore magna aliqua. Duis aute irure dolor in reprehenderit in voluptate velit
                            esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,
                            sunt in culpa qui officia deserunt mollit anim id est laborum. Integer posuere erat a ante
                            venenatis dapibus posuere velit aliquet. Duis mollis, est non commodo luctus, nisi erat
                            porttitor ligula, eget lacinia odio sem nec elit ornare sem lacinia quam venenatis
                            vestibulum. Venenatis dapibus posuere velit aliquet. Duis mollis, est non commodo luctus,
                            nisi erat porttitor ligula, eget lacinia.</p>
                    </div>--%>
                    <div class="clearfix"></div>
                </div>
                <div class="clearfix"></div>
                <div class="blog-single-page-artical-comment-section">
                    <div class="comment-secion-head">
                        <span> </span>
                        <h2>评论<label>(5)</label></h2>
                    </div>
                    <div class="artical-comment-grid">
                        <div class="artical-comment-grid-left">
                            <a href="#"><img src="${path}/resources/images/front/index/admin-pic1.jpg" alt=""></a>
                        </div>
                        <div class="artical-comment-grid-info">
                            <ul>
                                <li class="p-name"><a href="">Endy Brown</a></li>
                                <li>8 September, 2013 at 8:24 am /</li>
                                <li class="p-replay"><a href="">REPLY </a></li>
                            </ul>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla tincidunt velit non libero
                                bibendum, vel suscipit ligula ullamcorper.</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <%--<div class="artical-comment-grid sub-comment">
                        <div class="artical-comment-grid-left">
                            <a href="#"><img src="${path}/resources/images/front/index/admin-pic2.jpg" alt=""></a>
                        </div>
                        <div class="artical-comment-grid-info">
                            <ul>
                                <li class="p-name"><a href="">Millana Watson</a></li>
                                <li>8 September, 2013 at 8:24 am /</li>
                                <li class="p-replay"><a href="">REPLY </a></li>
                            </ul>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla tincidunt velit non libero
                                bibendum, vel suscipit ligula ullamcorper.</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="artical-comment-grid sub-comment">
                        <div class="artical-comment-grid-left">
                            <a href="#"><img src="${path}/resources/images/front/index/admin-pic3.jpg" alt=""></a>
                        </div>
                        <div class="artical-comment-grid-info">
                            <ul>
                                <li class="p-name"><a href="">Andrew Haching</a></li>
                                <li>8 September, 2013 at 8:24 am /</li>
                                <li class="p-replay"><a href="">REPLY </a></li>
                            </ul>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla tincidunt velit non libero
                                bibendum, vel suscipit ligula ullamcorper.</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="artical-comment-grid">
                        <div class="artical-comment-grid-left">
                            <a href="#"><img src="${path}/resources/images/front/index/admin-pic4.jpg" alt=""></a>
                        </div>
                        <div class="artical-comment-grid-info">
                            <ul>
                                <li class="p-name"><a href="">Bruse Loome</a></li>
                                <li>8 September, 2013 at 8:24 am /</li>
                                <li class="p-replay"><a href="">REPLY </a></li>
                            </ul>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla tincidunt velit non libero
                                bibendum, vel suscipit ligula ullamcorper.</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>--%>
                    <div class="comment-secion-head">
                        <span> </span>
                        <h2>发表评论</h2>
                    </div>
                    <!----start-leavecomment---->
                    <div class="leave-comment">
                        <div class="table-form">
                            <form action="#" method="post" name="post_comment">
                                <div>
                                    <label>用户名<span>*</span></label>
                                    <input type="text" value=" ">
                                </div>
                                <div>
                                    <label>邮箱地址<span>*</span></label>
                                    <input type="text" value=" ">
                                </div>
                                <div>
                                    <label>评论内容<span>*</span></label>
                                    <textarea> </textarea>
                                </div>
                                <input type="submit" value="发表">
                            </form>

                        </div>
                    </div>
                    <!----//End-leavecomment---->
                </div>
            </div>
            <!---//End-blog-single-page---->
        </div>
        <div class="blog-right">
            <div class="blog-right-head">
                <span> </span>
                <h3>CaTEGORIES</h3>
            </div>
            <!----start-accordinatio-files--->
            <script src="js/vallenato.js" type="text/javascript" charset="utf-8"></script>
            <link rel="stylesheet" href="css/vallenato.css" type="text/css" media="screen" charset="utf-8">
            <!----start-accordinatio-files--->
            <div class="blog-right-accordinations">
                <h2 class="accordion-header active-header">Webdesign</h2>
                <div class="accordion-content open-content" style="width: 242px; display: block;">
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
                <%--<h2 class="accordion-header inactive-header">Logotypes</h2>
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
            </div>--%>
            <!----start-tags---->
            <div class="blog-right-head">
                <span> </span>
                <h3>标签</h3>
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
                            <img src="${path}/resources/images/front/index/admin-pic1.jpg" alt="">
                        </div>
                        <div class="blog-comment-grid-right">
                            <a href="#">Endy Brown</a>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="blog-comment-grid">
                        <div class="blog-comment-grid-left">
                            <img src="${path}/resources/images/front/index/admin-pic2.jpg" alt="">
                        </div>
                        <div class="blog-comment-grid-right">
                            <a href="#">Millana Watson</a>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="blog-comment-grid">
                        <div class="blog-comment-grid-left">
                            <img src="${path}/resources/images/front/index/admin-pic3.jpg" alt="">
                        </div>
                        <div class="blog-comment-grid-right">
                            <a href="#">Andrew Haching</a>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="blog-comment-grid">
                        <div class="blog-comment-grid-left">
                            <img src="${path}/resources/images/front/index/admin-pic4.jpg" alt="">
                        </div>
                        <div class="blog-comment-grid-right">
                            <a href="#">Bruse Loome</a>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>
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
<%--<div class="footer">
    <div class="top-footer">
        <div class="container">
            <div class="top-footer-grids">
                <div class="top-footer-grid">
                    <h3>Contact us</h3>
                    <ul class="address">
                        <li><span class="map-pin"> </span><label>55 Main St.Toronto, ON M1H 3A5</label></li>
                        <li><span class="mob"> </span>(416) 555-5252</li>
                        <li><span class="msg"> </span><a href="mailto:yourname@yoursite.com">hello@moto.com</a></li>
                    </ul>
                </div>
                <div class="top-footer-grid">
                    <h3>Latest posts</h3>
                    <ul class="latest-post">
                        <li><a href="#"><span class="icon1"> </span> Made With Love In Toronto</a></li>
                        <li><a href="#"><span class="icon2"> </span> Startup News &amp; Emerging Tech</a></li>
                        <li><a href="#"><span class="icon3"> </span> Bitcoin Will Soon Rule The World</a></li>
                        <li><a href="#"><span class="icon4"> </span> Wearable Technology On The Rise</a></li>
                        <li><a href="#"><span class="icon5"> </span> Learn Web Design In <label>30 Days!</label></a>
                        </li>
                    </ul>
                </div>
                <div class="top-footer-grid">
                    <h3>Latest tweets</h3>
                    <div class="tweet-box">
                        <div class="tweet-box-icon">
                            <span> </span>
                        </div>
                        <div class="tweet-box-info">
                            <p>Confucius: Life is really simple, but we insist on making it complicated. <span><a
                                    href="#">#famousquotes</a></span><label><a href="#"> 8 mins ago</a></label></p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="tweet-box">
                        <div class="tweet-box-icon">
                            <span> </span>
                        </div>
                        <div class="tweet-box-info">
                            <p>Confucius: Life is really simple, but we insist on making it complicated. <span><a
                                    href="#">#famousquotes</a></span><label><a href="#"> 8 mins ago</a></label></p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <!----start-bottom-footer---->
    <!----//End-bottom-footer---->
</div>--%>
    <%@ include file="/WEB-INF/showPage/common/footer.jsp" %>
    <div style="display:none">
    <script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script>
</div>
</div>
</body>
</html>
