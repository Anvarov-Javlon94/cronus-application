<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <link rel="stylesheet" href="/static/css/bootstrap.css">
    <title>Student Registration Page</title>
    <meta content="" name="descriptison">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <#--    <link href="/static/assets/img/favicon.png" rel="icon">-->
    <link href="/static/assets/img/apple-touch-icon.png" rel="apple-touch-icon">
    <link rel="stylesheet" href="/static/css/card.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Montserrat:300,400,500,600,700" rel="stylesheet">
    <link rel="stylesheet" href="/static/css/card.css">
    <!-- Vendor CSS Files -->
    <link href="/static/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/static/assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="/static/assets/vendor/ionicons/css/ionicons.min.css" rel="stylesheet">
    <link href="/static/assets/vendor/venobox/venobox.css" rel="stylesheet">
    <link href="/static/assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="/static/assets/vendor/aos/aos.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="/static/assets/css/style.css" rel="stylesheet">
</head>
<body>
<header id="header" class="fixed-top header-transparent">
    <div class="container d-flex align-items-center">
        <h1 class="logo mr-auto"><a href="/data-page">Cronos</a></h1>
    </div>
</header><!-- End Header -->
<div class="container" style="margin-top: 120px">

    <div class="row">
        <div class="col-md-6">
            <div class="card" style="margin-bottom: 5px">
                <img src="/static/images/pic02.jpg" alt="Avatar" class="img-center">
            </div>
            <div class="card" style="margin-bottom: 5px">
                <div class="container">
                    <h4><strong>Ф.И.О:</strong></h4>
                    <h5>${user.getUsr_full_name()} ${user.getUsr_father_name()}</h5>
                </div>
            </div>
            <div class="card" style="margin-bottom: 5px">
                <div class="container">
                    <h4><b>Место и Дата рождение:</b></h4>
                    <h5><#if user.getBirth_place()??>${user.getBirth_place()}</#if>  -  <#if user.getBirth_date()??>${user.getBirth_date()}</#if></h5>
                </div>
            </div>
            <div class="card" style="margin-bottom: 5px">
                <div class="container">
                    <h4><b>Образование и специальность:</b></h4>
                    <h5><#if user.getStudy()??>${user.getStudy()}</#if>  -  <#if user.getSpecialty()??>${user.getSpecialty()}</#if></h5>
                </div>
            </div>
        </div>




        <div class="col-md-6">

            <div class="card" style="margin-bottom: 5px">
                <div class="container">
                    <h4><b>Семейное положение и дети:</b></h4>
                    <h5><#if user.getFamily_status()??>${user.getFamily_status()}</#if>  -  <#if user.getChildren_count()??>${user.getChildren_count()} детей</#if></h5>
                </div>
            </div>
            <div class="card" style="margin-bottom: 5px">
                <div class="container">
                    <h4><b>Адрес и Телефон:</b></h4>
                    <h5><#if user.getAddress()??>${user.getAddress()}</#if>  -  <#if user.getPhone()??>${user.getPhone()}</#if></h5>
                </div>
            </div>
            <div class="card" style="margin-bottom: 5px">
                <div class="container">
                    <h4><b>Организация:</b></h4>
                    <h5><#if user.getOrganization()??>${user.getOrganization().getName()}</#if></h5>
                </div>
            </div>
            <div class="card" style="margin-bottom: 5px">
                <div class="container">
                    <h4><b>Предедушее рабочое место:</b></h4>
                    <h5><#if user.getLast_workplace()??>${user.getLast_workplace()}</#if></h5>
                </div>
            </div>
            <div class="card" style="margin-bottom: 5px">
                <div class="container">
                    <h4><b>Связи:</b></h4>
                    <h5><#if user.getRelations()??>${user.getRelations()}</#if></h5>
                </div>
            </div>
            <div class="card" style="margin-bottom: 5px">
                <div class="container">
                    <h4><b>Дата первой и последней изменении:</b></h4>
                    <h5><#if user.getReg_date()??>${user.getReg_date()}</#if> - <#if user.getUpdate_date()??>${user.getUpdate_date()}</#if></h5>
                </div>
            </div>
        </div>



        <div class="col-md-12">
            <div class="card" style="margin-bottom: 8px">
                <div class="container">
                    <h4><b>Событие 1:</b></h4>
                    <h5><#if user.getComment_1()??>${user.getComment_1()}</#if></h5>
                </div>
            </div>
            <div class="card" style="margin-bottom: 8px">
                <div class="container">
                    <h4><b>Событие 2:</b></h4>
                    <h5><#if user.getComment_2()??>${user.getComment_2()}</#if></h5>
                </div>
            </div>
            <div class="card" style="margin-bottom: 8px">
                <div class="container">
                    <h4><b>Событие 3:</b></h4>
                    <h5><#if user.getComment_3()??>${user.getComment_3()}</#if></h5>
                </div>
            </div>
        </div>


        <div class="col-md-6">
            <div class="card" style="margin-bottom: 8px; padding-top: 15px">
                <div class="container">
                    <form action="/edit/${user.getId()}" method="get" class="form-group" >
                        <button type="submit" class="btn-warning form-control">Изменить</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="card" style="margin-bottom: 8px; padding-top: 15px">
                <div class="container">
                    <form class="form-group" method="get" action="/delete/${user.getId()}">
                        <button type="submit" class="btn btn-danger form-control">Удалить</button>
                    </form>
                </div>
            </div>
        </div>



<#--        <div class="col-md-6">-->
<#--            <div class="card" style="margin-bottom: 8px">-->
<#--                <div class="container">-->
<#--                    <form class="form-group" method="get" action="/cabinet/${user.getId()+1}" style="padding-top: 10px">-->
<#--                        <#if user.getId() < count_of_users>  <button type="submit" class="btn btn-info form-control">Следуйший</button></#if>-->
<#--                    </form>-->
<#--                    <form class="form-group" method="get" action="/cabinet/${user.getId()-1}">-->
<#--                        <#if 1 < user.getId()>  <button type="submit" class="btn btn-info form-control">Предедуший</button></#if>-->
<#--                    </form>-->

<#--&lt;#&ndash;                   <#if user.getId() < count_of_users> <a href="/cabinet/${user.getId()+1}">Next</a></#if>&ndash;&gt;-->
<#--&lt;#&ndash;                   <#if 1 < user.getId()><a href="/cabinet/${user.getId()-1}">Previous</a></#if>&ndash;&gt;-->
<#--                </div>-->
<#--            </div>-->

<#--        </div>-->




    </div>
</div>

</body>
</html>

