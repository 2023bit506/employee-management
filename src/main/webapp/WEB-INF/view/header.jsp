<html>
<head>
    <title>Header</title>
    <style>
        a {
            color: white !important;
        }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-primary">
        <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <center>
            <div class="collapse navbar-collapse" id="navbarNav" style="color:white">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="homePage">Home</a>
                    </li>
					
					<%
					String role = (String)session.getAttribute("role");
					if(role.equalsIgnoreCase("admin"))
					{
						%>
						<li class="nav-item">
						      <a class="nav-link" href="addEmployees">Add Employees</a>
						</li>
						<%
					}
					%>		                  
					
					
                    <li class="nav-item">
                        <a class="nav-link" href="getAllEmployees">List Of Employees</a>
                    </li>
                    <li class="nav-item">
						<a class="nav-link" href="getEmployeeById?eid=<%= session.getAttribute("id") %>&msg=null">Profile (<%= session.getAttribute("username") %>)</a>

                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="logout?eid=<%= session.getAttribute("id") %>">Logout</a>
                    </li>
                </ul>
            </div>
        </center>
        </div>
    </nav>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXlJtcfN4OL3kcnSNF5z1hbPp9VVFG+8ZNuW0V8F76G5p5p1l5h2y4UjzH8h" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-c5B24IFThmY3u7GiRTtwkGFDRHbFgIsk0WYWe+5dyD8aG2jtP4rypM7g6Jpaz9d" crossorigin="anonymous"></script>
</body>
</html>
