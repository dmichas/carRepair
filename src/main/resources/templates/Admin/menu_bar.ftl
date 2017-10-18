<nav class="navbar navbar-inverse">
 <div class="container-fluid">
   <div class="navbar-header">
     <a class="navbar-brand" href="#">Car Repairs</a>
   </div>
   <ul class="nav navbar-nav">
     <li class="active"><a href="/admin">Home</a></li>
     <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Users<span class="caret"></span></a>
       <ul class="dropdown-menu">
         <li><a href="/admin/create-user">Create User</a></li>
         <li><a href="/admin/search-user">Search User</a></li>
         <li><a href="/admin/edit-user">Edit User</a></li>
       </ul>
     </li>
     <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Repairs<span class="caret"></span></a>
             <ul class="dropdown-menu">
               <li><a href="#">Create Service</a></li>
               <li><a href="#">Edit Service</a></li>
               <li><a href="#">Search Service</a></li>
             </ul>
           </li>

   </ul>
   <ul class="nav navbar-nav navbar-right">
                 <li>
                     <a href="/logout"> <span class="glyphicon glyphicon-log-in"></span>&nbsp; Logout</a>
                 </li>
               </ul>
 </div>
</nav>