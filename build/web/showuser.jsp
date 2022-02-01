<%@page import="com.user.helper.ConnectionProvider"%>
<%@page import="com.user.dao.UserDao"%>
<%@page import="com.user.entity.User"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Show Users</title>
        <!-- Latest compiled and minified CSS -->
        <link
            rel="stylesheet"
            href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
            integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
            crossorigin="anonymous"
            />

        <!-- Optional theme -->
        <link
            rel="stylesheet"
            href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
            integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
            crossorigin="anonymous"
            />

        <!-- Latest compiled and minified JavaScript -->
        <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"
        ></script>
    </head>
    <body>
        <!--start navbar-->
        <%@ include file="header.jsp"%>    
        <!--end navbar-->
        <!-- title start -->
        <div class="container">
            <div class="jumbotron">
                <h1 class="display-3">Show User</h1>
            </div>
        </div>
        <!-- title end -->

        <!-- titile start -->

        <div class="container">
            <div class="well"><h1>You can perform delete update operatio</h1></div>
        </div>

        <br>

        <!-- titile end -->


        <!-- show user table start -->


        <div class="container">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>id</th>
                        <th>name</th>
                        <th>gender</th>
                        <th>email</th>
                        <th>age</th>
                        <th>Phone no</th>
                        <th>Delete</th>
                        <th>Update</th>
                    </tr>
                </thead>
                <tbody>

                    <%
                        UserDao ud = new UserDao(ConnectionProvider.getConnection());
                        for (User user : ud.getAllUser()) {

                    %>

                    <tr>
                        <td><%= user.getId()%></td>
                        <td><%= user.getName()%></td>
                        <td><%= user.getGender()%></td>

                        <td><%= user.getEmail()%></td>
                        <td><%= user.getAge()%></td>
                        <td><%= user.getPhno()%></td>

                        <td><a href="deleteServlet?id=<%= user.getId() %>" class="btn btn-danger">delete</a></td>
                        <td><a href="updateuser.jsp?uid=<%= user.getId() %>" class="btn btn-primary">update</a></td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
        </div>



        <!-- show user table end -->

    </body>
</html>
