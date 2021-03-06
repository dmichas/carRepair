<#import "/spring.ftl" as spring/>
<!DOCTYPE html>
<html>
<head>
<title>Edit User</title>

<link rel="stylesheet" type="text/css" href="/css/newCustomer.css">
<#include "/base_libraries/head.ftl"/>
</head>
<body>
<#include "/admin/menu_bar.ftl"/>

    <div class="col-md-1"></div>
    <div class="col-md-10">

       <h1>Edit User</h1>
    <br>
       <form name="searchUser" action="/admin/edit-user"  method="get" >
          <!-- <label for="vat">VAT:</label>-->
          <input type="text" class="form-control"  id="vat" placeholder="Enter VAT" autocomplet="off" name="v" required/>
           <button id="searchB" type="submit" class="btn">Search</button>
        </form>
       <#if message??>
       <span style="background-color:green; padding:10px; color:white">${message}<span>
       </#if>

       <#if editUserForm??>
        <form action="/admin/edit-user" id="mainForm" method="post" name="editUserForm">
            <div class="col-md-12">
                <div class="side">
                <#if errorMessage??>
                       <p style="color: red; font-weight: bold; font-size:14px">${errorMessage}<p>
                       </#if>
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
                    <div class="col-md-12">
                     <hr>
                      Fill the fields bellow if you want to change password
                        <br/>
                     <#if passwordMessage??>
                          <span style="color:red">${passwordMessage}</span>
                     </#if>
                     <br/>
                      <div class="col-md-6">
                      <@spring.bind "editUserForm.password"/>
                      <#list spring.status.errorMessages as error>
                          <span style="color:red">${error}</span>
                      </#list><br/>
                        <label for ="password">Current password</label>
                        <input type="password" id="password" name="password" placeholder="Current password.." />
                        </div><br>
                        <div class="col-md-6">
                        <@spring.bind "editUserForm.newPassword"/>
                        <label for="newpassword">New password</label>
                        <input type="password" id="newPass" name="newPassword" placeholder="New password.." /></div>

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
    <#include "/base_libraries/footer.ftl"/>
    <#include "/base_libraries/js.ftl"/>


    </body>

    </html>