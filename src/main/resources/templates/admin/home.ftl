
</html>

<#import "/spring.ftl" as spring/>
<head>
    <title>Sign-Up/Login Form</title>
        <#include "/base_libraries/head.ftl"/>
    <link rel="stylesheet" type="text/css" href="/css/style.css"/>
</head>
    <body>
    <#include "/admin/menu_bar.ftl"/>
<div class="container">
    <table class="table table-striped">

   <h1>Last Services </h1>
         <thead>
               <tr>
                 <th>Description</th>
                 <th>Status</th>
                 <th>Date</th>
                 <th>Type</th>
                 <th>Name</th>
               </tr>
         </thead>
     <tbody>
<#if repairs??>
    <#list repairs as repair>
               <tr>
                 <td>${repair.description}</td>
                 <td><#if repair.status==0>Not Done<#elseif repair.status==1>Stand By<#else>Done</#if></td>
                 <td>${repair.repairDate?datetime.iso?string("dd/MM/yyyy HH:mm:ss")}</td>
                 <td><#if repair.type>Big<#else>Small</#if></td>
                 <td>Note done yet</td>
               </tr>
    </#list>
     </tbody>
               </table>
               <#else>
               There is no Service for today
</#if>

</div>
<#include "/base_libraries/footer.ftl"/>
<#include "/base_libraries/js.ftl"/>
    </body>
