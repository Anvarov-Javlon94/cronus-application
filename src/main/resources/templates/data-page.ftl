<!DOCTYPE HTML>
<html>
<head>
    <title>Sanoat Qurilish Bank</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="/static/assets/css/main.css" />
    <link rel="stylesheet" href="/static/css/bootstrap.css">
</head>
<body>
<!-- Banner -->
<section class="banner full">
    <article>
        <img src="/static/images/slide01.jpg" alt="" />
        <div class="inner">
            <header>
                <div class="container">
                    <div class="row">
                        <nav class="navbar navbar-expand-lg navbar-light bg-light">
                            <div class="container-fluid">

                                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                        <li class="nav-item">
                                            <a class="navbar-brand" href="/data-page">CRONOS</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link active" aria-current="page" href="/add-user">Добавить Пользователя</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="/add-organization-page">Добавить организацию</a>
                                        </li>
                                        <li class="nav-item">
                                            <form action="/search-usr" method="post" class="d-flex">
                                                <input class="text-dark" type="text" placeholder="Поиск по параметру" name="search_param" style="margin-right: 5px">
                                                <button class="btn-warning form-control">Поиск</button>
                                                <input type="hidden" name="_csrf" value="${_csrf.token}">
                                            </form>
                                        </li>
                                    </ul>

                                </div>
                            </div>
                        </nav>
                    </div>
                <br>
                <hr>
                        <div class="table-wrapper-scroll-y my-custom-scrollbar">
                            <table class="table table-striped">
                                <thead class="thead-dark fixedTableHead">
                                <tr>
                                    <#--                            <th scope="col"><h6><b>id</b></h6></th>-->
                                    <th scope="col"><h6><b>Фамилия Имя</b></h6></th>
                                    <th scope="col"><h6><b>Организация</b></h6></th>
                                    <th scope="col"><h6><b>Телефон</b></h6></th>
                                    <th scope="col"><h6><b>Место последней работы</b></h6></th>
                                    <th scope="col"><h6><b>Кабинет</b></h6></th>
                                </tr>
                                </thead>
                                <tbody>
                                <#list users as user>
                                    <tr>
                                        <th scope="col"><h6><b><#if user.getUsr_full_name()??>${user.getUsr_full_name()}</#if></b></h6></th>
                                        <th scope="col"><h6><b><#if user.getOrganization()??>${user.getOrganization().getName()}</#if></b></h6></th>
                                        <th scope="col"><h6><b><#if user.getPhone()??>${user.getPhone()}</#if></b></h6></th>
                                        <th scope="col"><h6><b><#if user.getLast_workplace()??>${user.getLast_workplace()}</#if></b></h6></th>
                                        <th scope="col"><a href="/cabinet/${user.getId()}">Подробнее</a></th>
                                        <th><input type="hidden" name="usr_id"></th>
                                    </tr>
                                </#list>
                                </tbody>

                            </table>
                        </div>
                </div>
            </header>
        </div>
    </article>
</section>

<!-- Footer -->
<footer id="footer">
    <div class="container">
    </div>
    <div class="copyright">
        Untitled. All rights reserved.
    </div>
</footer>

<!-- Scripts -->
<script src="/static/assets/js/jquery.min.js"></script>
<script src="/static/assets/js/jquery.scrollex.min.js"></script>
<script src="/static/assets/js/skel.min.js"></script>
<script src="/static/assets/js/util.js"></script>
<script src="/static/assets/js/main.js"></script>

</body>
</html>