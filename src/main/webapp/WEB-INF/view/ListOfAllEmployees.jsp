<%@ include file="header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>List Of All Employees</title>
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" id="bootstrap-css">
    <!-- SweetAlert CDN -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <style>

        .table-container {
            overflow-x: auto; /* Horizontal scrollbar */
            margin-top: 20px; /* Adjust as needed */
        }

        .table {
            width: 100%;
            max-width: 100%; /* Ensure table does not exceed container width */
        }

        /* Media Queries */
        @media (max-width: 992px) {
            /* Adjust styles for medium screens */
            .table-responsive {
                overflow-x: auto; /* Horizontal scrollbar for medium screens */
            }
        }
    </style>
</head>
<body>
    <div class="table-container">
        <table class="table table-dark table-striped">
            <thead>
                <tr>
                    <th scope="col">EMPLOYEE ID</th>
                    <th scope="col">USERNAME</th>
                    <%-- Display PASSWORD column only for admin --%>
                    <% 
                    String role1 = (String) session.getAttribute("role");
                    if (role1 != null && role1.equalsIgnoreCase("admin")) { %>
                        <th scope="col">PASSWORD</th>
                        <th scope="col">STATUS</th>
                    <% } %>
                    <th scope="col">CREATED DATE</th>
                    <th scope="col">GENDER</th>
                    <th scope="col">EMAIL</th>
                    <th scope="col">PHONE</th>
                    <th scope="col">ROLE</th>
                    <%-- Display SALARY column only for admin --%>
                    <% if (role1 != null && role1.equalsIgnoreCase("admin")) { %>
                        <th scope="col">SALARY</th>
                    <% } %>
                    <th scope="col">DEPARTMENT</th>
                    <%-- Display QUESTION column only for admin --%>
                    <% if (role1 != null && role1.equalsIgnoreCase("admin")) { %>
                        <th scope="col">QUESTION</th>
                    <% } %>
                    <%-- Display ANSWER column only for admin --%>
                    <% if (role1 != null && role1.equalsIgnoreCase("admin")) { %>
                        <th scope="col">ANSWER</th>
                    <% } %>
                    <%-- Display ACTION column only for admin --%>
                    <% if (role1 != null && role1.equalsIgnoreCase("admin")) { %>
                        <th scope="col">ACTION</th>
                    <% } %>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${employees}" var="emp">
                    <tr>
                        <td><c:out value="${emp.employeeId}" /></td>
                        <td><c:out value="${emp.userName}" /></td>
                        <%-- Display PASSWORD and STATUS columns only for admin --%>
                        <% if (role1 != null && role1.equalsIgnoreCase("admin")) { %>
                            <td><c:out value="${emp.password}" /></td>
                            <td><c:out value="${emp.status}" /></td>
                        <% } %>
                        <td><c:out value="${emp.createDate}" /></td>
                        <td><c:out value="${emp.gender}" /></td>
                        <td><c:out value="${emp.email}" /></td>
                        <td><c:out value="${emp.phone}" /></td>
                        <td><c:out value="${emp.role}" /></td>
                        <%-- Display SALARY column only for admin --%>
                        <% if (role1 != null && role1.equalsIgnoreCase("admin")) { %>
                            <td><c:out value="${emp.salary}" /></td>
                        <% } %>
                        <td><c:out value="${emp.department}" /></td>
                        <%-- Display QUESTION column only for admin --%>
                        <% if (role1 != null && role1.equalsIgnoreCase("admin")) { %>
                            <td><c:out value="${emp.question}" /></td>
                        <% } %>
                        <%-- Display ANSWER column only for admin --%>
                        <% if (role1 != null && role1.equalsIgnoreCase("admin")) { %>
                            <td><c:out value="${emp.answer}" /></td>
                        <% } %>
                        <%-- Display ACTION columns only for admin --%>
                        <% if (role1 != null && role1.equalsIgnoreCase("admin")) { %>
                            <td>
                                <a href="getEmployeeById?eid=${emp.employeeId}&msg=null" class="btn btn-success">EDIT</a>
                            </td>
                            <td>
                                <a href="deleteEmployee?eid=${emp.employeeId}" onclick="return confirmDelete(event)"
                                    class="btn btn-danger">DELETE</a>
                            </td>
                        <% } %>
                    </tr style="size: 10px solid black;">
                </c:forEach>
            </tbody>
        </table>
       
    </div>
    <%@include file="footer.jsp" %>
    <script>
        function confirmDelete(event) {
            event.preventDefault(); // Prevent the default link action
            Swal.fire({
                title: 'Are you sure?',
                text: 'You want to delete this employee!',
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, delete it!'
            }).then((result) => {
                if (result.isConfirmed) {
                    window.location.href = event.target.href; // Proceed with the link action
                }
            });
        }
    </script>

   
</body>
</html>
