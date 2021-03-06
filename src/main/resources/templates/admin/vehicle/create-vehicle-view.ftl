<#import "/spring.ftl" as spring/>
<html>
<head>
<title>Add Vehicle</title>
    <#include "/base_libraries/head.ftl"/>
    <link rel="stylesheet" type="text/css" href="/css/serviceReg.css">
</head>

<body>

<#include "/admin/menu_bar.ftl"/>



<form action="/admin/create-vehicle" id="mainForm" method="post" name="vehicleForm">
<div class="col-md-1"></div>
<div class="col-md-10">
<h1>New Vehicle Form</h1><br>

            <div class="side">
<span id="mes3" style="color: #4CAF50; font-weight: bold; font-size:14px">${message!""}</span>
<span id="mes4" style="color:red">${errorMessage!""}</span>
<br>
                <div class="col-md-12">
                   <div class="col-md-6">
                        <@spring.bind "vehicleForm.vat"/>
                        <label for="vat">VAT</label>
                             <input type="text" id="vVat" name="vat" placeholder="Type vat.." value="<#if memberVat??>${memberVat}<#else>${vehicleForm.vat!""}</#if>"/>

                        <#list spring.status.errorMessages as error>  <br>
                                 <span style="color:red">${error}</span>
                            </#list><br>
                    </div>
                    <div class="col-md-6">
                <@spring.bind "vehicleForm.plate"/>
                <label for="plate">Plate</label>
                     <input type="text" id="vPlate" name="plate" placeholder="Type plate.." value="${vehicleForm.plate!""}"/>
                <#list spring.status.errorMessages as error><br>
                         <span style="color:red">${error}</span>
                    </#list><br>
                    </div>
                 <div class="col-md-6">
                        <@spring.bind "vehicleForm.brand"/>
                        <label for="brand">Brand</label>
                             <input type="text" id="vBrand" name="brand" placeholder="Type brand.." value="${vehicleForm.brand!""}"/><br>
                        <#list spring.status.errorMessages as error><br>
                             <span style="color:red">${error}</span>
                        </#list><br>
                    </div>

                    <div class="col-md-6">
                        <@spring.bind "vehicleForm.model"/>
                        <label for="model">Model</label>
                             <input type="text" id="vModel" name="model" placeholder="Type model.." value="${vehicleForm.model!""}">
                        <#list spring.status.errorMessages as error><br>
                             <span style="color:red">${error}</span>
                        </#list><br>
                    </div>
                    </div>
                    <div class="col-md-12">
                    <div class="col-md-6">
                <@spring.bind "vehicleForm.color"/>
                <label for ="color">Color</label>
                    <input type="text" id="vColor" name="color" placeholder="color.." value="${vehicleForm.color!""}"/>
                <#list spring.status.errorMessages as error><br>
                     <span style="color:red">${error}</span>
                </#list><br>
                </div>
                <div class="col-md-6">
                <@spring.bind "vehicleForm.yearOfModel"/>
                <label for="address">Year</label>
                    <input type="text" id="vYear" name="yearOfModel" placeholder="Type year of model.." value="${vehicleForm.yearOfModel!""}"/>
                <#list spring.status.errorMessages as error><br>
                     <span style="color:red">${error}</span>
                </#list><br>
                </div>
                </div>
                <!--<label for="TaxNum">Plate number</label>
                    <input type="text" id="platenum" name="platenum" placeholder="Type plate number.." /><br>-->

                    <input type="submit" id="vehButton" value="Submit">
                    </form>
    <div class="col-md-1"></div>
</body>

<#include "/base_libraries/footer.ftl"/>
<#include "/base_libraries/js.ftl"/>

</html>