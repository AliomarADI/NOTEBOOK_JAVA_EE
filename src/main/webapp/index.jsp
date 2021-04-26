<%--http://localhost:8080/java_ee_endterm_war_exploded/--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>NotebookOnline</title>
    <link href="WEB-INF/style/index.css">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

</head>
<body>

<%--<jsp:include page="header.jsp"></jsp:include>--%>
<jsp:include page="header.jsp"></jsp:include>

<div class="p-5 text-center bg-light text-dark">
    <h1 class="mb-3">Бесплатный браузерный текстовой редактор</h1>
    <h4 class="mb-3">Простой онлайн-инструмент, который делает запись заметок проще и удобнее</h4>
    <br>
    <br>
    <br>

    <%! String napisatZametku = "Написать заметку..."; %>

    <a class="btn btn-primary" href="" role="button"><%= napisatZametku %></a>
</div>
<!-- Jumbotron -->
<%--  <center>--%>
<%--    <img alt="Блокнот Онлайн Скриншот" src="WEB-INF/images/example.png">--%>
<%--  </center>--%>

<br><br><br>

<div class="container">
    <div class="row">
        <div class="col-1"></div>
        <div class="col-10">
            <h3>Описание</h3>
            <p>Блокнот Онлайн - это бесплатный текстовый редактор на основе браузера, который позволяет создавать и редактировать несколько текстовых файлов в вашем браузере. Не требуется регистрация и вход. Он отлично подходит для написания быстрых заметок и печати простой страницы. Что делает его особенным, так это функция автосохранения, которая сохраняет ваш черновик каждую секунду. Это предотвращает потерю данных в случае, если вы случайно закроете вкладку, или окно браузера внезапно вылетит. Документ, над которым вы работаете, будет автоматически восстановлен при повторном посещении, даже если вы закроете и снова откроете браузер. Также есть поддержка сохранения документов прямо на ваш компьютер. Блокнот онлайн содержит основные функции, которые предоставляет ваш обычный текстовый редактор, включая отмену, повтор, копирование, вырезание, вставку, поиск и замену, форматирование шрифта, карту символов, вставку даты и времени, список смайликов, проверку орфографии, счетчик слов, открытие и сохранение файлов, и печать страницы.</p>
        </div>
        <div class="col-1"></div>
    </div>
    <br><br>
    <div class="row">
        <div class="col-1"></div>
        <div class="col-10">
            <h3>Как это работает?</h3>
            <p>Изменения сохраняются автоматически во время работы благодаря HTML5 localStorage API. Оно получает копию содержимого из текстового редактора и сохраняет ее на компьютер. С помощью этого метода ваши данные никогда не покидают ваше устройство. Интервал времени по умолчанию для сохранения черновика составляет 1000 мс или 1 секунду. Ваши заметки будут оставаться в веб-браузере до тех пор, пока вы не удалите файлы cookie и другие данные сайта. Вы можете попробовать это, напечатав что-нибудь в редакторе и обновив страницу.</p>
        </div>
        <div class="col-1"></div>
    </div>
</div>

<br><br>



<div class="bg-dark" style="width: 100%">
    <jsp:include page="footer.jsp"></jsp:include>
</div>

</body>
</html>


