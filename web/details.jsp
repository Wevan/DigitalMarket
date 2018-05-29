<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Details</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Gretong Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel='stylesheet' type='text/css'/>
    <!-- Custom CSS -->
    <link href="css/style.css" rel='stylesheet' type='text/css'/>
    <!-- Graph CSS -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- jQuery -->
    <link href='https://fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet'
          type='text/css'/>
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <!-- lined-icons -->
    <link rel="stylesheet" href="css/icon-font.min.css" type='text/css'/>
    <script src="js/amcharts.js"></script>
    <script src="js/serial.js"></script>
    <script src="js/light.js"></script>
    <!-- //lined-icons -->
    <script src="js/jquery-1.10.2.min.js"></script>
    <!--pie-chart--->
    <script src="js/pie-chart.js" type="text/javascript"></script>
    <script type="text/javascript">

        $(document).ready(function () {
            $('#demo-pie-1').pieChart({
                barColor: '#3bb2d0',
                trackColor: '#eee',
                lineCap: 'round',
                lineWidth: 8,
                onStep: function (from, to, percent) {
                    $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                }
            });

            $('#demo-pie-2').pieChart({
                barColor: '#fbb03b',
                trackColor: '#eee',
                lineCap: 'butt',
                lineWidth: 8,
                onStep: function (from, to, percent) {
                    $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                }
            });

            $('#demo-pie-3').pieChart({
                barColor: '#ed6498',
                trackColor: '#eee',
                lineCap: 'square',
                lineWidth: 8,
                onStep: function (from, to, percent) {
                    $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                }
            });


        });

    </script>
