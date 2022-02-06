<%--
  Created by IntelliJ IDEA.
  User: tacgee
  Date: 2/4/22
  Time: 11:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pizza</title>
    <%@ include file="partials/head.jsp" %>
</head>
<body>

<div class="container">
    <h1>Edit your pizza</h1>
    <form action="/pizza-order" method="POST">
        <div class="form-group">
            <label for="crust-type">What type of crust?</label>
            <select name="crust-type" id="crust-type">
                <option value="thin">Thin</option>
                <option value="handtossed">Hand Tossed</option>
                <option value="deepdish">Deep Dish</option>
            </select>
        </div>
        <div class="form-group">
            <label for="sauce-type">What type of sauce?</label>
            <select name="sauce-type" id="sauce-type">
                <option value="marinara">Marinara</option>
                <option value="alfredo">Alfredo</option>
                <option value="none">None</option>
            </select>
        </div>
        <div class="form-group">
            <label for="size-type">How big?</label>
            <select name="size-type" id="size-type">
                <option value="large">Large</option>
                <option value="medium">Medium</option>
                <option value="personal">Personal</option>
            </select>
        </div>
        <div class="form-group">
            <%--            <label for="toppings">Which toppings?</label>--%>
            <div class="card-header">Choose Meats</div>
            <ul class="list-group list-group-flush">
                <div class="form-check p-0">
                    <li class="list-group-item">
                        <input class="form-check-input ml-1" type="checkbox" name="meats" id="meat1" value="beef">
                        <label class="form-check-label ml-4" for="meat1">Beef</label>
                    </li>
                    <li class="list-group-item">
                        <input class="form-check-input ml-1" type="checkbox" name="meats" id="meat2" value="ham">
                        <label class="form-check-label ml-4" for="meat2">Ham</label>
                    </li>
                    <li class="list-group-item">
                        <input class="form-check-input ml-1" type="checkbox" name="meats" id="meat3" value="steak">
                        <label class="form-check-label ml-4" for="meat3">Philly Steak</label>
                    </li>
                    <li class="list-group-item">
                        <input class="form-check-input ml-1" type="checkbox" name="meats" id="meat4" value="bacon">
                        <label class="form-check-label ml-4" for="meat4">Bacon</label>
                    </li>
                </div>
            </ul>
        </div>
        <div class="card m-sm-2">
            <div class="card-header">Choose Non-Meats</div>
            <ul class="list-group list-group-flush">
                <div class="form-check p-0">
                    <li class="list-group-item">
                        <input class="form-check-input ml-1" type="checkbox" name="nonmeat" id="nonmeat1"
                               value="greenPepper">
                        <label class="form-check-label ml-4" for="nonmeat1">Green Peppers</label>
                    </li>
                    <li class="list-group-item">
                        <input class="form-check-input ml-1" type="checkbox" name="nonmeat" id="nonmeat2"
                               value="mushroom">
                        <label class="form-check-label ml-4" for="nonmeat2">Mushrooms</label>
                    </li>
                    <li class="list-group-item">
                        <input class="form-check-input ml-1" type="checkbox" name="nonmeat" id="nonmeat3" value="onion">
                        <label class="form-check-label ml-4" for="nonmeat3">Onions</label>
                    </li>
                    <li class="list-group-item">
                        <input class="form-check-input ml-1" type="checkbox" name="nonmeat" id="nonmeat4"
                               value="jalepeno">
                        <label class="form-check-label ml-4" for="nonmeat4">Jalepeño Peppers</label>
                    </li>
                </div>
            </ul>
        </div>
        <div class="form-group">
            <label for="address">Where is this going?</label>
            <input id="address" name="address" class="form-control" type="text">
        </div>
        <input type="submit" class="btn btn-primary btn-block" value="Submit"/>
    </form>
</div>
</body>
</html>
