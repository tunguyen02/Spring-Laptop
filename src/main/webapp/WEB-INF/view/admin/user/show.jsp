<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>User Details</title>
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
        </head>

        <body>
            <div class="container mt-4">
                <h2 class="mb-3">User Details</h2>

                <table class="table table-bordered">
                    <tr>
                        <th>ID:</th>
                        <td>${user.id}</td>
                    </tr>
                    <tr>
                        <th disable="true">Email:</th>
                        <td>${user.email}</td>
                    </tr>
                    <tr>
                        <th>Full Name:</th>
                        <td>${user.fullName}</td>
                    </tr>
                    <tr>
                        <th>Address:</th>
                        <td>${user.address}</td>
                    </tr>
                </table>

                <a href="/admin/user" class="btn btn-secondary">Back to List</a>
                <a href="/admin/user/update?id=${user.id}" class="btn btn-warning">Update</a>
                <a href="/admin/user/delete?id=${user.id}" class="btn btn-danger">Delete</a>
            </div>

            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        </body>

        </html>