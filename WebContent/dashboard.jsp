<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<script
	src="https://cdn.anychart.com/releases/8.0.0/js/anychart-base.min.js"></script>

<link rel="stylesheet" href="dashboard.css">
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				<a href="#" class="navbar-brand"> Learning Dashboard System </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/dashboard.jsp"
					class="nav-link">Dashboard</a></li>
			</ul>
		</nav>
	</header>
	<br>

	<div class="row">


		<div class="container">
			<h3 class="text-center">Visualisation of course</h3>
			<hr>

			<br>
			<div id="demo"></div>
			<div id="demo1"></div>
			<div id="demo2"></div>



		</div>
		<script>
			anychart.onDocumentReady(function() {

				// set the data
				var data = {
					header : [ "Name", "Literacy" ],
					rows : [ [ "GA 8: Digital Literacy (n=16)", 40 ],
							[ "GA 5: Descipline Knowledge (n=73)", 50 ],
							[ "GA 4: Criticla thinking(n=72)", 60 ],
							[ "GA 3: Ethics (n=87)", 90 ],
							[ "GA 2: Common Good (n=76)", 70 ],

					]
				};

				// create the chart
				var chart = anychart.bar();

				// add data
				chart.data(data);

				// set the chart title
				chart.title("GA2: Common Good");

				// draw
				chart.container("demo");
				chart.draw();
				
			});
			anychart.onDocumentReady(function() {

				// set the data
				var data = {
					header : [ "Name", "Literacy" ],
					rows : [ [ "GA 8: Digital Literacy (n=16)", 40 ],
							[ "GA 5: Descipline Knowledge (n=73)", 50 ],
							[ "GA 4: Criticla thinking(n=72)", 60 ],
							[ "GA 3: Ethics (n=87)", 90 ],
							[ "GA 2: Common Good (n=76)", 70 ],

					]
				};

				// create the chart
				var chart = anychart.bar();

				// add data
				chart.data(data);

				// set the chart title
				chart.title("GA3: Ethics");

				// draw
				chart.container("demo1");
				chart.draw();
				
			});
			
			anychart.onDocumentReady(function() {

				// set the data
				var data = {
					header : [ "Name", "Literacy" ],
					rows : [ [ "GA 8: Digital Literacy (n=16)", 40 ],
							[ "GA 5: Descipline Knowledge (n=73)", 50 ],
							[ "GA 4: Criticla thinking(n=72)", 60 ],
							[ "GA 3: Ethics (n=87)", 90 ],
							[ "GA 2: Common Good (n=76)", 70 ],

					]
				};

				// create the chart
				var chart = anychart.bar();

				// add data
				chart.data(data);

				// set the chart title
				chart.title("GA2: Critical Thinking");

				// draw
				chart.container("demo2");
				chart.draw();
				
			});
			
		</script>


	</div>

</body>
</html>