<#import "/spring.ftl" as spring/>
<!DOCTYPE html>
<html>
<head>
<title>Add user</title>

<link rel="stylesheet" type="text/css" href="/css/newCustomer.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha256-k2WSCIexGzOj3Euiig+TlR8gA0EmPjuc79OEeY5L45g="
             crossorigin="anonymous">
    </script>
    <script src="/js/jquery.validate.min.js"></script>
    <script type="text/javascript" src="/Userreg222.js"></script>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


</head>

<body>
<#include "/admin/menu_bar.ftl"/>


    <script>
             function myFunction() {
                 var pass1 = document.getElementById("UserP").value;
                 var pass2 = document.getElementById("ConfPass").value;
                 if (pass1 != pass2) {
                     //alert("Passwords Do not match");
                     document.getElementById("UserP").style.borderColor = "#E34234 ";
                     document.getElementById("ConfPass").style.borderColor = "#E34234 ";
                 } else {
                     document.getElementById("UserP").style.borderColor = "#33cc33";
                     document.getElementById("ConfPass").style.borderColor = "#33cc33 ";
                 } {
                     var pass1 = document.getElementById("UserP").value;
                     var pass2 = document.getElementById("ConfPass").value;
                     var ok = true;
                     if (pass1 != pass2) {
                         //alert("Passwords Do not match");
                         document.getElementById("UserP").style.borderColor = "#E34234 ";
                         document.getElementById("ConfPass").style.borderColor = "#E34234 ";
                         ok = false;
                     } else {
                         document.getElementById("UserP").style.borderColor = "#33cc33 ";
                         document.getElementById("ConfPass").style.borderColor = "#33cc33 ";
                     }
                     return ok;
                 }
             }
     </script>

    <div class="col-md-1"></div>
    <div class="col-md-10">

       <h1>Edit user</h1>

       <form name="searchUser" action="/admin/edit-user"  method="get" >
          <!-- <label for="vat">VAT:</label>-->
          <input type="text" class="form-control"  id="vat" placeholder="Enter VAT" autocomplet="off" name="v" />
           <button type="submit" class="btn">Search</button>
        </form>
       <span style="background-color:red;">${errormessage!""}<span>
       <#if editUserForm??>
        <form action="/admin/edit-user" id="mainForm" method="post" name="editUserForm">
         <!--<#if userId??>
                <a href="/admin/create-vehicle?id=${userId!""}">Go to vehicle form</a>

          </#if>-->
            <div class="col-md-12">
                <div class="side">
                <span style="color: #4CAF50; font-weight: bold; font-size:14px">${message!""}</span>
                <span style="color: red; font-weight: bold; font-size:14px">${errormessage!""}</span>
                    <div class="col-md-12">
                    <@spring.bind "editUserForm.userId"/>
                    <input type="hidden" name="userId" value="${editUserForm.userId!""}"/>
                   <div class="col-md-6">
                    <@spring.bind "editUserForm.firstname"/>
                     <#list spring.status.errorMessages as error>
                          <span style="color:red">${error}</span>
                     </#list><br/>
                    <label for="firstname">First name</label>
                         <input type="text" id="fname" name="firstname" placeholder="Type first name.." value="${editUserForm.firstname!""}"/>
                        </div>
                    <div class="col-md-6">
                    <@spring.bind "editUserForm.lastname"/>
                    <#list spring.status.errorMessages as error>
                        <span style="color:red">${error}</span>
                     </#list><br/>
                    <label for="lastname">Last name</label>
                         <input type="text" id="lname" name="lastname" placeholder="Type last name.." value="${editUserForm.lastname!""}"/><br>

                        </div>
                    <div class="col-md-6">
                    <@spring.bind "editUserForm.vat"/>
                    <#list spring.status.errorMessages as error>
                         <span style="color:red">${error}</span>
                    </#list><br/>
                     <label for="vat">VAT</label>
                            <input type="text" id="TaxNum" name="vat" placeholder="Type vat.." value="${editUserForm.vat!""}"/><br>
                        </div>
                    <div class="col-md-6">
                    <label for="UserType">User Type</label>
                    <select id="UserType" name="UserType">
                        <option value="true" ${admin!""}>Admin</option>
                        <option value="false" ${simple!""}>Simple user</option>
                    </select>
                    </div>
                    </div>
                    <div class="col-md-12">
                    <div class="col-md-6">
                    <@spring.bind "editUserForm.password"/>
                    <#list spring.status.errorMessages as error>
                         <span style="color:red">${error}</span>
                    </#list><br/>
                    ${passwordMessage!"Password doesn't change if fields are empty bellow"}<br/>
                        <label for ="password">Current password</label>
                        <input type="password" id="password" name="password" placeholder="Current password.." />
                        </div>
                    <div class="col-md-6">
                    <@spring.bind "editUserForm.newPassword"/>
                    <label for="newpassword">New password</label>
        <input type="password" id="newPass" name="newPassword" placeholder="New password.." /></div>
           </div>
            <div class="col-md-12">
    <div class="col-md-6">
                    <@spring.bind "editUserForm.address"/>
                    <#list spring.status.errorMessages as error>
                       <span style="color:red">${error}</span>
                    </#list><br/>
                    <label for="address">Address</label>
                    <input type="text" id="Address" name="address" placeholder="Type address.." value="${editUserForm.address!""}"/><br>
                    </div>
        <div class="col-md-6">
                    <@spring.bind "editUserForm.email"/>
                    <#list spring.status.errorMessages as error>
                       <span style="color:red">${error}</span>
                    </#list><br/>
                        <label for="email">e-mail</label>
                             <input type="email" id="email" name="email" placeholder="Type e-mail.." value="${editUserForm.email!""}">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         </div>

                    </div>
                    &nbsp;<br>
                    <input type="submit" value="Submit"><br><br>
                 </div>

            </div>

        </form>
        </#if>
    </div>
    <div class="col-md-1">

    </div>
    </body>

    </html>