<!DOCTYPE html>
<html>

<head>/
    <link rel="stylesheet" type="text/css" href="/static/css/newCustomer.css">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
</head>
<style>


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
<div class="col-md-2"></div>
<div class="col-md-8">
    <h1>Search our service schedule</h1>
    <div class="side">
        <form action="/index.html" id="mainForm" method="post">
            <div class="search">
                &nbsp;&nbsp; <i class="glyphicon glyphicon-search"></i>

                <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search      by tax number,service ID,plate or by date">
                <br>
                <br>

            </div>



            <table id="myTable">
                <tr>
                    <th style="width:20%;">Service unique number(ID)</th>
                    <th>Onwer tax number</th>
                    <th>Plate number</th>
                    <th>Date of service</th>
                    <th>Time of service</th>
                    <th>Status</th>
                    <th>Type</th>
                    <th>Description</th>

                </tr>
                <tr>
                    <td>
                        <c:out value="${service.id}" />
                    </td>
                    <td>
                        <c:out value="${vat}" />
                    </td>
                    <td>
                        <c:out value="${plate.num}" />
                    </td>
                    <td>
                        <c:out value="${service.date}" />
                    </td>
                    <td>
                        <c:out value="${service.time}" />
                    </td>
                    <td>
                        <c:out value="${service.status}" />
                    </td>

                    <td>
                        <c:out value="${service.type}" />
                    </td>
                    <td>
                        <c:out value="${service.description}" />
                    </td>


                </tr>

            </table>
            <script>
                function myFunction() {
                    var input, filter, table, tr, td, i;
                    input = document.getElementById("myInput");
                    filter = input.value.toUpperCase();
                    table = document.getElementById("myTable");
                    tr = table.getElementsByTagName("tr");
                    for (i = 0; i < tr.length; i++) {
                        td = tr[i].getElementsByTagName("td")[0];
                        td = tr[i].getElementsByTagName("td")[1];
                        td = tr[i].getElementsByTagName("td")[2];
                        td = tr[i].getElementsByTagName("td")[3];



                        if (td) {
                            if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                                tr[i].style.display = "";
                            } else {
                                tr[i].style.display = "none";
                            }
                        }
                    }
                }

            </script>




            <br>
        </form>
    </div>
</div>
<div class="col-md-2">
</div>
</body>

</html>
