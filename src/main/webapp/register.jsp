
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
String message = "";
String dbUrl = "jdbc:mysql://localhost:3306/jspdb";
String dbUser = "root";
String dbPassword = "roshini@13";

if ("POST".equalsIgnoreCase(request.getMethod())) {
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");

        try (Connection con = DriverManager.getConnection(
                    dbUrl, dbUser, dbPassword)) {

            String checkSql = "SELECT id FROM users WHERE email = ?";

            try (PreparedStatement check = con.prepareStatement(checkSql)) {
                check.setString(1, email);

                try (ResultSet rs = check.executeQuery()) {
                    if (rs.next()) {
                        message = "Email already exists!";
                    } else {
                        String sql = "INSERT INTO users (name, email, password) VALUES (?, ?, ?)";

                        try (PreparedStatement ps = con.prepareStatement(sql)) {
                            ps.setString(1, name);
                            ps.setString(2, email);
                            ps.setString(3, password);
                            ps.executeUpdate();
                        }

                        response.sendRedirect("login.jsp?registered=1");
                        return;
                    }
                }
            }
        }
    } catch (Exception e) {
        application.log("Registration failed", e);
        message = "Registration failed. Check your database connection and Eclipse console.";
    }
}
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register | My Portfolio</title>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/style.css">
</head>
<body>
    <div class="auth-container">
        <div class="auth-card">
            <h1>Create Account</h1>
            <p class="subtitle">Register to explore my portfolio</p>

            <% if (!message.isEmpty()) { %>
                <p style="color:red; margin-bottom:15px;">
                    <%= message %>
                </p>
            <% } %>

            <form action="register.jsp" method="post">
                <label for="name">Full Name</label>
                <input type="text" id="name" name="name"
                       placeholder="Enter your full name" required>

                <label for="email">Email Address</label>
                <input type="email" id="email" name="email"
                       placeholder="Enter your email" required>

                <label for="password">Password</label>
                <input type="password" id="password" name="password"
                       placeholder="Create a password" required>

                <button type="submit">Create Account</button>
            </form>

            <p class="bottom-text">
                Already have an account?
                <a href="login.jsp">Login</a>
            </p>
        </div>
    </div>
</body>
</html>
