
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header id="header">
    <h1 id="logo"><a href="Home.jsp">THE A TEAM </a>Hi! ${sessionScope.memberprofile.getUsername()}</h1>
    <nav id="nav">
        <ul>
            <li>
                <a href="#">PROFILE</a>
                <ul>
                    <li><a href="viewprofile.jsp">VIEW PROFILE</a></li>
                    <li><a href="editprofile.jsp">EDIT PROFILE</a></li>
                </ul>
            </li>
            <li><a href="viewAvailabiltyServlet">BOOK COURT</a></li>
            <li><a href="userViewCourtServlet">BOOKING LIST</a></li>
            <li><a href="logout.jsp" class="button special">LOG OUT</a></li>
        </ul>
    </nav>
</header>