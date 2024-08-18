<%@include file="header.jsp" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Add Employee</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet"
            id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link rel="stylesheet" type="text/css" href="/resources/css/reg.css">

        <!-- SweetAlert CDN -->
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </head>

    <body id="grad">
        <form action="saveEmployee" method="post" onsubmit="handleFormSubmission(event)">
            <div class="container register">
                <div class="row">
                    <div class="col-md-3 register-left">

                        <h3>Welcome</h3>

                    </div>
                    <div class="col-md-9 register-right">
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <h3 class="register-heading">Add Employee</h3>
                                <div class="row register-form">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="User Name *"
                                                name="userName" required />
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" placeholder="Password *"
                                                name="password" required/>
                                        </div>
                                        <div class="form-group">
                                            <select class="form-control" name="department" required>
                                                <option class="hidden" selected disabled>Please select department
                                                </option>
                                                <option value="IT">IT</option>
                                                <option value="HR">HR</option>
                                                <option value="Finance">Finance</option>
                                                <option value="Manager">Manager</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <div class="maxl">
                                                <label class="radio inline">
                                                    <input type="radio" name="gender" value="male" checked>
                                                    <span> Male </span>
                                                </label>
                                                <label class="radio inline">
                                                    <input type="radio" name="gender" value="female">
                                                    <span> Female </span>
                                                </label>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <select class="form-control" name="role" required>
                                                <option class="hidden" selected disabled>Select your role</option>
                                                <option value="admin">Admin</option>
                                                <option value="employee">Employee</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="email" class="form-control" placeholder="Your Email *"
                                                name="email" required/>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" minlength="10" maxlength="10" name="phone"
                                                class="form-control" placeholder="Your Phone *" required/>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Salary *"
                                                name="salary" required/>
                                        </div>
                                        <div class="form-group">
                                            <select class="form-control" name="question" required>
                                                <option class="hidden" selected disabled>Please select your Security
                                                    Question</option>
                                                <option value="What is your Birthdate?">What is your Birthdate?</option>
                                                <option value="What is Your old Phone Number">What is Your old Phone
                                                    Number?</option>
                                                <option value="What is your Pet Name?">What is your Nick Name?</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Enter Your Answer *"
                                                name="answer" required/>
                                        </div>
                                        <input type="submit" class="btnRegister" value="Register" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
		<%@include file="footer.jsp" %>
        <script>
            function handleFormSubmission(event) {
                event.preventDefault();
                $.ajax({
                    url: 'saveEmployee',
                    method: 'POST',
                    data: $('form').serialize(),
                    success: function (response) {
                        // Check if the response contains a success message
                        if (response && response.trim() === 'success') {
                            Swal.fire({
                                icon: 'error',
                                title: 'Oops...',
                                text: 'Something went wrong!',

                            });

                        } else {
                            // Handle other response scenarios (e.g., error messages)
                            Swal.fire({
                                icon: 'success',
                                title: 'Employee Inserted Successfully',
                                showConfirmButton: false,
                                timer: 4000
                            });
                        }
                    },
                    error: function () {
                        Swal.fire({
                            icon: 'error',
                            title: 'Oops...',
                            text: 'Something went wrong!',
                        });
                    }
                });
            }
        </script>
		
    </body>
	
    </html>
	
