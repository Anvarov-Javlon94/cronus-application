<!DOCTYPE HTML>
<html>
<head>
    <title>Sanoat Qurilish Bank</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="/static/assets/css/main.css" />
</head>
<body>
<!-- Banner -->
<section class="banner full">
    <article>
        <img src="/static/images/slide01.jpg" alt="" />
        <div class="inner">
            <header>
                <form action="/login" method="post">
                    <h4 class="text-center">Страница входа</h4>
                    <div class="form-group">
                        <input class="form-control" type="text" name="username" placeholder="введите логин" style="box-shadow: black">
                    </div>
                    <div class="form-group">
                        <input class="form-control" type="password" name="password" placeholder="введите пароль" style="margin-top: 10px">
                    </div>
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <button type="submit" class="btn-info form-control" style="margin-top: 10px">Войти</button>
                </form>
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