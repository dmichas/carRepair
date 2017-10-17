<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script>
        function openWin() {
            window.open("https://www.w3schools.com");
        }
    </script>
</head>
<style>
    body{
        background:url('https://image.ibb.co/maKv1G/car_repair_362150_960_720.jpg') no-repeat center center fixed;
        background-size: cover;
        margin: 0;
        padding: 0;
    }
    .side{
        background-color:lightgray;
        border: 1px solid lightblue;
        border-radius: 20px;
        padding: 26px;
    }
    input[type=text], select, textarea {
        width: 26%;
        padding: 12px;
        border: 0.4px solid #ccc;
        border-radius: 8px;
        box-sizing: border-box;
        margin-top: 6px;
        margin-bottom: 16px;
        resize: vertical;
    }
    input[type=submit] {
        background-color: #4CAF50;
        color: white;
        padding: 8px 16px;
        border: none;
        border-radius: 30px;
        cursor: pointer;
        width: 22%;
        margin-left: 40%;
        margin-right: auto;
    }
    .container {
        border-radius: 5px;
        background-color: #f2f2f2;
        padding: 16px;
    }
    form label {
        display:inline-block; width:140px;
    }
    h1,h2{
        text-align: center;
    }
    input[type=password]{
        width: 26%;
        padding: 12px;
        border: 0.4px solid #ccc;
        border-radius: 8px;
        box-sizing: border-box;
        margin-top: 6px;
        margin-bottom: 16px;
        resize: vertical;
    }
    input[type=email]{
        width: 28%;
        padding: 14px;
        border: 0.4px solid #ccc;
        border-radius: 8px;
        box-sizing: border-box;
        margin-top: 6px;
        margin-bottom: 16px;
        resize: vertical;

    }


    header{
        height:20px;
        color: black;
        background-color: lightgray;
        text-align: center;
        opacity:0.8;
        border-radius: 16px;
    }



</style>

<body>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">Car Repairs</a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="/admin">Home</a></li>
            <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Owners<span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="/admin/new-customer">Create User</a></li>
                    <li><a href="/admin/search-customer">Search User</a></li>
                    <li><a href="/admin/update-customer">Edit User</a></li>
                </ul>
            </li>
            <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Repairs<span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="/admin/new-service">Create Service</a></li>
                    <li><a href="/admin/update-service">Edit Service</a></li>
                    <li><a href="/admin/search-service">Search Service</a></li>
                </ul>
            </li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li>
                <a href="/logout"> <span class="glyphicon glyphicon-log-in"></span>&nbsp; Logout</a>
            </li>
        </ul>
    </div>
</nav>
<div class="col-md-1"></div>
<div class="col-md-10">

    <script>
        function myFunction() {
            var pass1 = document.getElementById("password").value;
            var pass2 = document.getElementById("confpass").value;
            if (pass1 != pass2) {
                //alert("Passwords Do not match");
                document.getElementById("password").style.borderColor = "#E34234 ";
                document.getElementById("confpass").style.borderColor = "#E34234 ";
            } else {
                document.getElementById("password").style.borderColor = "#33cc33";
                document.getElementById("confpass").style.borderColor = "#33cc33 ";
            } {
                var pass1 = document.getElementById("password").value;
                var pass2 = document.getElementById("confpass").value;
                var ok = true;
                if (pass1 != pass2) {
                    //alert("Passwords Do not match");
                    document.getElementById("password").style.borderColor = "#E34234 ";
                    document.getElementById("confpass").style.borderColor = "#E34234 ";
                    ok = false;
                } else {
                    document.getElementById("UserPass").style.borderColor = "#33cc33 ";
                    document.getElementById("ConfirmPass").style.borderColor = "#33cc33 ";
                }
                return ok;
            }
        }

    </script>

    <form action="insert.php" onsubmit="return myFunction()" method="post">
        <div class="col-md-12">
            <div class="side">

                <h1>Create new user</h1><br>
                <label for="firstname">Firstname</label>
                <input type="text" name="firstname" placeholder="First name" required minlength="2">
                <label for="lastname">Last name</label>
                <input type="text" name="lastname" placeholder="lastname" required minlength="2"><br>
                <label for="taxnum">Tax number</label>
                <input type="text" name="taxnum" placeholder="taxnum" required minlength="8" maxlength="9">
                <label for="UserType">User Type</label>
                <select id="UserType" name="UserType">
                    <option value="dis" disabled selected>---</option>
                    <option value="Admin">Admin</option>
                    <option value="Simple User">Simple user</option>
                </select><br>
                <label for=password>Password</label>
                <input id="password" type="password" placeholder="Password" style="border-radius:7px; border:2px solid #dadada ;" required minlength="5" />
                <label for=confpass> Confirm Password</label>
                <input id="confpass" type="password" placeholder="Confirm Password" style="border-radius:7px; border:2px solid #dadada ;" required minlength="5"/><br>

                <label for="Address">Address</label>
                <input type="text" id="Address" name="Address" placeholder="Type address.." required/><br>

                <label for="TaxNum">Plate number</label>
                <input type="text" id="platenum" name="platenum" placeholder="Type plate number.." required minlength="7" maxlength="8"/><br>

                <input type="submit" value="Submit"><br>
                Select if you want to add vehicle :
                <input type="button" value="Open vehicle form " onclick="openWin()">


            </div>

        </div>

    </form>
</div>
<div class="col-md-1"></div>


</body>

</html>
