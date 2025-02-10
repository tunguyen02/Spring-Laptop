<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8">
                <meta name="viewport" content="width=device-width, initial-scale=1">
                <title>Delete User</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
            </head>

            <body>
                <div class="container mt-5">
                    <div class="row">
                        <div class="col-12 mx-auto">
                            <div class="d-flex justify-content-between">
                                <h3>Delete the user with ID: ${deleteUser.id}</h3>
                            </div>

                            <hr />

                            <div class="alert alert-danger">
                                Are you sure you want to delete this user?
                            </div>

                            <form:form method="post" action="/admin/user/delete" modelAttribute="deleteUser">
                                <form:hidden path="id" />

                                <button type="submit" class="btn btn-danger">Confirm</button>
                                <a href="/admin/user" class="btn btn-secondary">Cancel</a>
                            </form:form>
                        </div>
                    </div>
                </div>

                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
            </body>

            </html>