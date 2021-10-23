<%-- 
    Document   : index
    Created on : Oct 21, 2021, 8:33:17 PM
    Author     : kevin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Form</title>
    </head>
    <body style="display: flex; justify-content: center; align-content: center; flex-direction: column;">
        <style>
            *, *::before, *::after {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        .error {
            color: red;
            font-size: 2rem;
        }

        section {
            position: relative;
            height: 100vh;
        }

        .main__container {
            align-self: center;
            justify-self: center;
        }

        .container {
            height: 100vh;
            width: 100%;
            z-index: 99;
            position: relative;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .bg__cover{
            width: 100%;
            height: 100vh;
            background-repeat: no-repeat;
            background-position: center;
            z-index: 10;
            position: absolute;
            top: 0;
            left: 0;
        }

        .form {
            width: 40%;
            height: 60vh;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            z-index: 100;
            background-color: #fff;
            position: relative;
        }

        .container__organizer {
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-direction: row;
            row-gap: 1rem;
            column-gap: 1rem;
            width: 80%;
        }

        .order__title {
            padding-bottom: 2rem;
        }

        #credit1 {
            border: none;
            display: flex;
            justify-content: center;
            align-self: center;
            flex-direction: column;
        }

        .radio__container {
            display: flex;
            justify-content: flex-start;
            align-content: center;
            flex-direction: row;
            column-gap: 0.5rem;
        }

        .labels {
            margin-top: -0.5rem;
        }

        .repeat__credit__number__text {
            justify-self: flex-end;
        }

        .divider {
            color: #121212;
            width: 90%;
            margin-left: 5%;
        }

        .button {

        }

        /*========================= DISPLAY ==================================*/
        .main__container__display {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .display__container {
            display: flex;
            justify-content: flex-start;
            align-items: flex-start;
            flex-direction: column;
            z-index: 100;
        }

        .mini__container {
            display: flex;
            justify-content: center;
            align-items: flex-start;
            flex-direction: column;
        }
        .main-container {
            display: flex;
            justify-content: center;
            align-content: center;
            flex-direction: column;
        }
        </style>
        <div class="main-container">
            <h1 style="align-self: center;" class="title">Order Form</h1>
            <form action="orderFinished" method="post" class="form" style="align-self: center; display: flex; justify-content: flex-start; align-content: center;">
                <div style="display: flex; justify-content: flex-start; align-content: flex-start; width: 461px;">
                    <h2>Product: </h2>
                    <input type="text" name="product" value="${user.product}" required>
                </div>
                <div style="display: flex; justify-content: flex-start; align-content: flex-start; width: 461px;">
                    <h2>Quantity: </h2>
                    <select name="quantity" id="quantity">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                    </select>
                </div>

                <div style="display: flex; justify-content: flex-start; align-content: flex-start;width: 461px;"> 
                    <h2>Unit Price:</h2>
                    <input type="text" name="price" value="${user.price}" required>
                </div>

                <div style="display: flex; justify-content: flex-start; align-content: flex-start;width: 461px;">
                    <h2>Name: </h2>
                    <input type="text" name="name" value="${user.name}" required>
                </div>
                <div style="display: flex; justify-content: flex-start; align-content: flex-start;width: 461px;">
                    <h2>Shipping Address: </h2>
                    <textarea name="shipping" cols="24" rows="4" required>

                    </textarea>
                </div>
                <div style="margin-top: 0.3rem; display: flex; justify-content: flex-start; align-content: flex-start; width: 461px;">
                    <h2>Credit Card:</h2>
                    <fieldset id="credit1">
                        <div class="radio__container">
                            <input type="radio" checked="checked" value="Visa" name="credit" id="visa" >
                            <label for="visa">Visa</label>
                        </div>

                        <div class="radio__container">
                            <input type="radio" value="Master Card" name="credit" id="masterCard">
                            <label for="masterCard" class="labels">Master Card</label>
                        </div>

                        <div class="radio__container">
                            <input type="radio" value="American Express" name="credit" id="americanExpress">
                            <label for="americanExpress" class="labels">American Express</label>
                        </div>

                        <div class="radio__container">
                            <input type="radio" value="Discover" name="credit" id="discover">
                            <label for="discover" class="labels">Discover</label>
                        </div>
                    </fieldset>
                </div>
                <div style="display: flex; justify-content: flex-start; align-content: flex-start; width: 461px;">
                    <h2>Credit Card Number:</h2>
                    <input type="password" name="creditNumber" required>
                </div>

                <div style="display: flex; justify-content: flex-start; align-content: flex-start; width: 480px;">
                    <h2>Repeat Credit Card Number:</h2>
                    <input type="password" class="repeat__credit__number__text" name="repeatCredit" required>
                </div>
                <hr class="divider">
                <input name="submit" type="submit">
            </form>
        </div>
    </body>
</html>
