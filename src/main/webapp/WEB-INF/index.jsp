<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="/css/style.css">
        <title>Read Share</title>
    </head>
    <body class="bg-dark">
        <main class="py-5">
            <div class="container">
                <div class="card">
                    <div class="card-header">
                        <h3 class="blue">Save Travels</h3>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <table class="table table-striped table-hover">
                                <thead>
                                <tr>
                                    <th scope="col">Expense</th>
                                    <th scope="col">Vendor</th>
                                    <th scope="col">Amount</th>
                                    <th scope="col">Actions</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${travels}" var="travel">
                                    <tr>
                                        <td><a href="/expense/${travel.getId()}">${travel.getExpense()}</a></td>
                                        <td>${travel.getVendor()}</td>
                                        <td>${travel.getAmount()}</td>
                                        <td>
                                            <a href="/edit/${travel.getId()}" class="btn btn-warning text-white">Edit</a>
                                            <a href="/delete/${travel.getId()}" class="btn btn-danger text-white">Delete</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>

                        <div class="row justify-content-center">
                            <div class="col-md-6">
                                <h3 class="blue">Add a expense:</h3>
                                <form:form action="/newTravel" method="POST" modelAttribute="newTravel">
                                    <div class="form-group row py-1">
                                        <p class="text-danger"><form:errors path="Expense"/></p>
                                        <p class="text-danger"><form:errors path="Vendor"/></p>
                                        <p class="text-danger"><form:errors path="Amount"/></p>
                                    </div>
                                    <div class="form-group row py-1">
                                        <form:label path="Expense" class="col-md-4 col-form-label" for="Expense">Expense</form:label>
                                        <div class="col-md-8">
                                            <form:input type="text" class="form-control" path="Expense" id="Expense"/>
                                        </div>
                                    </div>
                                    <div class="form-group row py-1">
                                        <form:label path="Vendor" class="col-md-4 col-form-label" for="Vendor">Vendor</form:label>
                                        <div class="col-md-8">
                                            <form:input type="text" class="form-control"  path="Vendor" id="Vendor"/>
                                        </div>
                                    </div>
                                    <div class="form-group row py-1">
                                        <form:label path="Amount" class="col-md-4 col-form-label" for="Amount">Amount</form:label>
                                        <div class="col-md-8">
                                            <form:input type="text" class="form-control"  path="Amount" id="Amount"/>
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
