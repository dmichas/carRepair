<#import "/spring.ftl" as spring/>
<html>
<head>
<title>Add Vehicle</title>
    <#include "/base_libraries/head.ftl"/>
</head>

<body>

<#include "/admin/menu_bar.ftl"/>

<h4>${message!""}</h4>
<span style="color:red">${errormessage!""}</span>
<form action="/admin/create-vehicle" id="vehicleForm" method="post" name="vehicleForm" ">
<@spring.bind "vehicleForm.vat"/>
<label for="vat">VAT</label>
     <input type="text" id="vat" name="vat" placeholder="Type vat.." value="<#if memberVat??>${memberVat}<#else>${vehicleForm.vat!""}</#if>"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<#list spring.status.errorMessages as error>
         <span style="color:red">${error}</span>
    </#list><br>
<@spring.bind "vehicleForm.plate"/>
<label for="plate">Plate</label>
     <input type="text" id="plate" name="plate" placeholder="Type plate.." value="${vehicleForm.plate!""}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<#list spring.status.errorMessages as error>
         <span style="color:red">${error}</span>
    </#list><br>

<@spring.bind "vehicleForm.brand"/>
<label for="brand">Brand</label>
     <input type="text" id="brand" name="brand" placeholder="Type brand.." value="${vehicleForm.brand!""}"/><br>
<#list spring.status.errorMessages as error>
     <span style="color:red">${error}</span>
</#list><br>

<@spring.bind "vehicleForm.model"/>
<label for="model">Model</label>
     <input type="text" id="model" name="model" placeholder="Type model.." value="${vehicleForm.model!""}">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<#list spring.status.errorMessages as error>
     <span style="color:red">${error}</span>
</#list><br>

<@spring.bind "vehicleForm.color"/>
<label for ="color">Color</label>
    <input type="text" id="colour" name="color" placeholder="color.." value="${vehicleForm.color!""}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<#list spring.status.errorMessages as error>
     <span style="color:red">${error}</span>
</#list><br>

<@spring.bind "vehicleForm.yearOfModel"/>
<label for="address">Year</label>
    <input type="text" id="year" name="yearOfModel" placeholder="Type address.." value="${vehicleForm.yearOfModel!""}"/><br>
<#list spring.status.errorMessages as error>
     <span style="color:red">${error}</span>
</#list><br>
<!--<label for="TaxNum">Plate number</label>
    <input type="text" id="platenum" name="platenum" placeholder="Type plate number.." /><br>-->

    <input type="submit" value="Submit" onsubmit="return vali()>
    </form>
</body>

<#include "/base_libraries/footer.ftl"/>
<#include "/base_libraries/js.ftl"/>

</html>