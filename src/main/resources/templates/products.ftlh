<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<h1>MyShop</h1><hr>
<h4>Товары</h4>
<form action="/" method="get">
    Поиск по названию: <input type="text" name="title"><br>
    <input type="submit" value="Поиск">
</form>
<#list products as product>
    <div><b><p>${product.title}</p></b> ${product.price} | <a href="/product/${product.id}">Подробнее</a></div>
</#list>
<hr>
<h3>Создать новый товар</h3>
<form action="/product/create" method="post" enctype="multipart/form-data">
    Название объявления: <input type="text" name="title"><br><br>
    Описание объявления: <input type="text" name="description"><br><br>
    Цена: <input type="number" name="price"><br><br>
    Город: <input type="text" name="city"><br><br>
    Имя: <input type="text" name="author"><br><br>
    Первая фотография: <input type="file" name="file1"><br><br>
    Вторая фотография: <input type="file" name="file2"><br><br>
    Третья фотография: <input type="file" name="file3"><br><br>
    <input type="submit" value="Добавить товар">
</form>
</body>
</html>