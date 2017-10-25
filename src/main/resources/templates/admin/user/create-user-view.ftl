<#import "/spring.ftl" as spring/>
<!DOCTYPE html>
<html>
<head>
    <script type="text/javascript" src="/js/validuser.js"></script>

    <title>Add user</title>
<link rel="stylesheet" type="text/css" href="/css/newCustomer.css">
     <#include "/base_libraries/head.ftl"/>
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
       <h1>User registration form</h1>
        <form action="/admin/create-user" id="mainForm" method="post" name="userForm" onsubmit="return myFunction() ; uservalid()">
         <!--<#if userId??>
                <a href="/admin/create-vehicle?id=${userId!""}">Go to vehicle form</a>
          </#if>-->
            <div class="col-md-12">
                <div class="side">
                <span style="color: #4CAF50; font-weight: bold; font-size:14px">${message!""}</span>
                <span style="color: red; font-weight: bold; font-size:14px">${errormessage!""}</span>
                    <div class="col-md-12">
                   <div class="col-md-6">
                    <@spring.bind "userForm.firstname"/>
                     <#list spring.status.errorMessages as error>
                          <span style="color:red">${error}</span>
                     </#list><br/>
                    <label for="firstname">First name</label>
                         <input type="text" id="fname" name="firstname" placeholder="Type first name.." value="${userForm.firstname!""}"/>
                        </div>
                    <div class="col-md-6">
                    <@spring.bind "userForm.lastname"/>
                    <#list spring.status.errorMessages as error>
                        <span style="color:red">${error}</span>
                     </#list><br/>
                    <label for="lastname">Last name</label>
                         <input type="text" id="lname" name="lastname" placeholder="Type last name.." value="${userForm.lastname!""}"/><br>
                        </div>
                    <div class="col-md-6">
                    <@spring.bind "userForm.vat"/>
                    <#list spring.status.errorMessages as error>
                         <span style="color:red">${error}</span>
                    </#list><br/>
                     <label for="vat">VAT</label>
                            <input type="text" id="TaxNum" name="vat" placeholder="Type vat.." value="${userForm.vat!""}"/><br>
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
                    <@spring.bind "userForm.password"/>
                    <#list spring.status.errorMessages as error>
                         <span style="color:red">${error}</span>
                    </#list><br/>
                        <label for ="password">User password</label>
                        <input type="password" id="UserP" name="password" placeholder="Set new password.." />
                        </div>
                    <div class="col-md-6">
                    <label for="configpassword">Confirm password</label>
        <input type="password" id="ConfPass" name="configpassword" placeholder="Confirm password number.." /></div>
           </div>
            <div class="col-md-12">
    <div class="col-md-6">
                    <@spring.bind "userForm.address"/>
                    <#list spring.status.errorMessages as error>
                       <span style="color:red">${error}</span>
                    </#list><br/>
                    <label for="address">Address</label>
                    <input type="text" id="Address" name="address" placeholder="Type address.." value="${userForm.address!""}"/>
                    </div>
        <div class="col-md-6">
                    <@spring.bind "userForm.email"/>
                    <#list spring.status.errorMessages as error>
                       <span style="color:red">${error}</span>
                    </#list><br/>
                        <label for="email">e-mail</label>
                             <input type="email" id="email" name="email" placeholder="Type e-mail.." value="${userForm.email!""}">
         </div>
         <div class="col-md-6">
          <@spring.bind "userForm.addVehicle"/>
                <label for="vehicle">Add vehicle</label> <input type="checkbox" name="addVehicle" value="true" ${checked!""     }>
            </div>
                    </div>
                    &nbsp;<br>
                    <input type="submit" value="Submit" onsubmit=""><br><br>
                 </div>
            </div>
        </form>
    </div>
    <div class="col-md-1">
    </div>



    </body>
    <#include "/base_libraries/footer.ftl"/>
    <#include "/base_libraries/js.ftl"/>

    </html>