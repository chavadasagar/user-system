<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>User System</title>
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
    <!-- navbar start     -->
    <%@include file="header.jsp" %>%>
    <!-- navbar end     -->

    <!-- title start -->
    
    <div class="main">
        
    <div class="container">
        <div class="jumbotron">
          <h1 class="display-3">User System</h1>
          <p class="lead">Manage Your User</p>
          <hr class="my-2" />
          <p>More info</p>
          <p class="lead">
            <a
              class="btn btn-primary btn-lg"
              href="Jumbo action link"
              role="button"
              >About Us</a
            >
          </p>
        </div>
      </div>
      <!-- title end -->
  
      <!-- operation title start -->
      <div class="container">
        <div class="well well-xl text-center">
          <h1>Select Your operation</h1>
        </div>
      </div>
      <!-- operation title end -->
  
      <!-- panels start -->
      
      
      <div class="container home">
          
          <div class="row">
  
              <!-- add user -->
              <div class="col-sm-6">
                  
                  <div class="panel panel-primary">
                        <div class="panel-heading">
                              <h3 class="panel-title"><h1>Add user</h1></h3>
                        </div>
                        <div class="panel-body text-center">
                              <a href="adduser.jsp" class="btn-lg btn-primary">Go</a>
                        </div>
                  </div>
                  
              </div>
              <!-- update user -->
              <div class="col-sm-6">
                  
                  <div class="panel panel-primary">
                        <div class="panel-heading">
                              <h3 class="panel-title"><h1>Update user</h1></h3>
                        </div>
                        <div class="panel-body text-center">
                              <a href="updateuser.jsp" class="btn-lg btn-primary">Go</a>
                        </div>
                  </div>
                  
              </div>
          </div>
  
          <div class="row">
              <!-- delete user -->
              <div class="col-sm-6">
                  
                  <div class="panel panel-primary">
                        <div class="panel-heading">
                              <h3 class="panel-title"><h1>delete user</h1></h3>
                        </div>
                        <div class="panel-body text-center">
                              <a href="deleteuser.jsp" class="btn-lg btn-primary">Go</a>
                        </div>
                  </div>                  
              </div>
              <!-- show all user -->
              <div class="col-sm-6">
                  
                  <div class="panel panel-primary">
                        <div class="panel-heading">
                              <h3 class="panel-title"><h1>Show user</h1></h3>
                        </div>
                        <div class="panel-body text-center">
                              <a href="showuser.jsp" class="btn-lg btn-primary">Go</a>
                        </div>
                  </div>
              </div>
          </div>
      </div>
     
    </div>


  </body>
</html>
