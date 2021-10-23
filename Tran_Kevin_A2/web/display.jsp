<%-- 
    Document   : display
    Created on : Oct 21, 2021, 8:41:54 PM
    Author     : kevin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Form</title>
    </head>
    <body  style="display: flex; align-self:center; justify-content: center; align-content: center; flex-direction: column;">
        <style>
            .small__container {
                display: flex;
                justify-content: center;
                align-content: center;
                flex-direction: row;
                height: 100%;
                border: 1px solid black;
                width: 100%;
            }
            .small__container__value1 {
                display: flex;
                justify-content: center;
                align-content: center;
                flex-direction: row;
                height: 100%;
                border-right: 1px solid black;
                width: 100%;
            }
            .small__container__value2 {
                display: flex;
                justify-content: center;
                align-content: center;
                flex-direction: row;
                height: 100%;
                border-left: 1px solid black;
                width: 100%;
            }
        </style>
        <h2 style="display: flex; justify-content: center; align-self: center; align-content: center; flex-direction: column;">${user.name}, thank you for your order</h2>
        <div style="border: 1px solid black; display: flex; justify-content: center; align-content: center; align-self: center; flex-direction: column; width:30%;">
            <div class="small__container">
                <p class="small__container__value1">Product</p>
                <p class="small__container__value2">${user.product}</p>
            </div>  
            <div class="small__container">
                <p class="small__container__value1">Quantity</p>
                <p class="small__container__value2">${user.quantity}</p>
            </div>
            <div class="small__container">
                <p class="small__container__value1">Order Total</p>
                <p class="small__container__value2">$${user.fullPrice}</p>
            </div>
            <div class="small__container">
                <p class="small__container__value1">Shipping Address</p>
                <p class="small__container__value2">${user.shipping}</p>
            </div>
            <div class="small__container">
                <p class="small__container__value1">Credit Card</p>
                <p class="small__container__value2">${user.credit}</p>
            </div>
        </div>
    </body>
</html>
