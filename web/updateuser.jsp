<%@page import="com.user.helper.ConnectionProvider"%>
<%@page import="com.user.dao.UserDao"%>
<%@page import="com.user.entity.User"%>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Update User</title>
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
                <h1 class="display-3">Update User</h1>
            </div>
        </div>
        <!-- title end -->

        <!-- add user  -->

        <%
            String id = request.getParameter("uid");
            User user = null;
            if (id != null) {
                UserDao show = new UserDao(ConnectionProvider.getConnection());
                user = show.getIdByUser(Integer.parseInt(id));

            } else {
                response.sendRedirect("index.html");
            }
        %>

        <div class="container">
            <form id="updateform" method="POST">
                <div class="form-group">
                    <label for="">Enter id :</label>
                    <input
                        type="number"
                        name="uid"
                        value="<%= user.getId()%>"
                        id=""
                        readonly=""
                        class="form-control"
                        placeholder="Enter Your ID"
                        aria-describedby="helpId"
                        />
                    <br>
                    <div class="form-group">
                        <button class="btn btn-primary">Fetch User</button>
                    </div>
                </div>
                <div class="form-group">
                    <label for="">Enter Name :</label>
                    <input
                        type="text"
                        name="name"
                        value="<%= user.getName()%>"

                        id=""
                        class="form-control"
                        placeholder="Name"
                        aria-describedby="helpId"
                        />
                </div>
                <div class="form-group">
                    <div class="form-group">
                        <label for="">Gender :</label>
                        <input
                            type="text"
                            readonly=""
                            class="form-control"
                            name="gender"
                            value="<%= user.getGender()%>"
                            id=""
                            aria-describedby="emailHelpId"
                            placeholder="Enter Email"
                            />

                    </div>
                </div>
                <div class="form-group">
                    <label for="">Email :</label>
                    <input
                        type="email"
                        class="form-control"
                        name="email"
                        value="<%= user.getEmail()%>"

                        id=""
                        aria-describedby="emailHelpId"
                        placeholder="Enter Email"
                        />
                </div>
                <div class="form-group">
                    <label for="">Age :</label>
                    <input type="number" name="age"   value="<%= user.getAge()%>"
                           id="" class="form-control" placeholder="Enteer Age" aria-describedby="helpId">
                </div>
                <div class="form-group">
                    <label for="">Phone No :</label>
                    <input type="number"                         value="<%= user.getPhno()%>"
                           name="phno" id="" class="form-control" placeholder="Phone no" aria-describedby="helpId">
                </div>
                <div class="form-group">

                    <input type="submit" class="btn-lg btn-primary" value="update">
                </div>
            </form>
        </div>

        <!-- add end -->

        <!--js work-->
        <script src="js/sweetalert.min.js"></script>
        <script src="js/jquery-3.6.0.min.js"></script>


        <script>
            $(document).ready(function () {
                $("#updateform").on("submit", function (e) {
                    e.preventDefault();

                    let data = new FormData(this);

                    $.ajax({
                        url: "updateServlet",
                        type: 'POST',
                        data: data,
                        success: function (data, textStatus, jqXHR) {
                            if (data == "true")
                            {
                                swal("Update successfuly!!!", "", "success");
                            } else
                                swal("fail :(", "", "warning");
                            {

                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            swal("error", "", "warning");
                        }
                        ,

                        contentType: false,
                        processData: false
                    });

                });
            });

        </script>


    </body>
</html>
