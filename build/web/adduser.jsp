<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Add User</title>
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
        <%@ include file="header.jsp" %>    
        <!--end navbar-->


        <!-- title start -->
        <div class="container">
            <div class="jumbotron">
                <h1 class="display-3">Add User</h1>
            </div>
        </div>
        <!-- title end -->

        <!-- add user  -->

        <div class="container">
            <form method="POST" id="addform">
                <div class="form-group">
                    <label for="">Enter Name :</label>
                    <input
                        type="text"
                        name="name"
                        id=""
                        class="form-control"
                        placeholder="Name"
                        aria-describedby="helpId"
                        />
                </div>
                <div class="form-group">
                    <div class="form-group">
                        <label for="">Gender :</label>
                        <select class="form-control" name="gender" id="">
                            <option value="male">male</option>
                            <option value="female">female</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="">Email :</label>
                    <input
                        type="email"
                        class="form-control"
                        name="email"
                        id=""
                        aria-describedby="emailHelpId"
                        placeholder="Enter Email"
                        />
                </div>
                <div class="form-group">
                    <label for="">Age :</label>
                    <input type="number" name="age" id="" class="form-control" placeholder="Enteer Age" aria-describedby="helpId">
                </div>
                <div class="form-group">
                    <label for="">Phone No :</label>
                    <input type="number" name="phno" id="" class="form-control" placeholder="Phone no" aria-describedby="helpId">
                </div>
                <div class="form-group">
                    <input  type="submit" class="btn-lg btn-primary">
                </div>
            </form>
        </div>

        <script src="js/sweetalert.min.js"></script>
        <script src="js/jquery-3.6.0.min.js"></script>

        <script>
            $(document).ready(function () {
                $("#addform").on("submit", function (e) {
                    e.preventDefault();

                    let data = new FormData(this);

                    $.ajax({
                        url: "addServlet",
                        type: 'POST',
                        data: data,
                        success: function (data, textStatus, jqXHR) {
                            if (data == "true")
                            {
                                swal("User added!!", "", "success");
                            } else
                            {
                                swal("some proble!", "", "warning");

                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            alert("error");
                        },
                        processData: false,
                        contentType: false
                    });
                });
                
                $("#home").click(function(){});
                $("#add").click(function(){});
                $("#update").click(function(){});
                $("#delete").click(function(){});
                $("#show").click(function(){});
            });

        </script>

        <!-- add end -->
    </body>


</html>
