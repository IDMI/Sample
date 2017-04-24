<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Sarah Goodman</title>
		<script>
			function init() {
				alert ("Welcome to the Blue Team, today's date is 04/24/2017";)
			}
			window.onload=init();
		</script>
	</head>
	<body>
		<div class="wrapper">

			<cfquery name="blueTeam" datasource="Sample">
				SELECT employee.managerID, employee.firstName, employee.lastName
				FROM employee
				WHERE teamColor = "blue";
			</cfquery>
			<cfquery name="count" datasource="Sample">
				SELECT COUNT(lastName)
				FROM employee
				WHERE teamColor = "blue";
			</cfquery>

			<header>
				<h1 style="color:blue;"> Blue Team (<cfoutput>#count#</cfoutput>)</h1>
			</header>

			<table>
				<tr>
					<th>Row Number:</th>
					<th>First Name:</th>
					<th>Last Name:</th>
				</tr>
				<cfloop query="blueTeam"></cfloop>
					<tr>
						<td style="font-weight:bold;"><cfoutput>#blueTeam.managerID#</cfoutput></td>
						<td style="font-weight:bold;"><cfoutput>#blueTeam.firstName#</cfoutput></td>
						<td style="font-weight:bold;"><cfoutput>#blueTeam.lastName#</cfoutput></td>
					</tr>
					<tr>
						<td><cfoutput>#blueTeam.managerID#</cfoutput></td>
						<td><cfoutput>#blueTeam.firstName#</cfoutput></td>
						<td><cfoutput>#blueTeam.lastName#</cfoutput></td>
					</tr>
					<tr>
						<td><cfoutput>#blueTeam.managerID#</cfoutput></td>
						<td><cfoutput>#blueTeam.firstName#</cfoutput></td>
						<td><cfoutput>#blueTeam.lastName#</cfoutput></td>
					</tr>
				</cfloop>  <!-- END CFLOOP -->

			</table> <!-- END TABLE -->

		</div> <!-- END DIV WRAPPER -->

	</body>
</html>