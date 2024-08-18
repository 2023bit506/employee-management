<%@include file="header.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title><style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            color: #333;
            background: #f4f4f4; /* Light gray background for the body */
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            padding: 20px;
            min-height: 100vh;
        }

        .info-section {
            background: #fff; /* White background for the info section */
            border-radius: 8px; /* Rounded corners */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow for depth */
            padding: 20px;
            max-width: 800px; /* Max width to keep it manageable */
            margin: 20px;
            text-align: left;
        }

        .info-section h2 {
            font-size: 2rem;
            margin-bottom: 20px;
            color: #2c3e50; /* Darker text color for headings */
        }

        .info-section p {
            font-size: 1rem;
            line-height: 1.6; /* Line height for readability */
            margin-bottom: 15px;
        }

        .info-section ul {
            list-style-type: disc;
            margin-left: 20px;
        }

        .info-section ul li {
            margin-bottom: 10px;
        }

        .info-section a {
            color: #3498db; /* Blue color for links */
            text-decoration: none;
        }

        .info-section a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
   
    <div class="container">
        <div class="info-section">

            <h2>About the Employee Management System</h2>
            <p>
                The Employee Management System (EMS) is designed to streamline the management of employee information and activities within an organization. With its intuitive interface and comprehensive features, EMS facilitates efficient handling of employee data, including personal details, job roles, performance metrics, and more.
            </p>
            <p>
                Key features of the Employee Management System include:
            </p>
            <ul>
                <li>Employee Profile Management: Maintain up-to-date records of employee information, including contact details, job titles, and departments.</li>
                <li>Attendance Tracking: Monitor employee attendance, leave requests, and work hours with ease.</li>
                <li>Performance Evaluation: Assess employee performance through periodic evaluations and feedback.</li>
                <li>Payroll Management: Simplify payroll processing with integrated salary calculations and tax deductions.</li>
                <li>Reporting and Analytics: Generate detailed reports and insights to make informed HR decisions.</li>
            </ul>
            <p>
                For more information or support, please visit our <a href="https://example.com/support">support page</a> or contact our help desk.
            </p>
        </div>
    </div>

</body>
</html>
