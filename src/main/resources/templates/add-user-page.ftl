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
                <form class="form-group" method="post" action="/add-user">
                    <label for="exampleFormControlInput1"><b>Фамилия и Имя</b></label>
                    <input type="text" class="form-control formPadding <#if errors??>is-invalid</#if> " name="usr_full_name" placeholder="Например: Самуэлов Эрик">
                    <div class="invalid-feedback">*Пожалуйста введите Фамилию и имя</div>

                    <label for="exampleFormControlInput1"><b>Очество</b></label>
                    <input type="text" class="form-control formPadding <#if errors??>is-invalid</#if> " name="usr_father_name" placeholder="Например: Бетхатович">
                    <div class="invalid-feedback">*Пожалуйста введите Очество</div>

                    <label for="exampleFormControlInput1"><b>Дата рождение</b></label>
                    <input type="text" class="form-control formPadding" name="birth_date" placeholder="Например: 1970.02.10">


                    <label for="exampleFormControlInput1"><b>Место рождение</b></label>
                    <input type="text" class="form-control formPadding" name="birth_place" placeholder="Например: г.Ханабад обл.Андижан">


                    <label for="exampleFormControlInput1"><b>Образование</b></label>
                    <input type="text" class="form-control formPadding" name="study" placeholder="Например: Университет WebSter">


                    <label for="exampleFormControlInput1"><b>Специальность</b></label>
                    <input type="text" class="form-control formPadding" name="specialty" placeholder="Например: Программист">


                    <label for="exampleFormControlInput1"><b>Семейное положение</b></label>
                    <input type="text" class="form-control formPadding" name="family_status" placeholder="Например: женат, не женат">


                    <label for="exampleFormControlInput1"><b>Количество детей</b></label>
                    <input type="text" class="form-control formPadding" name="children_count" placeholder="Например: 2">


                    <label for="exampleFormControlInput1"><b>Телефон</b></label>
                    <input type="text" class="form-control formPadding" name="phone" placeholder="Например: +998912345678">


                    <label for="exampleFormControlInput1"><b>Место последней работы</b></label>
                    <input type="text" class="form-control formPadding" name="last_workplace" placeholder="Например: Хокимият Грузии">


                    <label for="exampleFormControlInput1"><b>Адрес</b></label>
                    <input type="text" class="form-control formPadding" name="address" placeholder="Например: г.Ташкент ул.Шотаруставелли 22-1">


                    <label for="exampleFormControlTextarea1"><b>Событие_1</b></label>
                    <textarea class="form-control formPadding" name="comment_1" rows="3"></textarea>


                    <label for="exampleFormControlTextarea1"><b>Событие_2</b></label>
                    <textarea class="form-control formPadding" name="comment_2" rows="3"></textarea>

                    <label for="exampleFormControlTextarea1"><b>Событие_3</b></label>
                    <textarea class="form-control formPadding" name="comment_3" rows="3" style="margin-bottom: 20px"></textarea>

                    <label for="exampleFormControlInput1"><b>Связи</b></label>
                    <input type="text" class="form-control formPadding" name="relations" placeholder="Например: Каримов Рустам, Турабаев Тимур">

                    <#--                <label for="exampleFormControlInput1"><b>Организация</b></label>-->
                    <#--                <input type="text" class="form-control formPadding" name="name" placeholder="Например: SQB" style="margin-bottom: 20px">-->
                    <select class="form-control" name="name" id="organization" style="margin-bottom: 20px">
                        <option selected>Выберите Организацию</option>
                        <#list organizations?if_exists as organization>
                            <option value="${organization.getName()}">${organization.getName()}</option>
                        </#list>
                    </select>
                    <#--                    <select class="form-control" aria-label="Default select example" style="margin-bottom: 20px">-->
                    <#--                        <option selected>Выберите организацию</option>-->
                    <#--                        <#list organizations?if_exists as organization>-->
                    <#--                        <option name="name" value="${organization.getName()}">${organization.getName()}</option>-->
                    <#--                        </#list>-->
                    <#--                    </select>-->
                    <button type="submit" class="btn-info form-control" >Добавить данные</button>
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                </form>
            </div>
            <h3 class="text-center"><b>Добавить Данные</b></h3>
            <#--            <#if errors??><h3 style="color: red" class="text-center"><b>${errors}</b></h3></#if>-->
            <br>

        </div>
    </div>
</div>

</body>
</html>

