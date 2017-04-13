<cfquery name="blueTeam" datasource="Sample">
	SELECT *
	FROM Employees E
	WHERE E.teamID = 2;
</cfquery>

<cfquery name="blueTeamCount" datasource="Sample">
	SELECT count(teamID)
	FROM Employees E
	WHERE E.teamID = 2;
</cfquery>
<html>
	<head>
		Blue Team (<cfoutput>#blueTeamCount#</cfoutput>)
	</head>
	<body>
			<table>
				<tr>
					<td>
					Row Number
					</td>
					<td>
					First Name
					</td>
					<td>
					Last Name
					</td>
				</tr>
				<cfloop query="blueTeam">
					<tr>
						<td>
								<cfoutput>#blueTeam.employeeID#</cfoutput>
						</td>
						<td>
								<cfoutput>#blueTeam.firstName#</cfoutput>
						</td>
						<td>
								<cfoutput>#blueTeam.firstName#</cfoutput>
						</td>
					</tr>
				</cfloop>
			</table>
	</body>
</html>

<cfscript>
	
</cfscript>