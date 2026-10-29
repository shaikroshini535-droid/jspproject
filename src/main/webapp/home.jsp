
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String studentName = request.getParameter("name");
    if (studentName == null || studentName.trim().isEmpty()) {
        studentName = "Roshini";
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Portfolio</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
</head>
<body>
<nav class="navbar">
        <a href="#home" class="logo">My Portfolio</a>
        <div class="nav-links">
            <a href="#home">Home</a>
            <a href="#about">About</a>
            <a href="#skills">Skills</a>
            <a href="#education">Education</a>
            <a href="#projects">Projects</a>
            <a href="#contact">Contact</a>
            <a href="login.jsp" class="logout">Logout</a>
        </div>
    </nav>

    <section class="hero" id="home">
        <div class="hero-content">
            <p class="eyebrow">WELCOME TO MY PORTFOLIO</p>
            <h1>Hello, I'm <span><%= studentName %></span></h1>
            <h2>AI & Data Science Student</h2>
            <p>
                I am passionate about programming, web development
                and exploring Artificial Intelligence.
            </p>
            <a href="#projects" class="primary-btn">Explore My Work</a>
        </div>
        <div class="hero-shape">
            <div class="profile-circle">R</div>
        </div>
    </section>

    <section class="section" id="about">
        <h2>About Me</h2>
        <div class="about-card">
            <p>
                I am a B.Tech Artificial Intelligence and Data Science
                student at QIS College of Engineering and Technology.
                I enjoy learning new technologies and building
                practical projects to improve my skills.
            </p>
        </div>
    </section>

    <section class="section alternate" id="skills">
        <h2>Technical Skills</h2>
        <div class="skills-grid">
            <div class="skill">Java</div>
            <div class="skill">Python</div>
            <div class="skill">HTML</div>
            <div class="skill">CSS</div>
            <div class="skill">JavaScript</div>
            <div class="skill">C Programming</div>
            <div class="skill">SQL</div>
            <div class="skill">Basic React</div>
        </div>
    </section>

    <section class="section" id="education">
        <h2>Education</h2>
        <div class="content-grid">
            <div class="info-card">
                <span class="tag">2024–2028</span>
                <h3>B.Tech — AI & Data Science</h3>
                <p>QIS College of Engineering and Technology</p>
            </div>
            <div class="info-card">
                <span class="tag">2023–2024</span>
                <h3>Intermediate</h3>
                <p>NRI Junior College</p>
            </div>
            <div class="info-card">
                <span class="tag">2021–2022</span>
                <h3>SSC</h3>
                <p>PVR Girls High School</p>
            </div>
        </div>
    </section>

    <section class="section alternate" id="projects">
        <h2>My Projects</h2>
        <div class="content-grid">
            <div class="info-card">
                <h3>Weather App</h3>
                <p>A web application that displays weather information.</p>
                <span class="tag">HTML · CSS · JavaScript</span>
            </div>
            <div class="info-card">
                <h3>Personal Portfolio</h3>
                <p>A website showcasing my skills, education and projects.</p>
                <span class="tag">Web Development</span>
            </div>
            <div class="info-card">
                <h3>Calculator</h3>
                <p>A simple calculator created as a programming project.</p>
                <span class="tag">Programming Basics</span>
            </div>
        </div>
    </section>

    <section class="section" id="contact">
        <h2>Contact Me</h2>
        <div class="about-card contact-card">
            <p><strong>Name:</strong> <%= studentName %></p>
            <p><strong>Email:</strong>
                <%= request.getParameter("email") == null
                    ? "your-email@example.com"
                    : request.getParameter("email") %>
            </p>
            <p><strong>Location:</strong> Ongole, Andhra Pradesh</p>
        </div>
    </section>

    <footer>
        <p>© 2026 <%= studentName %> | Personal Portfolio</p>
        <p>Designed with passion for technology.</p>
    </footer>

</body>
</html>
