
    <div id="sidebarMenu"></div>
    <script>
        var url = window.location.pathname;

        <sql:query var="rs" dataSource="${db}">select * from logfile where cusid=<%= session.getAttribute("cusid") %> and logid=(select max(logid) from logfile where cusid=<%= session.getAttribute("cusid") %>)</sql:query>
        <c:forEach var="row" items="${rs.rows}">
        var y = '${row.Date}';
        </c:forEach>
        if (url.match(/WebWorks_war_exploded\/dashboard.jsp/)){
            var sidebar = document.getElementById("sidebarMenu");
            sidebar.innerHTML=`
                <ul class="sidebarMenuInner">
                    <li><a href="RewindNotes/rewindingdashboard.jsp" target="_self">Rewinding
                        Details</a></li>
                    <li><a href="#" target="_self">Stock Management</a></li>
                    <li><a href="#" target="_self">Employee Management</a></li>
                    <li><a href="#" target="_self">Record Management</a></li>
                    <li>
                        <div class="form-group">
                            <label for="lastlogin">Last Login : </label>
                            <p>`+y+`</p>
                        </div>
                    </li>
                </ul>`;
        }
        else if(url.match(/WebWorks_war_exploded\/RewindNotes/)){
            var sidebar = document.getElementById("sidebarMenu");
            sidebar.innerHTML=`
                <ul class="sidebarMenuInner">

                    <li><a href="../dashboard.jsp" target="_self">Dashboard</a></li>
                    <li><a href="addRdetails.jsp" target="_self">Add Rewinding
                        Details</a></li>
                    <li><a href="updateRdetails.jsp" target="_self">Update Rewinding Details</a></li>
                    <li><a href="viewRdetails.jsp" target="_self">View Rewinding Details</a></li>
                    <label for="lastlogin">Last Login :`+y+` </label>
                </ul>`;
        }
    </script>