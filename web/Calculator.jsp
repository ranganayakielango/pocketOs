<%-- 
    Document   : Calculator
    Created on : Oct 11, 2019, 8:01:08 PM
    Author     : Sivaswamy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>

body {
background: #83a4d4; /* fallback for old browsers */
background: -webkit-linear-gradient(to left, #83a4d4 , #b6fbff); /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to left, #83a4d4 , #b6fbff); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */      
}
input{
  border: none;
}
button {
  height: 50px;
  width: 50px;
  margin: 10px 4px;
  box-shadow: inset 1px 1px 50px  #0066FF;
  border: none !important;
}
*:focus {
    outline: 0 !important;
}
#allClear {
  box-shadow: inset 1px 1px 50px  #990000;
  border: none;
}
#clear {
  box-shadow: inset 1px 1px 50px  #CC6600;
  border: none;
}
#equals{
  box-shadow: inset 1px 1px 50px #006633;
  border: none;
}
/* Hidden button for formatting sake */
#blank {
  visibility: hidden;
}
.calcBG {
  width: 280px;
  background-color: #0000CC;
  border-radius: 20px;
  padding: 20px;
  margin-top: 50px;
  margin-bottom: 50px;
  box-shadow: inset 1px 1px 50px #000;
  margin: 25vh auto;
}
.screen {
  height: 40px;
  border-radius: 10px;
  padding: 10px;
  margin: 10px 2px;
  font-size: 16px;
  font-weight: bold;
  

background: #8e9eab; /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #8e9eab , #eef2f3); /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #8e9eab , #eef2f3); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
        
  box-shadow: 0px 4px  #000099 inset;
  
}
small {
  color: #fff;
  font-weight: bold;
}
</style>
<script>
function myFunction(id) {
    
         
            document.calc.result.value+=id;
}

// Clears calculator input screen
function clearScreen() {
  document.calc.result.value="";
}

// Calculates input values
function calculate() {
  try {
    var input = eval(document.calc.result.value);
    document.calc.result.value=input;
  } catch(err){
      document.calc.result.value="Error";
    }
}
</script>
<body>
    <button type="button" class="btn btn-primary btn-lg btn-block text-left" >
    <a href="index.jsp">
	<font color="white">
          HOME<span class="glyphicon glyphicon-home"></span></font>
        </a></button>
<div class="container text-center" id="calc">
  <div class="calcBG text-center">
    <div class="row">
     
    </div>
    <div class="row" id="result">
      <form name="calc">
        <input type="text" class="screen text-right" name="result" readonly align="right">
      </form>
    </div>
    <div class="row">
      <button id="allClear" type="button" class="btn btn-danger" onclick="clearScreen()">AC</button>
      <button id="clear" type="button" class="btn btn-warning" onclick="clearScreen()">CE</button>
      <button id="%" type="button" class="btn btn-info" onclick="myFunction(this.id)">%</button>
      <button id="/" type="button" class="btn btn-info" onclick="myFunction(this.id)">÷</button>
    </div>
    <div class="row">
      <button id="7" type="button" class="btn btn-info" onclick="myFunction(this.id)">7</button>
      <button id="8" type="button" class="btn btn-info" onclick="myFunction(this.id)">8</button>
      <button id="9" type="button" class="btn btn-info" onclick="myFunction(this.id)">9</button>
      <button id="*" type="button" class="btn btn-info" onclick="myFunction(this.id)">x</button>
    </div>
    <div class="row">
      <button id="4" type="button" class="btn btn-info" onclick="myFunction(this.id)">4</button>
      <button id="5" type="button" class="btn btn-info" onclick="myFunction(this.id)">5</button>
      <button id="6" type="button" class="btn btn-info" onclick="myFunction(this.id)">6</button>
      <button id="-" type="button" class="btn btn-info" onclick="myFunction(this.id)">-</button>
    </div>
    <div class="row">
      <button id="1" type="button" class="btn btn-info" onclick="myFunction(this.id)">1</button>
      <button id="2" type="button" class="btn btn-info" onclick="myFunction(this.id)">2</button>
      <button id="3" type="button" class="btn btn-info" onclick="myFunction(this.id)">3</button>
      <button id="+" type="button" class="btn btn-info" onclick="myFunction(this.id)">+</button>
    </div>
    <div class="row">
      <button id="0" type="button" class="btn btn-info" onclick="myFunction(this.id)">0</button>
      <button id="." type="button" class="btn btn-info" onclick="myFunction(this.id)">.</button>
      <button id="equals" type="button" class="btn btn-success" onclick="calculate()">=</button>
      <button id="blank" type="button" class="btn btn-info">&nbsp;</button>
    </div>
  </div>
</div>
</body></html>