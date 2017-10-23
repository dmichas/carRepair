<#import "/spring.ftl" as spring/>
<head>
        <#include "/base_libraries/head.ftl"/>
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
            <link rel="stylesheet" type="text/css" href="searchUser.css">
</head>
    <body>
    <#include "/Admin/menu_bar.ftl"/>
            <#if errorMessage??>
            <div class="container">
            <div class="alert alert-danger" role="alert">
            ${errorMessage!""}
            </div>
            </div>
            </#if>

    <p>Search user</p><br>



    <div class="row">


        <div class="col-md-2"></div>
        <div class="col-md-8">
            <div class="form">
                <form name="searchForm" id="searchForm" action="/admin/search-user" method="post">

                    <label><input type="text" class="form-control" id="vat" placeholder="Enter tax number" name="vat">
                    </label><br>
                    <label><input type="email" class="form-control" id="email" placeholder="Enter user e-mail" name="email">
                    </label><br>


                    <button type="button" id="searchbtn" class="btn">Search</button>
                </form>

            </div>


        </div>
        <div class="col-md-2"></div>
    </div>

    <div class="container">
        <table class="table">
            <br><br>
            <tr>
                <th>Email</th>
                <th>FirstName</th>
                <th>LastName</th>
                <th>VAT</th>
                <th>Address</th>
                <th>Cars</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            <tr>
                <th> jikjij</th>
                <th>jijiji</th>
                <th>jijijhu</th>
                <th>iuhiuhiu</th>
                <th>hiuhiuh</th>

                <!--
    <th>${member.getUser().getEmail()}</th>
    <th>${member.firstname}</th>
    <th>${member.lastname}</th>
    <th>${member.vat}</th>
    <th>${member.address}</th>
-->
                <th>Not doen Yet</th>
                <th><a href="/admin/edit-user?v=${member.vat}"><button type="button" class="btn btn-info">Edit</button></a></th>


                <form action="/admin/delete-user" name="deleteForm" id="deleteForm" method="POST">
                    <input type="hidden" name="hidden_email" id="hidden_email" value="${member.getUser().getEmail()}">
                    <th><input type="submit" class="btn btn-danger" value="Delete"></th>
                </form>

            </tr>
        </table>
    </div>

    </body>
<#include "/base_libraries/footer.ftl"/>
<#include "/base_libraries/js.ftl"/>