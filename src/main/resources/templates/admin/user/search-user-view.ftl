<#import "/spring.ftl" as spring/>
<!DOCTYPE html>
<head>
    <title>Search Form</title>
        <#include "/base_libraries/head.ftl"/>
                <link rel="stylesheet" type="text/css" href="/css/searchFormsStyle.css"/>

</head>
    <body>
    <#include "/admin/menu_bar.ftl"/>

             <div class="container"  >

                 <div class="col-md-12">
                           <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                              <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                               <li class="nav-item">
                                <a class="nav-link active" id="v-pills-vat-tab" data-toggle="pill" href="#v-pills-vat" role="tab" aria-controls="v-pills-vat" aria-selected="true">Vat</a>
                               </li>
                              <li class="nav-item">
                                <a class="nav-link" id="v-pills-email-tab" data-toggle="pill" href="#v-pills-email" role="tab" aria-controls="v-pills-email" aria-selected="false">Email</a>
                               </li>

                              </div>

                              <br>

                              <div class="tab-content" id="v-pills-tabContent">

                                <div class="tab-pane fade" id="v-pills-vat" role="tabpanel" aria-labelledby="v-pills-vat-tab">
                                 <form name="searchForm" id="searchForm" action="/admin/search-user"  method="post" onsubmit="return vatValidation();">
                                       <input type="text" class="form-control" id="vat" placeholder="Enter vat" name="vat" onkeydown="vatValidation()" onkeyup="vatValidation()"><br>
                                  <span id="vat_error"></span>
                                   <input type="submit" class="btn btn-info" name="button" value="Search Vat">
                                </form>
                               </div>

                                <div class="tab-pane fade" id="v-pills-email" role="tabpanel" aria-labelledby="v-pills-email-tab">
                                 <form name="searchForm" id="searchForm" action="/admin/search-user"  method="post" onsubmit="return emailValidation();">
                                       <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" onkeydown="emailValidation()" onkeyup="emailValidation()"><br>
                                 <span id="email_error"></span>
                                   <input type="submit" class="btn btn-info" name="button" value="Search email">
                                 </form>
                               </div>

                                </div>


                 </div>
</div>
  <#if errorMessage??>
            <div class="container">
            <div class="alert alert-danger" role="alert">
            ${errorMessage!""}
            </div>
            </div>
            </#if>

<#if member??>
<div class="container">
<table class="table">
   <tr>
   <th>Email</th>
     <th>FirstName</th>
     <th>LastName</th>
     <th>VAT</th>
     <th>Address</th>
     <th>Edit</th>
     <th>Delete</th>
   </tr>
   <tr>
    <th>${member.getUser().getEmail()}</th>
    <th>${member.firstname}</th>
    <th>${member.lastname}</th>
    <th>${member.vat}</th>
    <th>${member.address}</th>
    <th><a href="/admin/edit-user?v=${member.vat}"><button type="button" class="btn btn-info">Edit</button></a></th>
    </form>
    <form action ="/admin/delete-user" name="deleteForm" id ="deleteForm" method="POST">
        <input type="hidden" name="hidden_email" id="hidden_email" value="${member.getUser().getEmail()}">
    <th><input type="submit" class="btn btn-danger" value="Delete" onclick="return confirmUserDelete()"></th>
    </form>
  </tr>
</table>
</#if>


<#include "/base_libraries/footer.ftl"/>
<#include "/base_libraries/js.ftl"/>
<script type="text/javascript" src="/js/UserValidation.js"></script>
<script type="text/javascript" src="/js/ConfirmDelete.js"></script>
    </body>
</html>