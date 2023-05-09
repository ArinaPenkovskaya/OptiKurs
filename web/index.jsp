<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>ОптиКурс</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="icon" href="assets/favicon.ico">
</head>
<body>
<section class="index-page">
    <img class="index-page__bank-logo" src="assets/bank-logo.png" alt="bank-logo"
         onclick="location.href = '../OptiKurs'">

    <ul class="index-page__list">

        <li class="index-page__list__item">
            <button class="index-page__list__item__img-wrapper" onclick="location.href = 'clients'">Клиенты</button>
        </li>

        <li class="index-page__list__item">
            <<button class="index-page__list__item__img-wrapper" onclick="location.href = 'deposits'">Депозиты</button>
        </li>

        <li class="index-page__list__item">
            <button class="index-page__list__item__img-wrapper" onclick="location.href = 'invoices'">Счета</button>
        </li>
    </ul>
</section>
</body>
</html>