</head>
<body>
<div class="page-container">
    <!--/content-inner-->
    <div class="left-content">
        <div class="inner-content">
            <!-- header-starts -->
            <div class="header-section">
                <!-- top_bg -->
                <div class="top_bg">

                    <div class="header_top">
                        <div class="top_right">
                            <ul>
                                <li><a href="contact.html">帮助</a></li>
                                |
                                <li><a href="contact.html">联系我们</a></li>
                                |
                                <li><a href="checkout.jsp">物流</a></li>
                            </ul>
                        </div>
                        <div class="top_left">
                            <h2><span></span> Call us : 155 3661 6387</h2>
                        </div>
                        <div class="clearfix"></div>
                    </div>

                </div>
                <div class="clearfix"></div>
                <!-- /top_bg -->
            </div>
            <div class="header_bg">

                <div class="header">
                    <div class="head-t">
                        <div class="logo">
                            <a href="index.jsp"><img src="images/logo.png" class="img-responsive" alt=""> </a>
                        </div>
                        <!-- start header_right -->
                        <div class="header_right">
                            <div class="rgt-bottom">
                                <div class="log">
                                    <div class="login">
                                        <div id="loginContainer"><a id="loginButton" class=""><span>Login</span></a>
                                            <div id="loginBox" style="display: none;">
                                                <form id="loginForm">
                                                    <fieldset id="body">
                                                        <fieldset>
                                                            <label for="email">Email Address</label>
                                                            <input type="text" name="email" id="email">
                                                        </fieldset>
                                                        <fieldset>
                                                            <label for="password">Password</label>
                                                            <input type="password" name="password" id="password">
                                                        </fieldset>
                                                        <input type="submit" id="login" value="Sign in">
                                                        <label for="checkbox"><input type="checkbox" id="checkbox"> <i>Remember
                                                            me</i></label>
                                                    </fieldset>
                                                    <span><a href="#">Forgot your password?</a></span>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="reg">
                                    <a href="register.html">REGISTER</a>
                                </div>
                                <div class="cart box_1">
                                    <a href="checkout.jsp">
                                        <h3><span class="simpleCart_total">$0.00</span> (<span id="simpleCart_quantity"
                                                                                               class="simpleCart_quantity">0</span>
                                            items)<img src="images/bag.png" alt=""></h3>
                                    </a>
                                    <p><a href="javascript:;" class="simpleCart_empty">(empty card)</a></p>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="create_btn">
                                    <a href="checkout.jsp">CHECKOUT</a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="search">
                                <form>
                                    <input type="text" value="" placeholder="search...">
                                    <input type="submit" value="">
                                </form>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>

            </div>
            <!-- //header-ends -->

            <!--content-->
            <div class="content">
                <div class="women_main">
                    <!-- start content -->
                    <div class="row single">
                        <div class="det">
                            <div class="single_left">
                                <div class="grid images_3_of_2">
                                    <div class="flexslider">
                                        <!-- FlexSlider -->
                                        <script src="js/imagezoom.js"></script>
                                        <script defer="" src="js/jquery.flexslider.js"></script>
                                        <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen">

                                        <script>
                                            // Can also be used with $(document).ready()
                                            $(window).load(function () {
                                                $('.flexslider').flexslider({
                                                    animation: "slide",
                                                    controlNav: "thumbnails"
                                                });
                                            });
                                        </script>
                                        <!-- //FlexSlider-->


                                        <div class="flex-viewport" style="overflow: hidden; position: relative;">
                                            <ul class="slides"
                                                style="width: 1200%; transition-duration: 0.6s; transform: translate3d(-864px, 0px, 0px);">
                                                <li data-thumb="${sessionScope.product.image}" class="clone" aria-hidden="true"
                                                    style="width: 288px; float: left; display: block;">
                                                    <div class="thumb-image">
                                                        <img src="${sessionScope.product.image}" data-imagezoom="true"
                                                                                  class="img-responsive" draggable="false">
                                                    </div>
                                                </li>
                                                <li data-thumb="${sessionScope.product.image}" class=""
                                                    style="width: 288px; float: left; display: block;">
                                                    <div class="thumb-image">
                                                        <img src="${sessionScope.product.image}" data-imagezoom="true"
                                                             class="img-responsive" draggable="false">
                                                    </div>
                                                </li>
                                                <li data-thumb="${sessionScope.product.image}"
                                                    style="width: 288px; float: left; display: block;" class="">
                                                    <div class="thumb-image">
                                                        <img src="${sessionScope.product.image}" data-imagezoom="true"
                                                             class="img-responsive" draggable="false">
                                                    </div>
                                                </li>
                                                <li data-thumb="images/d3.jpg"
                                                    style="width: 288px; float: left; display: block;"
                                                    class="flex-active-slide">
                                                    <div class="thumb-image"><img src="images/d3.jpg" data-imagezoom="true"
                                                              class="img-responsive" draggable="false"></div>
                                                </li>

                                            </ul>
                                        </div>
                                        <ul class="flex-direction-nav">
                                            <li class="flex-nav-prev"><a class="flex-prev" href="#">Previous</a></li>
                                            <li class="flex-nav-next"><a class="flex-next" href="#">Next</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="desc1 span_3_of_2">
                                    <h3>${sessionScope.product.pname}</h3>
                                    <span class="brand">卖家号: <a href="#">${sessionScope.product.sid} </a></span>
                                    <br>
                                    <span class="code">商品价格: ${sessionScope.product.price}</span>
                                    <p>商家产品经过平台验证，请放心购买！</p>
                                    <div class="price">
                                        <span class="text">单价:</span>
                                        <span class="price-new">￥${sessionScope.product.price} RMB</span><span class="price-old">￥ 100.00</span>
                                        <span class="price-tax">邮费: $ 6.00</span><br>
                                    </div>
                                    <%--<div class="det_nav1">--%>
                                        <%--<h4>留言 :</h4>--%>
                                        <%--&lt;%&ndash;<form>&ndash;%&gt;--%>
                                            <%--&lt;%&ndash;<textarea placeholder="请输入你需要的产品型号，型号于下方产品简介中包含"></textarea>&ndash;%&gt;--%>
                                        <%--&lt;%&ndash;</form>&ndash;%&gt;--%>
                                        <%--&lt;%&ndash;<div class=" sky-form col col-4">&ndash;%&gt;--%>
                                            <%--&lt;%&ndash;<ul>&ndash;%&gt;--%>
                                                <%--&lt;%&ndash;<li><label class="checkbox"><input type="checkbox"&ndash;%&gt;--%>
                                                                                   <%--&lt;%&ndash;name="checkbox"><i></i>L</label></li>&ndash;%&gt;--%>
                                                <%--&lt;%&ndash;<li><label class="checkbox"><input type="checkbox"&ndash;%&gt;--%>
                                                                                   <%--&lt;%&ndash;name="checkbox"><i></i>S</label></li>&ndash;%&gt;--%>
                                                <%--&lt;%&ndash;<li><label class="checkbox"><input type="checkbox"&ndash;%&gt;--%>
                                                                                   <%--&lt;%&ndash;name="checkbox"><i></i>M</label></li>&ndash;%&gt;--%>
                                                <%--&lt;%&ndash;<li><label class="checkbox"><input type="checkbox"&ndash;%&gt;--%>
                                                                                   <%--&lt;%&ndash;name="checkbox"><i></i>XL</label>&ndash;%&gt;--%>
                                                <%--&lt;%&ndash;</li>&ndash;%&gt;--%>
                                            <%--&lt;%&ndash;</ul>&ndash;%&gt;--%>
                                        <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                                    <%--</div>--%>
                                    <div class="btn_form">
                                        <a href="checkout.jsp">buy</a>
                                    </div>
                                    <a href="#"><span>login to save in wishlist </span></a>

                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="single-bottom1">
                                <h6>Details</h6>
                                <p class="prod-desc">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam
                                    nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut
                                    wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis
                                    nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in
                                    hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat
                                    nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit
                                    praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam
                                    liber tempor cum soluta nobis eleifend option</p>
                            </div>
                            <div class="single-bottom2">
                                <h6>Related Products</h6>
                                <div class="product">
                                    <div class="product-desc">
                                        <div class="product-img">
                                            <img src="images/w8.jpg" class="img-responsive " alt="">
                                        </div>
                                        <div class="prod1-desc">
                                            <h5><a class="product_link" href="#">Excepteur sint</a></h5>
                                            <p class="product_descr"> Vivamus ante lorem, eleifend nec interdum non,
                                                ullamcorper et arcu. Class aptent taciti sociosqu ad litora torquent per
                                                conubia nostra, per inceptos himenaeos. </p>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>

                                    <div class="clearfix"></div>
                                </div>
                                <div class="product">
                                    <div class="product-desc">
                                        <div class="product-img">
                                            <img src="images/w10.jpg" class="img-responsive " alt="">
                                        </div>
                                        <div class="prod1-desc">
                                            <h5><a class="product_link" href="#">Excepteur sint</a></h5>
                                            <p class="product_descr"> Vivamus ante lorem, eleifend nec interdum non,
                                                ullamcorper et arcu. Class aptent taciti sociosqu ad litora torquent per
                                                conubia nostra, per inceptos himenaeos. </p>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>

                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end content -->
                    <div class="foot-top">

                        <div class="col-md-6 s-c">
                            <li>
                                <div class="fooll">
                                    <h1>follow us on</h1>
                                </div>
                            </li>
                            <li>
                                <div class="social-ic">
                                    <ul>
                                        <li><a href="#"><i class="facebok"> </i></a></li>
                                        <li><a href="#"><i class="twiter"> </i></a></li>
                                        <li><a href="#"><i class="goog"> </i></a></li>
                                        <li><a href="#"><i class="be"> </i></a></li>
                                        <div class="clearfix"></div>
                                    </ul>
                                </div>
                            </li>
                            <div class="clearfix"></div>
                        </div>
                        <div class="col-md-6 s-c">
                            <div class="stay">
                                <div class="stay-left">
                                    <form>
                                        <input type="text" placeholder="Enter your email" required="">
                                    </form>
                                </div>
                                <div class="btn-1">
                                    <form>
                                        <input type="submit" value="join">
                                    </form>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="clearfix"></div>

                    </div>
                    <div class="footer">
                        <div class="col-md-3 cust">
                            <h4>CUSTOMER CARE</h4>
                            <li><a href="contact.html">Help Center</a></li>
                            <li><a href="faq.html">FAQ</a></li>
                            <li><a href="details.jsp">How To Buy</a></li>
                            <li><a href="checkout.jsp">Delivery</a></li>
                        </div>
                        <div class="col-md-2 abt">
                            <h4>ABOUT US</h4>
                            <li><a href="products.html">Our Stories</a></li>
                            <li><a href="products.html">Press</a></li>
                            <li><a href="faq.html">Career</a></li>
                            <li><a href="contact.html">Contact</a></li>
                        </div>
                        <div class="col-md-2 myac">
                            <h4>MY ACCOUNT</h4>
                            <li><a href="register.html">Register</a></li>
                            <li><a href="checkout.jsp">My Cart</a></li>
                            <li><a href="checkout.jsp">Order History</a></li>
                            <li><a href="details.jsp">Payment</a></li>
                        </div>
                        <div class="col-md-5 our-st">
                            <div class="our-left">
                                <h4>OUR STORES</h4>
                            </div>

                            <li><i class="add"> </i>Mark peter</li>
                            <li><i class="phone"> </i>012-586987</li>
                            <li><a href="mailto:info@example.com"><i class="mail"> </i>info@sitename.com </a></li>
                        </div>
                        <div class="clearfix"></div>
                        <p>Copyright &copy; 2016.Company name All rights reserved.More Templates <a
                                href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a
                                href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
                    </div>
                </div>

            </div>
            <!--content-->
        </div>
    </div>
    <!--//content-inner-->
    <!--/sidebar-menu-->
    <div class="sidebar-menu">
        <header class="logo1">
            <a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span> </a>
        </header>
        <div style="border-top:1px ridge rgba(255, 255, 255, 0.15)"></div>
        <div class="menu">
            <ul id="menu">
                <li><a href="index.jsp"><i class="fa fa-tachometer"></i> <span>Home</span></a></li>
                <li id="menu-academico"><a href="#"><i class="fa fa-table"></i> <span> New Arrivals</span> <span
                        class="fa fa-angle-right" style="float: right"></span></a>
                    <ul id="menu-academico-sub">
                        <li id="menu-academico-avaliacoes"><a href="shoes.html">Shoes</a></li>
                        <li id="menu-academico-avaliacoes"><a href="products.html">Watches</a></li>
                        <li id="menu-academico-boletim"><a href="sunglasses.html">Sunglasses</a></li>
                    </ul>
                </li>
                <li id="menu-academico"><a href="sunglasses.html"><i class="fa fa-file-text-o"></i>
                    <span>Sunglasses</span></a></li>
                <li><a href="sweater.jsp"><i class="lnr lnr-pencil"></i> <span>Sweater</span></a></li>
                <li id="menu-academico"><a href="catalog.html"><i class="fa fa-file-text-o"></i>
                    <span>Catalog</span></a></li>
                <li id="menu-academico"><a href="shoes.html"><i class="lnr lnr-book"></i> <span>Shoes</span></a></li>
                <li><a href="bags.html"><i class="lnr lnr-envelope"></i> <span>Bags</span></a></li>
                <li><a href="products.html"><i class="lnr lnr-chart-bars"></i> <span>Watches</span></a></li>
                <li id="menu-academico"><a href="#"><i class="lnr lnr-layers"></i> <span>Tabs & Calender</span> <span
                        class="fa fa-angle-right" style="float: right"></span></a>
                    <ul id="menu-academico-sub">
                        <li id="menu-academico-avaliacoes"><a href="tabs.html">Tabs</a></li>
                        <li id="menu-academico-boletim"><a href="calender.html">Calender</a></li>

                    </ul>
                </li>
                <li><a href="#"><i class="lnr lnr-chart-bars"></i> <span>Forms</span> <span class="fa fa-angle-right"
                                                                                            style="float: right"></span></a>
                    <ul>
                        <li><a href="input.jsp"> Input</a></li>
                        <li><a href="validation.html">Validation</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <div class="clearfix"></div>
