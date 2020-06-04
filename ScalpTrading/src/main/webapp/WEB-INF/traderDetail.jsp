<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Update Profile</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="style/style.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <jsp:include page="navbar.jsp"/>
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: black;
}

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.saveProfileChangesbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.saveProfileChangesbtn:hover {
  opacity: 1;
}

/* Set a style for the submit button */
.deletebtn {
  background-color: red;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}
/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}
</style>
</head>
<body>
<h1 align="center" style="width: 100%;">Trader Details</h1>
<br>
<h4 style="font-color: white;">
<table style="width: 100%; border: 1px solid white;">
	<tr align="center" style="font-color: white;">
		<td>Reference ID</td>
		<td>Date of Trade</td>
		<td>Time of Trade</td>
		<td>Underlying</td>
		<td>Expiration Date</td>
		<td>Strike Price</td>
		<td>Type of Trade</td>
		<td>Open Interest</td>
		<td>IND</td>
		<td>Exchange Code</td>
		<td>Spread</td>
		<td>Premium Price</td>
		<td>Size</td>
		<td>Bid Size</td>
		<td>Bid Price</td>
		<td>Ask Price</td>
		<td>Ask Size</td>
		<td>Edge</td>
		<td>Lean Size</td>
		<td>Size Ratio</td>
		<td>Delta Δ</td>
		<td>Theta Θ</td>
		<td>Vega ν</td>
		<td>Gamma Γ</td>
		<td>Sigm Σ</td>
		<td>Rho Ρ</td>
	</tr>
	<tr align="center">		
		<td>${trader.referenceId}</td>
		<td>${trader.tradeDate}</td>
		<td>${trader.timeOfTrade}</td>
		<td>${trader.underlying}</td>
		<td>${trader.expirationDate}</td>
		<td>${trader.strikePrice}</td>
		<td>${trader.tradeType}</td>
		<td>${trader.openInterest}</td>
		<td>${trader.ind}</td>
		<td>${trader.exchangeCode}</td>
		<td>${trader.spread}</td>
		<td>${trader.premiumPrice}</td>
		<td>${trader.size}</td>
		<td>${trader.bidSize}</td>
		<td><fmt:formatNumber value="${trader.bidPrice}" type="currency" currencySymbol=""/></td>
		<td><fmt:formatNumber value="${trader.askPrice}" type="currency" currencySymbol=""/></td>
		<td>${trader.askSize}</td>
		<td>${trader.edge}</td>
		<td>${trader.leanSize}</td>
		<td>${trader.sizeRatio}</td>
		<td><fmt:formatNumber value="${trader.delta}" type="currency" currencySymbol=""/></td>
		<td><fmt:formatNumber value="${trader.theta}" type="currency" currencySymbol=""/></td>
		<td><fmt:formatNumber value="${trader.vega}" type="currency" currencySymbol=""/></td>
		<td><fmt:formatNumber value="${trader.gamma}" type="currency" currencySymbol=""/></td>
		<td><fmt:formatNumber value="${trader.sigma}" type="currency" currencySymbol=""/></td>
		<td><fmt:formatNumber value="${trader.rho}" type="currency" currencySymbol=""/></td>
	</tr>
</table>
</h3>


</body>
</html>