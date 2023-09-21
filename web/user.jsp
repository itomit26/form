<%-- 
    Document   : user_management_page
    Created on : 05 29, 23, 9:52:11 PM
    Author     : TJs
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
        <link href="https://fonts.googleapis.com/css?family=Poppins:400,700,900|Open+Sans:400,700,900" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Roboto:400,700,900|Lora:400,700,900" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <title>ALT Solutions-User</title>
        <style>
            html, body {
                height: 100%;
                margin: 0;
                padding: 0;
            }

            label{
                font-family: 'Poppins', sans-serif !important;
            }
            table {
                border-collapse: collapse;
                width: 100%;
            }

            th, td {
                text-align: left;
                padding: 8px;
            }

            th {
                background-color: #050321;
                color: white;
            }

            tr:nth-child(even) {
                background-color: #f2f2f2;
            }

            a {
                color: #4CAF50;
            }

            .actions {
                display: flex;
                justify-content: flex-start;
            }

            .actions a {
                margin-left: 10px;
            }

            .add-user {
                margin-top: 20px;
                text-align: center;
            }

            .add-user button {

                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin-top: 10px;
                cursor: pointer;
                border-radius: 2rem;
            }

            form {
                display: inline-block;
                margin-bottom: 20px;
            }

            input[type="text"] {
                padding: 5px;
                font-size: 16px;
            }

            button[type="submit"] {
                padding: 0rem 1rem;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin-left: 10px;
                cursor: pointer;
                border-radius: 2rem;
            }
            .btn-link{
                color: red !important;
            }
        </style>
    </head>
    <body>
        <!-- LOADER -->
        <%@include file="loader.jsp" %>
        <!-- LOADER END-->

        <!-- SIDEBAR START -->
        <%@include file="Sidebar.jsp" %>
        <!-- SIDEBAR END -->

        <!-- DROPDOWN -->
        <%@include file="Dropdown.jsp" %>
        <!-- END -->
        <div class="row">
            <div class="col-lg-11" style="margin: 0 auto;">
                <div class="container">
                    <form>
                        <div class="mb-3 mt-5">           
                            <label for="userID" class="me-5">User ID:</label>
                            <input type="text" id="userID" name="userID">
                        </div>
                        <div>
                            <form method="GET">
                                <label for="firstName" class="me-2" >First Name:</label>
                                <input type="text" id="firstName" name="firstName" style="margin-left: 0.44rem;">
                            </form>
                        </div>
                        <div>
                            <button type="submit" class="btn btn-outline-danger btn-sm" style="margin-left: 6.6rem;border-radius: 0;">Search</button>
                        </div> 
                    </form>    
                    <hr>
                    <!--                   <div class="Form__Header mt-5 mb-2">
                                            <h3 class="text-center text-lg-left">"<c:out value="${userID}"/>"has been added</h3>
                                        </div>-->
                    <h2>User</h2>
                    <table id="myTable">
                        <thead>
                            <tr>
                                <th scope="col">User ID</th>
                                <th scope="col">User Name</th>
                                <th scope="col">Address</th>
                                <th scope="col">Birthday</th>
                                <th scope="col">Mobile Number</th>
                                <th scope="col">Account Status</th>
                                <th scope="col">Login Status</th>
                                <th scope="col">User Role</th>
                                <th scope="col">Actions</th>
                            </tr>
                        </thead>  
                        <tbody id="userTableBody">
                            <c:forEach items="${registerList}" var="register">
                                <tr>
                                    <td>${register.userID}</td>
                                    <td>${register.firstName} ${register.middleName} ${register.lastName}</td>
                                    <td>${register.address}</td>
                                    <td>${register.birthday}</td>
                                    <td>${register.mobileNumber}</td>
                                    <td>${register.accountStatus}</td>
                                    <td>${register.loginStatus}</td>
                                    <td>${register.userRole}</td>
                                    <td>
                                        <a href="${pageContext.request.contextPath}/customer/update/form?userID=${register.userID}" class="btn btn-sm btn-link">
                                            <i class="fa-sharp fa-solid fa-pen-to-square"></i>
                                        </a>
                                        <a href="${pageContext.request.contextPath}/customer/delete?userID=${register.userID}" class="btn btn-sm btn-link delete-link">
                                            <i class="fa-sharp fa-solid fa-trash"></i>
                                        </a>
                                    </td>
                                </tr></c:forEach>
                            <c:forEach items="${userList}" var="user">
                                <tr>
                                    <td>${user.userID}</td>
                                    <td>${user.firstName} ${user.middleName} ${user.lastName}</td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>${user.accountStatus}</td>
                                    <td>${user.loginStatus}</td> 
                                    <td>${user.userRole}</td>
                                    <td>
                                        <a href="${pageContext.request.contextPath}/user/update/form?userID=${user.userID}" class="btn btn-sm btn-link">
                                            <i class="fa-sharp fa-solid fa-pen-to-square"></i>
                                        </a>
                                        <a href="${pageContext.request.contextPath}/user/delete?userID=${user.userID}" class="btn btn-sm btn-link delete-link">
                                            <i class="fa-sharp fa-solid fa-trash"></i>
                                        </a>
                                    </td>
                                </tr> 
                            </c:forEach>
                        </tbody>
                    </table>
                    <div class="add-user mb-3">
                        <a href="${pageContext.request.contextPath}/user/create/form" class="btn btn-outline-danger" style="border-radius: 0;">Add New User</a>
                    </div>
                </div>
            </div>
        </div>
    </body>

    <!-- SCRIPT START -->
    <script>
        // JavaScript
        document.addEventListener("DOMContentLoaded", function () {
            const deleteLinks = document.getElementsByClassName("delete-link");

            function confirmDelete(event) {
                event.preventDefault(); // Prevent the link from navigating immediately

                const confirmation = confirm("Are you sure you want to delete this User?");
                if (confirmation) {
                    const deleteUrl = event.currentTarget.getAttribute("href");
                    // Navigate to the delete URL
                    window.location.href = deleteUrl;
                    // Show the success message after a short delay to give time for the deletion to process
                    setTimeout(() => {
                        window.alert("User has been deleted successfully.");
                    }, 3000);
                }
            }

            for (const link of deleteLinks) {
                link.addEventListener("click", confirmDelete);
            }
        });


    </script>
    <script>
        // Function to add a new product
        function addUser(userID, password, firstName, middleName, lastName, accountStatus, loginStatus, userRole) {
            // Get the table body element
            var tableBody = document.getElementById("userTableBody");

            // Create a new row
            var newRow = tableBody.insertRow();

            // Create and append the product information cells
            var userIDCell = newRow.insertCell();
            userIDCell.innerHTML = userID;

            var passwordCell = newRow.insertCell();
            passwordCell.innerHTML = password;


            var firstNameCell = newRow.insertCell();
            firstNameCell.innerHTML = firstName;

            var middleNameCell = newRow.insertCell();
            middleNameCell.innerHTML = middleName;

            var lastNameCell = newRow.insertCell();
            lastNameCell.innerHTML = lastName;

            var accountStatusCell = newRow.insertCell();
            accountStatusCell.innerHTML = accountStatus;

            var loginStatusCell = newRow.insertCell();
            loginStatusCell.innerHTML = loginStatus;

            var userRoleCell = newRow.insertCell();
            userRoleCell.innerHTML = userRole;
        }
    </script>
    <!-- SCRIPT END -->
</html>
