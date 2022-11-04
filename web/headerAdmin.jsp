

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header id="header">
    <h1 id="logo"><a href="admin.jsp">THE A TEAM </a>Hi! ${sessionScope.memberprofile.getUsername()}</h1>
    <nav id="nav">
        <ul>
            <li>
                <a href="#">PROFILE</a>
                <ul>
                    <li><a href="viewprofileadmin.jsp">VIEW PROFILE</a></li>
                    <li><a href="editprofileadmin.jsp">EDIT PROFILE</a></li>
                </ul>
            </li>
            <li><a href="MainBookingServlet">MANAGE BOOKING</a></li>
            <li><a href="viewCourtServlet">MANAGE COURT</a></li>
            <li><a href="logout.jsp" class="button special">LOG OUT</a></li>
        </ul>
    </nav>
</header>
