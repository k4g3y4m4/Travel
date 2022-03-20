<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <title>Edit</title>
</head>
<body class="bg-dark">
    <main>
        <div class="container py-5">
            <div class="card">
                <div class="card-header">
                    <div class="row">
                        <div class="col"><h3>Edit Expense</h3></div>
                        <div class="col-auto">
                            <a href="/" class="btn btn-primary">Back</a>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-md-6">
                        <div class="card-body">
                            <form:form action="/update/${id}" method="POST" modelAttribute="editTravel">
                                <div class="form-group row py-1">
                                    <p class="text-danger"><form:errors path="Expense"/></p>
                                    <p class="text-danger"><form:errors path="Vendor"/></p>
                                    <p class="text-danger"><form:errors path="Amount"/></p>
                                </div>
                                <div class="form-group row py-1">
                                    <form:label path="Expense" class="col-md-4 col-form-label" for="Expense">Expense</form:label>
                                    <div class="col-md-8">
                                        <form:input type="text" class="form-control" path="Expense" id="Expense" value="${travel.getExpense()}"/>
                                    </div>
                                </div>
                                <div class="form-group row py-1">
                                    <form:label path="Vendor" class="col-md-4 col-form-label" for="Vendor">Vendor</form:label>
                                    <div class="col-md-8">
                                        <form:input type="text" class="form-control"  path="Vendor" id="Vendor" value="${travel.getVendor()}"/>
                                    </div>
                                </div>
                                <div class="form-group row py-1">
                                    <form:label path="Amount" class="col-md-4 col-form-label" for="Amount">Amount</form:label>
                                    <div class="col-md-8">
                                        <form:input type="text" class="form-control"  path="Amount" id="Amount" value="${travel.getAmount()}"/>
                                    </div>
                                </div>
                                <div class="form-group row py-2">
                                    <div class="col"></div>
                                    <div class="col-auto">
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                    </div>
                                </div>
                            </form:form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</body>
</html>
