<%-- 
    Document   : Convertor
    Created on : Oct 11, 2019, 8:02:39 PM
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
        <style>
        div.r{text-decoration:none;}
        .button {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 18px 40px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 20px;
  margin: 5px 4px;
  cursor: pointer;
}
.button:hover{
background-color:pink;
color:green;
}

        </style>
    </head>
    <body background="weigh_1.png">
      
    <button type="button" class="btn btn-primary btn-lg btn-block text-left" >
    <a href="index.jsp">
	<font color="white">
          HOME<span class="glyphicon glyphicon-home"></span></font>
        </a></button>
<div class="container">
  
  <ul class="nav nav-tabs">
    
    <li class="active"><a data-toggle="tab" href="#home">Speed</a></li>
	<li ><a data-toggle="tab" href="#menu1">Temperature</a></li>
    <li><a data-toggle="tab" href="#menu2">Weight</a></li>
    <li><a data-toggle="tab" href="#menu3">Length</a></li>
  </ul>

  <div class="tab-content">
    <div id="menu1"class="tab-pane fade" >
     <script>function formula2() {
	var select = document.getElementById('selectOption2');
 	var selectOption = select.options[select.selectedIndex].value;

    if(selectOption === "farenheit") {
    		reset();
    		document.getElementById("output2").style.visibility="visible";
			document.getElementById('lbsInput2').addEventListener('input',function(e){
			let lbs=e.target.value;
			document.getElementById('fOutput2').innerHTML=lbs * 1;
			document.getElementById('cOutput2').innerHTML = ((lbs - 32) * 0.55).toFixed(2);
			document.getElementById('kOutput2').innerHTML = ((( lbs - 32 ) * 0.55 ) + 273.15).toFixed(2);
			})

    } else if(selectOption === "celcius") {
    		reset();
    		document.getElementById("output2").style.visibility="visible";
			document.getElementById('lbsInput2').addEventListener('input',function(e){
			let lbs=e.target.value;
			document.getElementById('cOutput2').innerHTML=lbs * 1;
			document.getElementById('fOutput2').innerHTML = ((lbs * 1.8) + 32).toFixed(2);
			document.getElementById('kOutput2').innerHTML = ( lbs  + 273.15).toFixed(2);
			})

    } 
	else if(selectOption === "kelvin") {
    		reset();
    		document.getElementById("output2").style.visibility="visible";
			document.getElementById('lbsInput2').addEventListener('input',function(e){
			let lbs=e.target.value;
			document.getElementById('kOutput2').innerHTML=lbs * 1;
			document.getElementById('fOutput2').innerHTML = (((lbs  - 273.15) * 1.8 ) + 32).toFixed(2);
			document.getElementById('cOutput2').innerHTML = (lbs - 273.15 ).toFixed(2);
			})

    } 
	else if(selectOption === "default"){
    	document.getElementById("output2").style.visibility="hidden";
    	}
}
function reset(){
	document.getElementById("lbsInput2").value="";
	document.getElementById("lbsInput2") .focus();
}
</script>
<div class="container">
  <div class="jumbotron">
<form>
	<div class="form-group row">
		<div class="col col-sm-8">
			<input id="lbsInput2" type="number" class="form-control form-control-lg mr-2 mb-2" placeholder="Input Value..." autocomplete="off">
		</div>
		
  <div class="col-xs-2">
		
			<select id="selectOption2" name="selectOption2" class="form-control form-control-lg" onchange="formula2(this)">
				<option selected value="default">From...</option>
				<option value="farenheit">Farenheit</option>
				<option value="celcius" >Celcius</option>
				<option value="kelvin" >Kelvin</option>
			</select>
		</div>
	</div>
</form>
<div id="output2">

	<div class="card mt-2 bg-info pl-2">
		<div class="card-block">
			<h4>Farenheit:</h4>
			<div id="fOutput2"></div>
		</div>
	</div>

	<div class="card mt-2 bg-success pl-2">
		<div class="card-block">
			<h4>Celcius:</h4>
			<div id="cOutput2"></div>
		</div>
	</div>

	<div class="card bg-warning mt-2">
		<div class="card-block pl-2">
			<h4>Kelvin:</h4>
			<div id="kOutput2"></div>
		</div>
	</div>

	</div>
