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

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Montserrat:300,400,500,600,700" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="/static/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/static/assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="/static/assets/vendor/ionicons/css/ionicons.min.css" rel="stylesheet">
    <link href="/static/assets/vendor/venobox/venobox.css" rel="stylesheet">
    <link href="/static/assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="/static/assets/vendor/aos/aos.css" rel="stylesheet">
    <link rel="stylesheet" href="/static/css/card.css">
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
        <div class="col-md-6 offset-3">
            <div class="jumbotron">
                <h3 class="text-center"><b>Добавить Организацию</b></h3>
                <#if exist??><h4>Это организация уже есть</h4></#if>
                <#--            <#if errors??><h3 style="color: red" class="text-center"><b>${errors}</b></h3></#if>-->
                <br>
                <form class="form-group" method="post" action="/add-organization">
                    <label for="exampleFormControlInput1"><b>Название Организации</b></label>
                    <input type="text" class="form-control formPadding <#if errors??>is-invalid</#if> " name="name" placeholder="Например: Саноат Курилиш Банк">
                    <div class="invalid-feedback">*Пожалуйста введите имя</div>
                    <button type="submit" class="btn-info form-control" >Добавить данные</button>
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                </form>
            </div>
            <br>
            <div class="jumbotron">
                <div class="table-wrapper-scroll-y my-custom-scrollbar">
                    <table class="table table-striped">
                        <thead class="thead-dark fixedTableHead">
                        <tr>
                            <#--                            <th scope="col"><h6><b>id</b></h6></th>-->
                            <th scope="col"><h6><b>ID</b></h6></th>
                            <th scope="col"><h6 style="padding-right: 200px"><b>Название Организации</b></h6></th>

                        </tr>
                        </thead>
                        <tbody>
                        <#list organizations as organization>
                            <tr>
                                <th scope="col"><h6><b><#if organization.getId()??>${organization.getId()}</#if></b></h6></th>
                                <th scope="col"><h6><b><#if organization.getName()??>${organization.getName()}</#if></b></h6></th>
                                <th><input type="hidden" name="usr_id"></th>
                            </tr>
                        </#list>
                        </tbody>

                    </table>
                </div>
            </div>

        </div>
    </div>
</div>

</body>
</html>

