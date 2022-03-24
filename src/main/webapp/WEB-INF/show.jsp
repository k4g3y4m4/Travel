<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <title>Show Expense</title>
</head>
<body class="bg-dark">
<main>
    <div class="container container-800 py-5">
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col">
                        <h3>Show Expense</h3>
                    </div>
                    <div class="col-auto text-right">
                        <a href="/" class="btn btn-primary">Back</a>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <p>Expense Name: ${travel.getExpense()}</p>
                <p>Expense Vendor: ${travel.getVendor()}</p>
                <p>Expense Amount: ${travel.getAmount()}</p>
            </div>
        </div>
    </div>
</main>
</body>
</html>

