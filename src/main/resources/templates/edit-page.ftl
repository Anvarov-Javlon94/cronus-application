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
                <h3><b>Изменить Данные: </b><i>${user.getUsr_full_name()}</i></h3>
                <br>
                <form action="/edit" method="post" class="form-group">

                    <div class="form-group">

                        <label for="exampleFormControlInput1"><b>Адрес</b></label>
                        <input type="text" class="form-control" name="address" placeholder="Например: ул.Таштурма 11" value="<#if user.getAddress()??>${user.getAddress()}</#if>">
                    </div>

                    <div class="form-group">
                        <label for="exampleFormControlInput1"><b>Семейное положение</b></label>
                        <input type="text" class="form-control" name="family_status" placeholder="Например: женат, не женат" value="<#if user.getFamily_status()??>${user.getFamily_status()}</#if>">
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlInput1"><b>Количество детей</b></label>
                        <input type="text" class="form-control" name="children_count" placeholder="Например: 2" value="<#if user.getChildren_count()??>${user.getChildren_count()}</#if>">
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlInput1">Телефон</label>
                        <input type="text" class="form-control" name="phone" placeholder="Например: +998912345678" value="<#if user.getPhone()??>${user.getPhone()}</#if>">
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlInput1"><b>Место последней работы</b></label>
                        <input type="text" class="form-control" name="last_workplace" placeholder="Например: Хокимият Грузии" value="<#if user.getLast_workplace()??>${user.getLast_workplace()}</#if>">
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlInput1"><b>Образование</b></label>
                        <input type="text" class="form-control" name="study" placeholder="Например: Университет Связи" value="<#if user.getStudy()??>${user.getStudy()}</#if>">
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlInput1"><b>Связи</b></label>
                        <input type="text" class="form-control" name="relations" placeholder="Например: Каримов Рустам, Турабаев Тимур" value="<#if user.getRelations()??>${user.getRelations()}</#if>">
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1"><b>Событие_1</b></label>
                        <textarea class="form-control" name="comment_1" rows="3"><#if user.getComment_1()??>${user.getComment_1()}</#if></textarea>
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1"><b>Событие_2</b></label>
                        <textarea class="form-control" name="comment_2" rows="3"><#if user.getComment_2()??>${user.getComment_2()}</#if></textarea>
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1"><b>Событие_3</b></label>
                        <textarea class="form-control" name="comment_3" rows="3"><#if user.getComment_3()??>${user.getComment_3()}</#if></textarea>
                    </div>
                    <select class="form-control" name="name" id="organization" style="margin-bottom: 20px">
                        <option selected value="${user.getOrganization().getName()}">${user.getOrganization().getName()}</option>
                        <#list organizations?if_exists as organization>
                            <option value="${organization.getName()}">${organization.getName()}</option>
                        </#list>
                    </select>

                    <input type="hidden" name="usr_id" value="${user.getId()}">
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <button type="submit" class="btn-info form-control" >Изменить данные</button>
                </form>
            </div>

        </div>
    </div>
</div>

</body>
</html>