</div></div></div>
    <div id="home"  class="tab-pane fade in active">
     <script>function formula() {
	var select = document.getElementById('selectOption1');
 	var selectOption = select.options[select.selectedIndex].value;

    if(selectOption === "feet") {
    		reset();
    		document.getElementById("output1").style.visibility="visible";
			document.getElementById('lbsInput1').addEventListener('input',function(e){
			let lbs=e.target.value;
			document.getElementById('fOutput1').innerHTML=lbs * 1;
			document.getElementById('mOutput1').innerHTML = ( lbs  / 3.2808 ).toFixed(2);
			document.getElementById('iOutput1').innerHTML = (lbs * 12 ).toFixed(2);
			document.getElementById('cOutput1').innerHTML = ( lbs  / 0.032 ).toFixed(2);
			document.getElementById('yOutput1').innerHTML = (lbs * 0.333 ).toFixed(2);
			document.getElementById('kOutput1').innerHTML = ( lbs  / 3280.8 ).toFixed(2);
			document.getElementById('miOutput1').innerHTML = ( lbs  * 0.00018 ).toFixed(2);
			})

    } else if(selectOption === "meter") {
    		reset();
    		document.getElementById("output1").style.visibility="visible";
			document.getElementById('lbsInput1').addEventListener('input',function(e){
			let lbs=e.target.value;
			document.getElementById('mOutput1').innerHTML=lbs * 1;
			document.getElementById('fOutput1').innerHTML = ( lbs  * 3.2808 ).toFixed(2);
			document.getElementById('iOutput1').innerHTML = (lbs * 39.370 ).toFixed(2);
			document.getElementById('cOutput1').innerHTML = ( lbs  / 0.01 ).toFixed(2);
			document.getElementById('yOutput1').innerHTML = (lbs * 1.0936 ).toFixed(2);
			document.getElementById('kOutput1').innerHTML = ( lbs  / 1000 ).toFixed(2);
			document.getElementById('miOutput1').innerHTML = ( lbs  * 0.0006213 ).toFixed(2);
			})

    } 
	else if(selectOption === "inch") {
    		reset();
    		document.getElementById("output1").style.visibility="visible";
			document.getElementById('lbsInput1').addEventListener('input',function(e){
			let lbs=e.target.value;
			document.getElementById('iOutput1').innerHTML=lbs * 1;
			document.getElementById('mOutput1').innerHTML = ( lbs  / 39.370 ).toFixed(2);
			document.getElementById('fOutput1').innerHTML = (lbs * 0.0833 ).toFixed(2);
			document.getElementById('cOutput1').innerHTML = ( lbs  / 0.3937 ).toFixed(2);
			document.getElementById('yOutput1').innerHTML = (lbs * 0.0277 ).toFixed(2);
			document.getElementById('kOutput1').innerHTML = ( lbs  / 39370 ).toFixed(2);
			document.getElementById('miOutput1').innerHTML = ( lbs  / 0.0000157 ).toFixed(2);
			})

    }
else if(selectOption === "cm") {
    		reset();
    		document.getElementById("output1").style.visibility="visible";
			document.getElementById('lbsInput1').addEventListener('input',function(e){
			let lbs=e.target.value;
			document.getElementById('cOutput1').innerHTML=lbs * 1;
			document.getElementById('mOutput1').innerHTML = ( lbs  / 100 ).toFixed(2);
			document.getElementById('iOutput1').innerHTML = (lbs * 0.3937 ).toFixed(2);
			document.getElementById('fOutput1').innerHTML = ( lbs  * 0.032 ).toFixed(2);
			document.getElementById('yOutput1').innerHTML = (lbs * 0.0109 ).toFixed(2);
			document.getElementById('kOutput1').innerHTML = ( lbs  / 100000 ).toFixed(2);
			document.getElementById('miOutput1').innerHTML = ( lbs  * 0.000006 ).toFixed(2);
			})

    }
else if(selectOption === "yard") {
    		reset();
    		document.getElementById("output1").style.visibility="visible";
			document.getElementById('lbsInput1').addEventListener('input',function(e){
			let lbs=e.target.value;
			document.getElementById('yOutput1').innerHTML=lbs * 1;
			document.getElementById('mOutput1').innerHTML = ( lbs  / 1.0936 ).toFixed(2);
			document.getElementById('iOutput1').innerHTML = (lbs * 36 ).toFixed(2);
			document.getElementById('cOutput1').innerHTML = ( lbs  / 0.0109 ).toFixed(2);
			document.getElementById('fOutput1').innerHTML = (lbs * 3 ).toFixed(2);
			document.getElementById('kOutput1').innerHTML = ( lbs  / 1093.6 ).toFixed(2);
			document.getElementById('miOutput1').innerHTML = ( lbs  / 0.00056818 ).toFixed(2);
			})

    }
else if(selectOption === "km") {
    		reset();
    		document.getElementById("output1").style.visibility="visible";
			document.getElementById('lbsInput1').addEventListener('input',function(e){
			let lbs=e.target.value;
			document.getElementById('kOutput1').innerHTML=lbs * 1;
			document.getElementById('mOutput1').innerHTML = ( lbs  * 1000 ).toFixed(2);
			document.getElementById('iOutput1').innerHTML = (lbs * 39370 ).toFixed(2);
			document.getElementById('cOutput1').innerHTML = ( lbs  * 100000 ).toFixed(2);
			document.getElementById('yOutput1').innerHTML = (lbs * 1093.6 ).toFixed(2);
			document.getElementById('fOutput1').innerHTML = ( lbs  * 3280.8 ).toFixed(2);
			document.getElementById('miOutput1').innerHTML = ( lbs  * 0.62137 ).toFixed(2);
			})

    }	
	else if(selectOption === "mile") {
    		reset();
    		document.getElementById("output1").style.visibility="visible";
			document.getElementById('lbsInput1').addEventListener('input',function(e){
			let lbs=e.target.value;
			document.getElementById('miOutput1').innerHTML=lbs * 1;
			document.getElementById('mOutput1').innerHTML = ( lbs  / 0.00062137 ).toFixed(2);
			document.getElementById('iOutput1').innerHTML = (lbs * 63360 ).toFixed(2);
			document.getElementById('cOutput1').innerHTML = ( lbs  / 0.0000062 ).toFixed(2);
			document.getElementById('yOutput1').innerHTML = (lbs * 1760 ).toFixed(2);
			document.getElementById('kOutput1').innerHTML = ( lbs  / 0.62137 ).toFixed(2);
			document.getElementById('fOutput1').innerHTML = ( lbs  * 5280 ).toFixed(2);
			})

    }	
	else if(selectOption === "default"){
    	document.getElementById("output1").style.visibility="hidden";
    	}
}
function reset(){
	document.getElementById("lbsInput1").value="";
	document.getElementById("lbsInput1") .focus();
}
</script>
<div class="container">
  <div class="jumbotron">
