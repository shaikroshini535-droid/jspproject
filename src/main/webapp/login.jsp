
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String registeredName = request.getParameter("name");
    String registeredEmail = request.getParameter("email");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | My Portfolio</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
</head>
<body>
    <div class="auth-container">
        <div class="auth-card">
            <h1>Welcome Back!</h1>
            <p class="subtitle">Login to view my portfolio</p>

            <form action="home.jsp" method="get">
                <label for="email">Email Address</label>
                <input type="email" id="email" name="email"
                       value="<%= registeredEmail == null ? "" : registeredEmail %>"
                       placeholder="Enter your email" required>

                <label for="name">Your Name</label>
                <input type="text" id="name" name="name"
                       value="<%= registeredName == null ? "" : registeredName %>"
                       placeholder="Enter your name" required>

                <button type="submit">Login</button>
            </form>

            <p class="bottom-text">
                Don't have an account?
                <a href="register.jsp">Register</a>
            </p>
        </div>
    </div>
</body>
</html>
