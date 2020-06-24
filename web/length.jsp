<%-- 
    Document   : length
    Created on : Oct 12, 2019, 6:56:19 AM
    Author     : Sivaswamy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script>function formula() {
	var select = document.getElementById('selectOption');
 	var selectOption = select.options[select.selectedIndex].value;

    if(selectOption === "m") {
    		reset();
    		document.getElementById("output").style.visibility="visible";
			document.getElementById('lbsInput').addEventListener('input',function(e){
			let lbs=e.target.value;
			document.getElementById('fOutput').innerHTML=lbs * 1;
			document.getElementById('cOutput').innerHTML = ( lbs * 1.6093 ).toFixed(2);
			document.getElementById('kOutput').innerHTML = ( lbs / 1.150 ).toFixed(2);
			document.getElementById('mOutput').innerHTML = ( lbs  / 761.207 ).toFixed(2);
		})

    } else if(selectOption === "k") {
    		reset();
    		document.getElementById("output").style.visibility="visible";
			document.getElementById('lbsInput').addEventListener('input',function(e){
			let lbs=e.target.value;
			document.getElementById('cOutput').innerHTML=lbs * 1;
			document.getElementById('fOutput').innerHTML = (lbs / 1.609 ).toFixed(2);
			document.getElementById('kOutput').innerHTML = ( lbs  / 1.852 ).toFixed(2);
			document.getElementById('mOutput').innerHTML = ( lbs  / 1225.044 ).toFixed(2);
			})

    } 
	else if(selectOption === "kn") {
    		reset();
    		document.getElementById("output").style.visibility="visible";
			document.getElementById('lbsInput').addEventListener('input',function(e){
			let lbs=e.target.value;
			document.getElementById('kOutput').innerHTML=lbs * 1;
			document.getElementById('fOutput').innerHTML = ( lbs  * 1.150 ).toFixed(2);
			document.getElementById('cOutput').innerHTML = (lbs * 1.852 ).toFixed(2);
			document.getElementById('mOutput').innerHTML = ( lbs  / 661.470 ).toFixed(2);
			})

    }
else if(selectOption === "ma") {
    		reset();
    		document.getElementById("output").style.visibility="visible";
			document.getElementById('lbsInput').addEventListener('input',function(e){
			let lbs=e.target.value;
			document.getElementById('mOutput').innerHTML=lbs * 1;
			document.getElementById('fOutput').innerHTML = (lbs  * 1.150  ) .toFixed(2);
			document.getElementById('cOutput').innerHTML = (lbs * 1.852 ).toFixed(2);
			document.getElementById('kOutput').innerHTML = ( lbs  / 661.470 ).toFixed(2);
			})

    }	
	else if(selectOption === "default"){
    	document.getElementById("output").style.visibility="hidden";
    	}
}
function reset(){
	document.getElementById("lbsInput").value="";
	document.getElementById("lbsInput") .focus();
}
</script>
</head>
<body>
<div class="container">
  <div class="jumbotron">
<form>
	<div class="form-group row">
		<div class="col col-sm-8">
			<input id="lbsInput" type="number" class="form-control form-control-lg mr-2 mb-2" placeholder="Input Value..." autocomplete="off">
		</div>
		
  <div class="col-xs-2">
		
			<select id="selectOption" name="selectOption" class="form-control form-control-lg" onchange="formula(this)">
				<option selected value="default">From...</option>
				<option value="m">MPH</option>
				<option value="k" >KPH</option>
				<option value="kn" >Knots</option>
				<option value="ma" >Mach</option>
			</select>
		</div>
	</div>
</form>
<div id="output">

	<div class="card mt-2 bg-info pl-2">
		<div class="card-block">
			<h4>MPH:</h4>
			<div id="fOutput"></div>
		</div>
	</div>

	<div class="card mt-2 bg-success pl-2">
		<div class="card-block">
			<h4>KPH:</h4>
			<div id="cOutput"></div>
		</div>
	</div>

	<div class="card bg-warning mt-2">
		<div class="card-block pl-2">
			<h4>Knots:</h4>
			<div id="kOutput"></div>
		</div>
	</div>
	<div class="card bg-primary mt-2">
		<div class="card-block pl-2">
			<h4>Mach:</h4>
			<div id="mOutput"></div>
		</div>
	</div>

	
</div></div></div>
</body>
</html>