</div>
<script>
    var toggle = true;

    $(".sidebar-icon").click(function () {
        if (toggle) {
            $(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
            $("#menu span").css({"position": "absolute"});
        }
        else {
            $(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
            setTimeout(function () {
                $("#menu span").css({"position": "relative"});
            }, 400);
        }

        toggle = !toggle;
    });
</script>
<!--js -->
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
<!-- /Bootstrap Core JavaScript -->
<!-- real-time -->
<script language="javascript" type="text/javascript" src="js/jquery.flot.js"></script>
<script type="text/javascript">

    $(function () {

        // We use an inline data source in the example, usually data would
        // be fetched from a server

        var data = [],
            totalPoints = 300;

        function getRandomData() {

            if (data.length > 0)
                data = data.slice(1);

            // Do a random walk

            while (data.length < totalPoints) {

                var prev = data.length > 0 ? data[data.length - 1] : 50,
                    y = prev + Math.random() * 10 - 5;

                if (y < 0) {
                    y = 0;
                } else if (y > 100) {
                    y = 100;
                }

                data.push(y);
            }

            // Zip the generated y values with the x values

            var res = [];
            for (var i = 0; i < data.length; ++i) {
                res.push([i, data[i]])
            }

            return res;
        }

        // Set up the control widget

        var updateInterval = 30;
        $("#updateInterval").val(updateInterval).change(function () {
            var v = $(this).val();
            if (v && !isNaN(+v)) {
                updateInterval = +v;
                if (updateInterval < 1) {
                    updateInterval = 1;
                } else if (updateInterval > 2000) {
                    updateInterval = 2000;
                }
                $(this).val("" + updateInterval);
            }
        });

        var plot = $.plot("#placeholder", [getRandomData()], {
            series: {
                shadowSize: 0	// Drawing is faster without shadows
            },
            yaxis: {
                min: 0,
                max: 100
            },
            xaxis: {
                show: false
            }
        });

        function update() {

            plot.setData([getRandomData()]);

            // Since the axes don't change, we don't need to call plot.setupGrid()

            plot.draw();
            setTimeout(update, updateInterval);
        }

        update();

        // Add the Flot version string to the footer

        $("#footer").prepend("Flot " + $.plot.version + " &ndash; ");
    });

</script>
<!-- /real-time -->
<script src="js/jquery.fn.gantt.js"></script>
<script>

    $(function () {

        "use strict";

        $(".gantt").gantt({
            source: [{
                name: "Sprint 0",
                desc: "Analysis",
                values: [{
                    from: "/Date(1320192000000)/",
                    to: "/Date(1322401600000)/",
                    label: "Requirement Gathering",
                    customClass: "ganttRed"
                }]
            }, {
                name: " ",
                desc: "Scoping",
                values: [{
                    from: "/Date(1322611200000)/",
                    to: "/Date(1323302400000)/",
                    label: "Scoping",
                    customClass: "ganttRed"
                }]
            }, {
                name: "Sprint 1",
                desc: "Development",
                values: [{
                    from: "/Date(1323802400000)/",
                    to: "/Date(1325685200000)/",
                    label: "Development",
                    customClass: "ganttGreen"
                }]
            }, {
                name: " ",
                desc: "Showcasing",
                values: [{
                    from: "/Date(1325685200000)/",
                    to: "/Date(1325695200000)/",
                    label: "Showcasing",
                    customClass: "ganttBlue"
                }]
            }, {
                name: "Sprint 2",
                desc: "Development",
                values: [{
                    from: "/Date(1326785200000)/",
                    to: "/Date(1325785200000)/",
                    label: "Development",
                    customClass: "ganttGreen"
                }]
            }, {
                name: " ",
                desc: "Showcasing",
                values: [{
                    from: "/Date(1328785200000)/",
                    to: "/Date(1328905200000)/",
                    label: "Showcasing",
                    customClass: "ganttBlue"
                }]
            }, {
                name: "Release Stage",
                desc: "Training",
                values: [{
                    from: "/Date(1330011200000)/",
                    to: "/Date(1336611200000)/",
                    label: "Training",
                    customClass: "ganttOrange"
                }]
            }, {
                name: " ",
                desc: "Deployment",
                values: [{
                    from: "/Date(1336611200000)/",
                    to: "/Date(1338711200000)/",
                    label: "Deployment",
                    customClass: "ganttOrange"
                }]
            }, {
                name: " ",
                desc: "Warranty Period",
                values: [{
                    from: "/Date(1336611200000)/",
                    to: "/Date(1349711200000)/",
                    label: "Warranty Period",
                    customClass: "ganttOrange"
                }]
            }],
            navigate: "scroll",
            scale: "weeks",
            maxScale: "months",
            minScale: "days",
            itemsPerPage: 10,
            onItemClick: function (data) {
                alert("Item clicked - show some details");
            },
            onAddClick: function (dt, rowId) {
                alert("Empty space clicked - add an item!");
            },
            onRender: function () {
                if (window.console && typeof console.log === "function") {
                    console.log("chart rendered");
                }
            }
        });

        $(".gantt").popover({
            selector: ".bar",
            title: "I'm a popover",
            content: "And I'm the content of said popover.",
            trigger: "hover"
        });

        prettyPrint();

    });

</script>
<script src="js/menu_jquery.js"></script>
</body>
</html>