<form>
	<div class="form-group row">
		<div class="col col-sm-8">
			<input id="lbsInput1" type="number" class="form-control form-control-lg mr-2 mb-2" placeholder="Input Value..." autocomplete="off">
		</div>
		
  <div class="col-xs-2">
		
			<select id="selectOption1" name="selectOption" class="form-control form-control-lg" onchange="formula(this)">
				<option selected value="default">From...</option>
				<option value="feet">Feet</option>
				<option value="meter" >Meter</option>
				<option value="inch" >Inch</option>
				<option value="cm" >Cm</option>
				<option value="yard" >Yards</option>
				<option value="km" >Km</option>
				<option value="mile">Mile</option>
			
			</select>
		</div>
	</div>
</form>
<div id="output1">

	<div class="card mt-2 bg-info pl-2">
		<div class="card-block">
			<h4>Feet:</h4>
			<div id="fOutput1"></div>
		</div>
	</div>

	<div class="card mt-2 bg-success pl-2">
		<div class="card-block">
			<h4>Meters:</h4>
			<div id="mOutput1"></div>
		</div>
	</div>

	<div class="card bg-warning mt-2">
		<div class="card-block pl-2">
			<h4>Inches:</h4>
			<div id="iOutput1"></div>
		</div>
	</div>
	<div class="card bg-primary mt-2">
		<div class="card-block pl-2">
			<h4>Centimeters:</h4>
			<div id="cOutput1"></div>
		</div>
	</div>
	<div class="card mt-2 bg-danger pl-2">
		<div class="card-block">
			<h4>Yards:</h4>
			<div id="yOutput1"></div>
		</div>
	</div>

	<div class="card bg-security mt-2">
		<div class="card-block pl-2">
			<h4>Kilometers:</h4>
			<div id="kOutput1"></div>
		</div>
	</div>
	<div class="card bg-warning mt-2">
		<div class="card-block pl-2">
			<h4>Miles:</h4>
			<div id="miOutput1"></div>
		</div>
	</div>

	
