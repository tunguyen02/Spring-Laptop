<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1" />
                <title>Update User</title>
                <link href="/css/styles.css" rel="stylesheet" />
            </head>

            <body>
                <div class="col-md-6 col-12 mx-auto">
                    <h3>Update User</h3>
                    <hr />
                    <form:form method="post" action="/admin/user/update" modelAttribute="updateUser" class="row">
                        <form:hidden path="id" />

                        <div class="mb-3 col-12 col-md-6">
                            <label class="form-label">Email:</label>
                            <form:input type="email" class="form-control" path="email" readonly="true"
                                disabled="true" />
                        </div>

                        <div class="mb-3 col-12 col-md-6">
                            <label class="form-label">Phone number:</label>
                            <form:input type="text" class="form-control" path="phone" />
                            <form:errors path="phone" cssClass="invalid-feedback" />
                        </div>

                        <div class="mb-3 col-12 col-md-6">
                            <label class="form-label">Full Name:</label>
                            <form:input type="text" class="form-control" path="fullName" />
                            <form:errors path="fullName" cssClass="invalid-feedback" />
                        </div>

                        <div class="mb-3 col-12">
                            <label class="form-label">Address:</label>
                            <form:input type="text" class="form-control" path="address" />
                        </div>

                        <div class="col-12 mb-5">
                            <button type="submit" class="btn btn-primary">Update</button>
                            <a href="/admin/user" class="btn btn-secondary">Cancel</a>
                        </div>
                    </form:form>
                </div>
            </body>

            </html>