<%@ taglib prefix="s" uri="/struts-tags"%>
<s:div>
    <s:div>
            <s:div class="container">

                <ul class="list-inline">
                    <li id="menu1" class="list-inline-item"><s:a href="userManagement">User Management</s:a></li>
                    <li id="menu2" class="list-inline-item"><s:a href="userSelectionCurView">Vehicle Management</s:a></li>
                    <li id="menu3" class="list-inline-item"><s:a href="monthlyDetail">Branch Management</s:a></li>
                    <li id="menu4" class="list-inline-item"><s:a href="changeFoods">Department Management</s:a></li>
                    <li id="menu5" class="list-inline-item"><s:a href="configureUser">Role Management</s:a></li>
                    <li id="menu8" class="list-inline-item"><s:a href="foodAdminUserSelectionCurView">Accident</s:a></li>
                    <li id="menu7" class="list-inline-item"><s:a href="orderForOthersView">xxxx</s:a></li>
                </ul>
                <ul class="nav justify-content-end">
                    <li class="nav-item"><a class="nav-link"href="#"><i class="fa fa-user"></i> Welcome <s:property value="#session.userName"/></a></li>
                    <li class="nav-item"><s:a class="nav-link" href="logout">Logout</s:a></li>
                </ul>
            </s:div>
    </s:div>
</s:div>
