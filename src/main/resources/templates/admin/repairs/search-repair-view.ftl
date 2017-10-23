<#import "/spring.ftl" as spring/>
<head>
    <title>Sign-Up/Search Form</title>
        <#include "/base_libraries/head.ftl"/>
        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" href="/static/css/repair.css">

        <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    </head>

    <body>
    <#include "/admin/menu_bar.ftl"/>

            <#if errorMessage??>
            <div class="container">
            <div class="alert alert-danger" role="alert">
             ${errorMessage}
            </div>
            </div>
            </#if>
    <div class="col-md-2"></div>
    <div class="col-md-8">
        <h1>Search our service schedule</h1>
        <div class="side">
            <form action="/index.html" id="mainForm" method="post" onsubmit="myFunction">
                <div class="search">
                    &nbsp;&nbsp; <i class="glyphicon glyphicon-search"></i>

                    <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Type       tax number, service I, plate or date">
                    &nbsp;&nbsp; &nbsp;&nbsp;<button type="button" class="buttoni">Search</button>                            <button type="button" class="but" data-toggle="modal" data-target="#myModal">Search by dates</button>

                </div>
                <div class="modalkey">
                    <div class="modkey">
                        <div class="container">
                            <!-- Trigger the modal with a button -->

                            <!-- Modal -->
                            <div class="modal fade" id="myModal" role="dialog">
                                <div class="modal-dialog">

                                    <!-- Modal content-->
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <p style="font-size:150%;" >Here you can enter a date period</p>

                                            <label>Starting date :<br>
                                                <input type="date" name="Starting" value="Today"/>
                                            </label><br><br>
                                            <label>Set last day and search :<br>
                                                <input type="date" name="Ending" data-value="7" value="After one week"/>
                                            </label>
                                        </div>
                                        <div class="modal-body">
                                        </div>
                                        <div class="modal-footer">
                                            <button type="submit" class="subut" data-dismiss="modal">Confirm</button>
                                            <button type="button" class="btnca" data-dismiss="modal">Close</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>



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
                </#list>

                </table>
            </#if>

                <br>
            </form>
        </div>
    </div>
    <div class="col-md-2">
    </div>




<#include "/base_libraries/footer.ftl"/>
<#include "/base_libraries/js.ftl"/>
    </body>


