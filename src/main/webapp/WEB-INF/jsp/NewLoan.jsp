<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
*{
margin:0;
padding:0;
}
body{
background-image:url(https://askleo.askleomedia.com/wp-content/uploads/2009/03/online-banking2.jpg);
background-position:center;
font-family:sans-serif;
background-repeat: no-repeat;
background-attachment: fixed;
background-size: cover;
}
.addticket
{
width=540px;
background-color:rgba(0,0,0,0.6);
margin-left:150px;
margin-right:150px;
margin-top:100px;
color:#FFFFFF;
padding:10px 0px 10px 0px;
text-align:center;
border-radius:15px 15px 0px 0px;
}
.main
{
background-color:rgba(0,0,0,0.4);
margin-left:150px;
margin-right:150px;
}
form
{padding:10px;
}
.amount
{
width:580px;
height:30px;
margin-left:80px;
text-size:20px
}
.button
{
margin-left:520px;
width:100px;
padding:8px;
margin-top:-50px;
}
h2
{
text-align:center;
color:#FFFFFF;
}
h3
{
margin-left:110px;
height:30px;
margin-top:5px;
color:#FFFFFF;
}
select
{
width:300px;
height:20px;
}
#duration
{
margin-left:100px;}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<div class="addticket"><h1>Apply Loan</h1></div>
<div class="main">
<form method="post" action="saveLoanStatus" modelAttribute="loanstatus">   
<div id="amount">
<h2>Please enter your Loan amount</h2>
<input class="amount" type="number" placeholder="Please enter your Loan amount here:" name="amount"/> <br>
<h3>Please Select Your Loan Duration</h3>
<div class="options">
<select name="duration" id="duration">
<option value="" disabled selected hidden>Choose your duration to pay money</option>
  <option value="3"><center>3</center></option>
  <option value="6">6</option>
  <option value="9">9</option>
  <option value="12">12</option>
    <option value="24">24</option>
  <option value="36">36</option>
  <option value="48">48</option>
</select>
  </div>
<button class="button" type="submit">Add Loan</button>
</div>
</form>  
</div>
</body>
</html>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  