</div></div></div>
    </div>
    <div id="menu2" class="tab-pane fade">
      <script>function formula3() {
	var select = document.getElementById('selectOption3');
 	var selectOption = select.options[select.selectedIndex].value;

    if(selectOption === "pound") {
    		reset();
    		document.getElementById("output3").style.visibility="visible";
			document.getElementById('lbsInput3').addEventListener('input',function(e){
			let lbs=e.target.value;
			document.getElementById('poundOutput3').innerHTML=lbs * 1;
			document.getElementById('kgOutput3').innerHTML = (lbs * 0.453592).toFixed(2);
			document.getElementById('gramsOutput3').innerHTML = (lbs * 453.592).toFixed(2);
			document.getElementById('ozOutput3').innerHTML = (lbs * 16).toFixed(2);
                        document.getElementById('stoneOutput3').innerHTML = (lbs * 0.0714285).toFixed(2);
		})

    } else if(selectOption === "kg") {
    		reset();
    		document.getElementById("output3").style.visibility="visible";
			document.getElementById('lbsInput3').addEventListener('input',function(e){
			let lbs=e.target.value;
			document.getElementById('kgOutput3').innerHTML=lbs * 1;
			document.getElementById('poundOutput3').innerHTML = (lbs * 2.20462).toFixed(2);
			document.getElementById('gramsOutput3').innerHTML = (lbs * 1000).toFixed(2);
			document.getElementById('ozOutput3').innerHTML = (lbs * 35.274).toFixed(2);
                        document.getElementById('stoneOutput3').innerHTML = (lbs * 0.157473).toFixed(2);
		})

    } else if(selectOption === "default"){
    	document.getElementById("output3").style.visibility="hidden";
    	}
}
function reset(){
	document.getElementById("lbsInput3").value="";
	document.getElementById("lbsInput3") .focus();
}
</script>
<div class="container">
  <div class="jumbotron">
<form>
	<div class="form-group row">
		<div class="col col-sm-8">
			<input id="lbsInput3" type="number" class="form-control form-control-lg mr-2 mb-2" placeholder="Input Value..." autocomplete="off">
		</div>
		
  <div class="col-xs-2">
		
			<select id="selectOption3" name="selectOption" class="form-control form-control-lg" onchange="formula3(this)">
				<option selected value="default">From...</option>
				<option value="kg">Kg</option>
				<option value="pound" >Pound</option>
			</select>
		</div>
	</div>
</form>
<div id="output3">

	<div class="card mt-2 bg-info pl-2">
		<div class="card-block">
			<h4>Pound:</h4>
			<div id="poundOutput3"></div>
		</div>
	</div>

	<div class="card mt-2 bg-success pl-2">
		<div class="card-block">
			<h4>Grams:</h4>
			<div id="gramsOutput3"></div>
		</div>
	</div>

	<div class="card bg-warning mt-2">
		<div class="card-block pl-2">
			<h4>Ounces:</h4>
			<div id="ozOutput3"></div>
		</div>
	</div>

	<div class="card mt-2 bg-danger pl-2">
		<div class="card-block">
			<h4>KiloGrams:</h4>
			<div id="kgOutput3"></div>
		</div>
	</div>
        <div class="card mt-2 bg-primary pl-1">
		<div class="card-block">
			<h4>Stones:</h4>
			<div id="stoneOutput3"></div>
		</div>
	</div>
