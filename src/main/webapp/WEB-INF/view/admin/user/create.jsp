<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Create User</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
            </head>

            <body>
                <div class="container py-5">
                    <div class="col-md-6 col-12 mx-auto p-4 shadow rounded bg-light">
                        <h3 class="text-center mb-4">Create a User</h3>
                        <form method="post" action="/admin/user/create" modelAttribute="newUser" class="row g-3"
                            enctype="multipart/form-data">

                            <div class="col-md-6">
                                <label class="form-label">Email:</label>
                                <input type="email" class="form-control" name="email" required />
                            </div>

                            <div class="col-md-6">
                                <label class="form-label">Password:</label>
                                <input type="password" class="form-control" name="password" required />
                            </div>

                            <div class="col-md-6">
                                <label class="form-label">Phone number:</label>
                                <input type="text" class="form-control" name="phone" required />
                            </div>

                            <div class="col-md-6">
                                <label class="form-label">Full Name:</label>
                                <input type="text" class="form-control" name="fullName" required />
                            </div>

                            <div class="col-12">
                                <label class="form-label">Address:</label>
                                <input type="text" class="form-control" name="address" required />
                            </div>

                            <div class="col-12 text-center">
                                <button type="submit" class="btn btn-primary px-4">Create</button>
                            </div>
                        </form>
                    </div>
                </div>

                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
            </body>

            </html>