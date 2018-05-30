<%@ page import="java.util.ArrayList" %>
<%@ page import="bean.Product" %>
<%@ page import="com.opensymphony.xwork2.ActionContext" %>
<%@ page import="dao.BascketDao" %>
<%@ page import="bean.Bascket" %>
<%@ page import="dao.ProductDao" %>
<%@ page import="java.util.List" %>
<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sweater</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Gretong Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"/>
    <script type="application/x-javascript">
        addEventListener("load", function () {
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
    <script src="js/simpleCart.min.js"></script>
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
                                <li><a href="contact.html">help</a></li>
                                |
                                <li><a href="contact.html">Contact</a></li>
                                |
                                <li><a href="checkout.jsp">Delivery information</a></li>
                            </ul>
                        </div>
                        <div class="top_left">
                            <h2><span></span> Call us : 032 2352 782</h2>
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

                                <div class="reg">
                                    <b> 欢迎：<a
                                            href="userInfo.jsp"> <b>${sessionScope.user.name}</b> </a>
                                    </b>
                                </div>


                                <div class="cart box_1">
                                    <a href="checkout.jsp">
                                        <h3><span class="simpleCart_total">$</span>
                                            (<span id="simpleCart_quantity"
                                                   class="simpleCart_quantity"></span>
                                            items)<img src="images/bag.png" alt=""></h3>
                                    </a>
                                    <p><a href="javascript:;" class="simpleCart_empty">(empty card)</a></p>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="create_btn">
                                    <a href="listBascket.action">CHECKOUT</a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="search">
                                <form action="search.action" method="post">
                                    <input type="text"  placeholder="查询..." name="message">
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
                    <div class="w_content">
                        <div class="women">

                            <a href="#"><h4>Enthecwear - <span> items</span></h4></a>
                            <ul class="w_nav">
                                <li>Sort :</li>
                                <li><a class="active" href="#">popular</a></li>
                                |
                                <li><a href="#">new </a></li>
                                |
                                <li><a href="#">discount</a></li>
                                |
                                <li><a href="#">price: Low High </a></li>
                                <div class="clear"></div>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                        <!-- grids_of_4 -->

                        <%
                            List<Product> productList = (List<Product>) request.getAttribute("products");
                            System.out.println(productList.size());
                            int count = productList.size();


                        %>
                        <%
                            for (int i = 0; i < count; i = i + 4) {


                        %>
                        <div class="grids_of_4">
                            <%
                                for (int j = i; j < i + 4 && j < count; j++) {

                            %>
                            <div class="grid1_of_4">
                                <div class="content_box"><a href="/findOne.action?id=<%=productList.get(j).getId()%>">
                                    <img src="<%=productList.get(j).getImage()%>" alt="" height="150px">
                                </a>
                                    <h4>
                                        <a href="/findOne.action?id=<%=productList.get(j).getId()%>"><%=productList.get(j).getPname()%>
                                        </a></h4>
                                    <p>商家号：<%=productList.get(j).getSid()%>
                                    </p>
                                    <div class="grid_1 simpleCart_shelfItem">

                                        <div class="item_add">
                                            <span class="item_price">
                                            <h6>￥ <%=productList.get(j).getPrice()%></h6>
                                            </span>
                                        </div>
                                        <div class="item_add"><span class="item_price"><a
                                                href="addBascket.action?pid=<%=productList.get(j).getId()%>">加入购物车</a></span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="clearfix"></div>
                            <%
                                }
                            %>
                        </div>

                        <%
                            }
                        %>
                        <!-- end grids_of_4 -->


                    </div>
                    <div class="clearfix"></div>
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
                <li><a href="index.jsp"><i class="fa fa-tachometer"></i> <span>主页</span></a></li>

                <li id="menu-academico"><a href="sunglasses.html"><i class="fa fa-file-text-o"></i>
                    <span>Sunglasses</span></a></li>
                <li><a href="sweater.jsp"><i class="lnr lnr-pencil"></i> <span>Sweater</span></a></li>

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