</div></div></div>

    </div>
    <div id="menu3" class="tab-pane fade">
      <script>function formula4() {
	var select = document.getElementById('selectOption4');
 	var selectOption = select.options[select.selectedIndex].value;

    if(selectOption === "m") {
    		reset();
    		document.getElementById("output4").style.visibility="visible";
			document.getElementById('lbsInput4').addEventListener('input',function(e){
			let lbs=e.target.value;
			document.getElementById('fOutput4').innerHTML=lbs * 1;
			document.getElementById('cOutput4').innerHTML = ( lbs * 1.6093 ).toFixed(2);
			document.getElementById('kOutput4').innerHTML = ( lbs / 1.150 ).toFixed(2);
			document.getElementById('mOutput4').innerHTML = ( lbs  / 761.207 ).toFixed(2);
		})

    } else if(selectOption === "k") {
    		reset();
    		document.getElementById("output4").style.visibility="visible";
			document.getElementById('lbsInput4').addEventListener('input',function(e){
			let lbs=e.target.value;
			document.getElementById('cOutput4').innerHTML=lbs * 1;
			document.getElementById('fOutput4').innerHTML = (lbs / 1.609 ).toFixed(2);
			document.getElementById('kOutput4').innerHTML = ( lbs  / 1.852 ).toFixed(2);
			document.getElementById('mOutput4').innerHTML = ( lbs  / 1225.044 ).toFixed(2);
			})

    } 
	else if(selectOption === "kn") {
    		reset();
    		document.getElementById("output4").style.visibility="visible";
			document.getElementById('lbsInput4').addEventListener('input',function(e){
			let lbs=e.target.value;
			document.getElementById('kOutput4').innerHTML=lbs * 1;
			document.getElementById('fOutput4').innerHTML = ( lbs  * 1.150 ).toFixed(2);
			document.getElementById('cOutput4').innerHTML = (lbs * 1.852 ).toFixed(2);
			document.getElementById('mOutput4').innerHTML = ( lbs  / 661.470 ).toFixed(2);
			})

    }
else if(selectOption === "ma") {
    		reset();
    		document.getElementById("output4").style.visibility="visible";
			document.getElementById('lbsInput4').addEventListener('input',function(e){
			let lbs=e.target.value;
			document.getElementById('mOutput4').innerHTML=lbs * 1;
			document.getElementById('fOutput4').innerHTML = (lbs  * 1.150  ) .toFixed(2);
			document.getElementById('cOutput4').innerHTML = (lbs * 1.852 ).toFixed(2);
			document.getElementById('kOutput4').innerHTML = ( lbs  / 661.470 ).toFixed(2);
			})

    }	
	else if(selectOption === "default"){
    	document.getElementById("output4").style.visibility="hidden";
    	}
}
function reset(){
	document.getElementById("lbsInput4").value="";
	document.getElementById("lbsInput4") .focus();
}
</script>
<div class="container">
  <div class="jumbotron">
<form>
	<div class="form-group row">
		<div class="col col-sm-8">
			<input id="lbsInput4" type="number" class="form-control form-control-lg mr-2 mb-2" placeholder="Input Value..." autocomplete="off">
		</div>
		
  <div class="col-xs-2">
		
			<select id="selectOption4" name="selectOption" class="form-control form-control-lg" onchange="formula4(this)">
				<option selected value="default">From...</option>
				<option value="m">MPH</option>
				<option value="k" >KPH</option>
				<option value="kn" >Knots</option>
				<option value="ma" >Mach</option>
			</select>
		</div>
	</div>
</form>
<div id="output4">

	<div class="card mt-2 bg-info pl-2">
		<div class="card-block">
			<h4>MPH:</h4>
			<div id="fOutput4"></div>
		</div>
	</div>

	<div class="card mt-2 bg-success pl-2">
		<div class="card-block">
			<h4>KPH:</h4>
			<div id="cOutput4"></div>
		</div>
	</div>

	<div class="card bg-warning mt-2">
		<div class="card-block pl-2">
			<h4>Knots:</h4>
			<div id="kOutput4"></div>
		</div>
	</div>
	<div class="card bg-primary mt-2">
		<div class="card-block pl-2">
			<h4>Mach:</h4>
			<div id="mOutput4"></div>
		</div>
	</div>

	
</div></div></div>

    </div>
  </div>
</div>

</body>
</html>
