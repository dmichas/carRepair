<#import "/spring.ftl" as spring/>
<head>
<#include "/base_libraries/head.ftl"/>
    <script type="text/javascript" src="/js/validrepair.js"></script>

    <link rel="stylesheet" type="text/css" href="/css/serviceReg.css">
</head>
<body>
<#include "/templates/admin/menu_bar.ftl"/>
<div class="col-md-1"></div>
<div class="col-md-10">
    <h1>New Service Form</h1><br>
    <form action="/admin/create-repair" method="post" name="repairForm" onsubmit="return validrep">
        <div class="col-md-12">
            <div class="side">
            ${message!""}
            ${errorMessage!""}
                <div class="col-md-12">
                    <div class="col-md-6">
                    <@spring.bind "repairForm.plate"/>
                    <#list spring.status.errorMessages as error>
                        <span style="color:red">${error}</span>
                    </#list><br>
                        <label for="Plate">Plate</label>
                        <input type="text" id="plate" name="plate" placeholder="Type the plate..(ABC-1234)" value=${repairForm.plate!""}>
                        <br/>
                    </div>
                    <div class="col-md-6">
                    <@spring.bind "repairForm.status"/>
                    <#list spring.status.errorMessages as error>
                        <span style="color:red">${error}</span>
                    </#list><br>
                        <label for="Status of Service">Status of Service</label>
                        <select id="statusServ" name="status" >
                            <option value="0" ${pending!""}>Pending</option>
                            <option value="1" ${inProgress!""}>In progress</option>
                            <option value="2" ${completed!""}>Completed </option>
                        </select>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="col-md-6">
                    <@spring.bind "repairForm.repairDate"/>
                    <#list spring.status.errorMessages as error>
                        <span style="color:red">${error}</span>
                    </#list><br>
                        <label for="dateService">Service Date</label>
                        <input type="datetime-local" id="dateServ" name="date" placeholder="Select a date" value=${repairForm.repairDate!""} >
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="col-md-6">
                    <@spring.bind "repairForm.type"/>
                    <#list spring.status.errorMessages as error>
                        <span style="color:red">${error}</span>
                    </#list><br>
                        <label for="Type of Service">Type of Service</label>
                        <select id="typeServ" name="type" required>
                            <option value="true" ${long!""}>Long</option>
                            <option value="false" ${short!""}>Short</option>
                        </select>
                    </div>
                    <div class="col-md-6">
                    <@spring.bind "repairForm.cost"/>
                    <#list spring.status.errorMessages as error>
                        <span style="color:red">${error}</span>
                    </#list><br>
                        <label for="Cost">Service Cost</label>
                        <input type="text" id="costServ" name="cost" placeholder="Type cost of Service..(123.45)" value=${repairForm.cost!""}>
                    </div>
                </div>
                &nbsp;
                <div class="serviceRegistration">
                <@spring.bind "repairForm.description"/>
                <#list spring.status.errorMessages as error>
                    <span style="color:red">${error}</span>
                </#list><br>
                    <textarea name="description" class="form-control" rows="4" id="comment" placeholder="Type comments for the service here(255 characters limit).." value="${repairForm.description!""}" >${repairForm.description!""}</textarea>
                </div>
                <input type="submit" value="Submit"><br><br>
            </div>
        </div>
    </form>
</div>
<div class="col-md-1"></div>
<#include "/base_libraries/footer.ftl"/>
<#include "/base_libraries/js.ftl"/>
</body>
