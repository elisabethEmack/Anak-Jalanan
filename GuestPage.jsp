<%-- 
    Document   : GuestPage
    Created on : May 25, 2016, 11:41:20 AM
    Author     : emack
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
    <!--<![endif]-->
    <!-- HEAD SECTION -->
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <!--[if IE]>
            <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
            <![endif]-->
        <title>Guest Page</title>
        <!--GOOGLE FONT -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
        <!--BOOTSTRAP MAIN STYLES -->
        <link href="assets/css/bootstrap.css" rel="stylesheet" />
        <!--FONTAWESOME MAIN STYLE -->
        <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
        <!--CUSTOM STYLE -->
        <link href="assets/css/style.css" rel="stylesheet" />
        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
    </head>
    <!--END HEAD SECTION -->
    <body>   
        <!-- NAV SECTION -->
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Sistem Informasi Akademik Mahasiswa</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#header-section">UTAMA</a></li>                        
                        <li><a href="#about-section">KULIAH WAJIB</a></li>
                        <li><a href="#products-section">KULIAH PEMINATAN</a></li>                        
                        <li><a href="#contact-section">KONTAK</a></li>
                        <li><a href="index.jsp">LOGOUT</a></li>
                    </ul>
                </div>

            </div>
        </div>
        <!--END NAV SECTION -->
        <!-- HEADER SECTION -->
        <div id="header-section">
            <div class="container">
                <div class="row centered">
                    <div class="col-md-8 col-md-offset-2">
                        <h1><strong> SIA Mahasiswa</strong>          
                        </h1>
                        <br /> <br /> <br />
                        <h2><strong> Teknik Informatika</strong></h2><br>
                        <h2> Universitas Sanata Dharma</h2>
                        <br />
                        <a href="#about-section">  <i class="fa fa-angle-double-down fa-5x down-icon"></i> </a>
                    </div>
                </div>
            </div>

        </div> 
        <!--END HEADER SECTION -->
        <!--ABOUT SECTION -->
        <div id="about-section" >
            <div class="container" >
                <div class="row main-top-margin text-center">
                    <div class="col-md-8 col-md-offset-2 " data-scrollreveal="enter top and move 100px, wait 0.3s">
                        <h1>Mata Kuliah Wajib</h1>
                        <h4>
                            Program studi Teknik Informatika, Universitas Sanata Dharma
                            mewajibkan mahasiswanya untuk mengambil semua mata kuliah 
                            dasar yang mendukung perkuliahan sebelum memilih bidang peminatan.
                        </h4>
                    </div>
                </div>
                <!-- ./ Main Heading-->
                <div class="row main-low-margin text-center">
                    <div class="col-md-3 " data-scrollreveal="enter left and move 100px, wait 0.4s">
                        <img class="img-rounded" src="assets/img/team/team1.png" alt="">
                        <h4><strong>Motto Program Studi</strong> </h4>
                        <p>
                            Menjadi ahli informatika yang cerdas.
                            Menjadi ahli informatika yang humanis. 
                        </p>
                        <p>
                            <a href="#"><i class="fa fa-facebook-square fa-2x color-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter-square fa-2x color-twitter"></i></a>
                            <a href="#"><i class="fa fa-google-plus-square fa-2x color-google-plus"></i></a>
                            <a href="#"><i class="fa fa-linkedin-square fa-2x color-linkedin"></i></a>
                            <a href="#"><i class="fa fa-pinterest-square fa-2x color-pinterest"></i></a>
                        </p>
                    </div>

                    <div class="col-md-7 col-sm-7 col-md-offset-1  text-justify" data-scrollreveal="enter right and move 100px, wait 0.4s">
                        <h4> Beberapa matakuliah yang harus diambil oleh mahasiswa:</h4>
                        <p>
                        <ul type="circle">
                            <li>Pengantar Teknologi Informasi</li><br />
                            <li>Kalkulus</li><br />
                            <li>Logika Informatika</li> <br />
                            <li>Sistem Digital</li><br />
                            <li>Pemrograman Komputer</li><br />
                            <li>Statistika</li> <br />
                            <li>Metode Numerik</li><br />
                            <li>Matematika Diskret</li><br />
                            <li>Pengolahan Data Statistik</li> <br />
                            <li>Komunikasi Data</li>
                        </ul>
                        </p>
                    </div>
                </div>
                <!-- ./ Row Content-->
            </div>
        </div>
        <!-- END ABOUT SECTION -->


        <!--WORK/PRODUCTS SECTION -->
        <div id="products-section" >
            <div class="container" >
                <div class="row main-top-margin text-center" data-scrollreveal="enter top and move 100px, wait 0.3s">
                    <div class="col-md-8 col-md-offset-2 ">
                        <h1>Mata Kuliah Peminatan</h1>
                        <h4>
                            Program studi Teknik Informatika, Universitas Sanata Dharma Yogyakarta
                            menawarkan 3 bidang penjurusan dengan matakuliah
                            peminatannya yang berbeda-beda. 
                        </h4>
                    </div>
                </div>
                <!-- ./ Main Heading-->
                <hr />
                <div class="row main-low-margin" >
                    <div class="col-md-10  col-md-offset-1 ">
                        <div class="col-md-4 col-sm-4" data-scrollreveal="enter left and move 100px, wait 0.8s">
                            <img src="assets/img/product/database.png" alt="">
                        </div>
                        <div class="col-md-8 " data-scrollreveal="enter right and move 100px, wait 0.4s">
                            <h4 >  <strong class="color-black">BASIS DATA</strong></h4>
                            <p>
                            <ul type="circle">
                                <li>Keamanan Basis Data</li><br />
                                <li>Praktikum Pemrograman Basis Data</li><br />
                                <li>Praktikum Adminsitrasi Basis Data</li> <br />
                                <li>Praktikum Aplikasi Basis data</li><br />
                                <li>Basisdata Terdistribusi dan Mobile Database</li><br />
                                <li>Basisdata Object Relational</li> <br />
                                <li>Pemerolehan Informasi</li><br />
                                <li>Basisdata Multimedia</li><br />
                                <li>Penambahan Data</li> <br />
                                <li>Gudang Data</li>
                            </ul>
                            </p>                                                        
                        </div>
                    </div>
                </div>
                <!-- ./ Row Content-->
                <hr />
                <div class="row main-low-margin bottam-pad" >

                    <div class="col-md-10  col-md-offset-1 ">
                        <div class="col-md-8 " data-scrollreveal="enter left and move 100px, wait 0.4s">
                            <h4 >  <strong class="color-blue">JARINGAN KOMPUTER </strong></h4>
                            <p>
                            <ul type="circle">
                                <li>Transmisi Data</li><br />
                                <li>Kriptografi</li><br />
                                <li>Protokol Internet</li> <br />
                                <li>Praktikum Protokol Internet</li><br />
                                <li>Arsitektur dan Routing Internet</li><br />
                                <li>Keamanan Jaringan Komputer</li> <br />
                                <li>Analisis Unjuk Kerja Jaringan</li><br />
                                <li>Teknik Koreksi Kesalahan Data</li><br />
                                <li>Jaringan Bertoleransi Tunda</li> <br />
                                <li>Social Network</li>
                            </ul>
                            </p>
                        </div>
                        <div class="col-md-4 " data-scrollreveal="enter right and move 100px, wait 0.4s">

                            <img class="img-margin-product" src="assets/img/product/jarkom.png" alt="">
                        </div>
                    </div>
                </div>

                <div class="row main-low-margin" >
                    <div class="col-md-10  col-md-offset-1 ">
                        <div class="col-md-4 col-sm-4" data-scrollreveal="enter left and move 100px, wait 0.8s">
                            <img src="assets/img/product/komputasi.png" alt="">
                        </div>
                        <div class="col-md-8 " data-scrollreveal="enter right and move 100px, wait 0.4s">
                            <h4 >  <strong class="color-red">KOMPUTASI</strong></h4>
                            <p>
                            <ul type="circle">
                                <li>Analisis Algoritma</li><br />
                                <li>Riset Operasi</li><br />
                                <li>Sistem Cerdas</li> <br />
                                <li>Pengenalan Pola</li><br />
                                <li>Penambangan Data</li><br />
                                <li>Simulasi dan Pemodelan</li> <br />
                                <li>Pemrosesan Citra</li><br />
                                <li>Jaringan Syaraf Tiruan</li><br />
                                <li>Logika Kabur</li> <br />
                                <li>Pemrograman Mobile Berbasis Java</li>
                            </ul>
                            </p>
                        </div>
                    </div>
                </div>
                <!-- ./ Row Content-->
            </div>
        </div>
        <!--END WORK/PRODUCTS SECTION -->
        <!--CONTACT SECTION -->
        <div id="contact-section">
            <div class="container" >
                <div class="row main-top-margin text-center">
                    <div class="col-md-8 col-md-offset-2 " data-scrollreveal="enter top and move 100px, wait 0.3s">
                        <h1>Hubungi Kami</h1>
                        <h4>
                            Bagi para pengunjung yang ingin menghubungi kami, 
                            pengunjung dapat mengirimkan email di bawah ini.
                        </h4>
                    </div>
                </div>
                <!-- ./ Main Heading-->
                <div class="row">
                    <div class="col-md-12  col-sm-12 ">
                        <div class="col-md-6  " data-scrollreveal="enter left and move 100px, wait 0.4s">
                            <h3> Lokasi Kampus</h3>
                            <hr />
                            <p>
                                Paingan,<br />
                                Maguwoharjo,<br />
                                Yogyakarta, Indonesia.<br />                          
                                Call: (0274)555311<br />
                                Email: teknikInformatika@usd.ac.id<br />
                            </p>

                        </div>
                        <div class="col-md-6  " data-scrollreveal="enter right and move 100px, wait 0.4s">
                            <h3>Hubungi kami </h3>
                            <hr />
                            <form>
                                <div class="row">
                                    <div class="col-md-6 ">
                                        <div class="form-group">
                                            <input type="text" class="form-control" required="required" placeholder="Name">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" required="required" placeholder="Email address">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6 ">
                                        <div class="form-group">
                                            <input type="text" class="form-control" required="required" placeholder="Subject">
                                        </div>
                                    </div>                                    
                                </div>
                                <div class="row">
                                    <div class="col-md-12 ">
                                        <div class="form-group">
                                            <textarea name="message" id="message" required="required" class="form-control" rows="3"  placeholder="Message"></textarea>
                                        </div>
                                        <div class="form-group">
                                            <button type="submit" class="btn btn-primary">Kirim</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>
                <!-- ./ Row Content-->
            </div>
        </div>  
        <!--END CONTACT SECTION --> 
        <!--FOOTER SECTION -->
        <div id="footer">
            <div class="container">
                <div class="row ">
                    &copy; Teknik Informatika | Universitas Sanata Dharma 				
                </div>
            </div>
        </div>  
        <!--END FOOTER SECTION --> 
        <!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
        <!-- CORE JQUERY LIBRARY -->
        <script src="assets/js/jquery.js"></script>
        <!-- CORE BOOTSTRAP LIBRARY -->
        <script src="assets/js/bootstrap.min.js"></script>
        <!-- SCROLL REVEL LIBRARY FOR SCROLLING ANIMATIONS-->
        <script src="assets/js/scrollReveal.js"></script>
        <!-- CUSTOM SCRIPT-->
        <script src="assets/js/custom.js"></script>
    </body>
</html>
