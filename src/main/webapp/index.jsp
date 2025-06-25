<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My FutureHub - Software Training Institution</title>
    <style>
        /* Reset and Base Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        body {
            line-height: 1.6;
            color: #333;
            background-color: #f9f9f9;
        }
        
        a {
            text-decoration: none;
            color: #2c3e50;
        }
        
        /* Header Styles */
        header {
            background: linear-gradient(135deg, #2c3e50, #3498db);
            color: white;
            padding: 1rem 0;
            position: sticky;
            top: 0;
            z-index: 100;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        
        .container {
            width: 90%;
            max-width: 1200px;
            margin: 0 auto;
        }
        
        .header-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        
        .logo {
            font-size: 1.8rem;
            font-weight: 700;
            color: white;
        }
        
        .logo span {
            color: #f39c12;
        }
        
        nav ul {
            display: flex;
            list-style: none;
        }
        
        nav ul li {
            margin-left: 1.5rem;
        }
        
        nav ul li a {
            color: white;
            font-weight: 500;
            transition: color 0.3s;
        }
        
        nav ul li a:hover {
            color: #f39c12;
        }
        
        .mobile-menu-btn {
            display: none;
            background: none;
            border: none;
            color: white;
            font-size: 1.5rem;
            cursor: pointer;
        }
        
        /* Hero Section */
        .hero {
            background: url('https://images.unsplash.com/photo-1498050108023-c5249f4df085?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80') no-repeat center center/cover;
            height: 80vh;
            display: flex;
            align-items: center;
            position: relative;
        }
        
        .hero::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.6);
        }
        
        .hero-content {
            position: relative;
            z-index: 1;
            color: white;
            max-width: 600px;
        }
        
        .hero h1 {
            font-size: 3rem;
            margin-bottom: 1rem;
        }
        
        .hero p {
            font-size: 1.2rem;
            margin-bottom: 2rem;
        }
        
        .btn {
            display: inline-block;
            background: #f39c12;
            color: white;
            padding: 0.8rem 1.5rem;
            border-radius: 5px;
            font-weight: 600;
            transition: background 0.3s, transform 0.3s;
        }
        
        .btn:hover {
            background: #e67e22;
            transform: translateY(-3px);
        }
        
        /* About Section */
        .section {
            padding: 5rem 0;
        }
        
        .section-title {
            text-align: center;
            margin-bottom: 3rem;
        }
        
        .section-title h2 {
            font-size: 2.5rem;
            color: #2c3e50;
            position: relative;
            display: inline-block;
        }
        
        .section-title h2::after {
            content: '';
            position: absolute;
            bottom: -10px;
            left: 50%;
            transform: translateX(-50%);
            width: 80px;
            height: 3px;
            background: #f39c12;
        }
        
        .about-content {
            display: flex;
            align-items: center;
            gap: 3rem;
        }
        
        .about-text {
            flex: 1;
        }
        
        .about-text h3 {
            font-size: 1.8rem;
            margin-bottom: 1rem;
            color: #2c3e50;
        }
        
        .about-text p {
            margin-bottom: 1.5rem;
            color: #555;
        }
        
        .about-image {
            flex: 1;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }
        
        .about-image img {
            width: 100%;
            height: auto;
            display: block;
        }
        
        /* Courses Section */
        .courses {
            background-color: #f1f5f9;
        }
        
        .courses-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 2rem;
        }
        
        .course-card {
            background: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s, box-shadow 0.3s;
        }
        
        .course-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.15);
        }
        
        .course-img {
            height: 200px;
            overflow: hidden;
        }
        
        .course-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s;
        }
        
        .course-card:hover .course-img img {
            transform: scale(1.1);
        }
        
        .course-content {
            padding: 1.5rem;
        }
        
        .course-content h3 {
            font-size: 1.4rem;
            margin-bottom: 0.5rem;
            color: #2c3e50;
        }
        
        .course-content p {
            color: #666;
            margin-bottom: 1rem;
        }
        
        .course-meta {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 1rem;
            color: #777;
            font-size: 0.9rem;
        }
        
        /* Why Choose Us Section */
        .features {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
        }
        
        .feature-card {
            text-align: center;
            padding: 2rem;
            background: white;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            transition: transform 0.3s;
        }
        
        .feature-card:hover {
            transform: translateY(-10px);
        }
        
        .feature-icon {
            font-size: 3rem;
            color: #f39c12;
            margin-bottom: 1rem;
        }
        
        .feature-card h3 {
            font-size: 1.3rem;
            margin-bottom: 1rem;
            color: #2c3e50;
        }
        
        .feature-card p {
            color: #666;
        }
        
        /* Testimonials Section */
        .testimonials {
            background-color: #f1f5f9;
        }
        
        .testimonials-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 2rem;
        }
        
        .testimonial-card {
            background: white;
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            position: relative;
        }
        
        .testimonial-card::before {
            content: '"';
            position: absolute;
            top: 10px;
            left: 20px;
            font-size: 5rem;
            color: rgba(243, 156, 18, 0.1);
            font-family: Georgia, serif;
            line-height: 1;
        }
        
        .testimonial-text {
            margin-bottom: 1.5rem;
            color: #555;
            font-style: italic;
            position: relative;
            z-index: 1;
        }
        
        .testimonial-author {
            display: flex;
            align-items: center;
        }
        
        .author-img {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            overflow: hidden;
            margin-right: 1rem;
        }
        
        .author-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        
        .author-info h4 {
            font-size: 1.1rem;
            color: #2c3e50;
        }
        
        .author-info p {
            color: #777;
            font-size: 0.9rem;
        }
        
        /* Contact Section */
        .contact-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 3rem;
        }
        
        .contact-info {
            margin-bottom: 2rem;
        }
        
        .contact-info h3 {
            font-size: 1.5rem;
            margin-bottom: 1.5rem;
            color: #2c3e50;
        }
        
        .contact-details {
            margin-bottom: 2rem;
        }
        
        .contact-item {
            display: flex;
            align-items: flex-start;
            margin-bottom: 1.5rem;
        }
        
        .contact-icon {
            font-size: 1.2rem;
            color: #f39c12;
            margin-right: 1rem;
            margin-top: 0.2rem;
        }
        
        .contact-text h4 {
            font-size: 1.1rem;
            color: #2c3e50;
            margin-bottom: 0.3rem;
        }
        
        .contact-text p, .contact-text a {
            color: #666;
        }
        
        .social-links {
            display: flex;
            gap: 1rem;
        }
        
        .social-link {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 40px;
            height: 40px;
            background: #f1f5f9;
            border-radius: 50%;
            color: #2c3e50;
            transition: background 0.3s, color 0.3s;
        }
        
        .social-link:hover {
            background: #f39c12;
            color: white;
        }
        
        .contact-form {
            background: white;
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
        }
        
        .form-group {
            margin-bottom: 1.5rem;
        }
        
        .form-group label {
            display: block;
            margin-bottom: 0.5rem;
            font-weight: 500;
            color: #2c3e50;
        }
        
        .form-control {
            width: 100%;
            padding: 0.8rem;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 1rem;
            transition: border 0.3s;
        }
        
        .form-control:focus {
            outline: none;
            border-color: #f39c12;
        }
        
        textarea.form-control {
            min-height: 150px;
            resize: vertical;
        }
        
        .submit-btn {
            background: #f39c12;
            color: white;
            border: none;
            padding: 0.8rem 1.5rem;
            border-radius: 5px;
            font-size: 1rem;
            font-weight: 600;
            cursor: pointer;
            transition: background 0.3s;
        }
        
        .submit-btn:hover {
            background: #e67e22;
        }
        
        /* Footer */
        footer {
            background: #2c3e50;
            color: white;
            padding: 3rem 0 1rem;
        }
        
        .footer-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 2rem;
            margin-bottom: 2rem;
        }
        
        .footer-col h3 {
            font-size: 1.3rem;
            margin-bottom: 1.5rem;
            position: relative;
            padding-bottom: 0.5rem;
        }
        
        .footer-col h3::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 50px;
            height: 2px;
            background: #f39c12;
        }
        
        .footer-col p {
            margin-bottom: 1rem;
            color: #bbb;
        }
        
        .footer-links {
            list-style: none;
        }
        
        .footer-links li {
            margin-bottom: 0.8rem;
        }
        
        .footer-links a {
            color: #bbb;
            transition: color 0.3s;
        }
        
        .footer-links a:hover {
            color: #f39c12;
        }
        
        .copyright {
            text-align: center;
            padding-top: 2rem;
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            color: #bbb;
            font-size: 0.9rem;
        }
        
        /* Responsive Styles */
        @media (max-width: 992px) {
            .about-content {
                flex-direction: column;
            }
            
            .hero h1 {
                font-size: 2.5rem;
            }
        }
        
        @media (max-width: 768px) {
            .mobile-menu-btn {
                display: block;
            }
            
            nav {
                position: fixed;
                top: 80px;
                left: -100%;
                width: 80%;
                height: calc(100vh - 80px);
                background: #2c3e50;
                transition: left 0.3s;
                padding: 2rem;
            }
            
            nav.active {
                left: 0;
            }
            
            nav ul {
                flex-direction: column;
            }
            
            nav ul li {
                margin: 1rem 0;
            }
            
            .hero h1 {
                font-size: 2rem;
            }
            
            .hero p {
                font-size: 1rem;
            }
            
            .section-title h2 {
                font-size: 2rem;
            }
        }
        
        @media (max-width: 576px) {
            .hero {
                height: 70vh;
            }
            
            .hero h1 {
                font-size: 1.8rem;
            }
            
            .btn {
                padding: 0.6rem 1.2rem;
            }
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <!-- Header -->
    <header>
        <div class="container header-container">
            <a href="#" class="logo">My <span>FutureHub</span></a>
            <button class="mobile-menu-btn" id="mobileMenuBtn">
                <i class="fas fa-bars"></i>
            </button>
            <nav id="mainNav">
                <ul>
                    <li><a href="#home">Home</a></li>
                    <li><a href="#about">About</a></li>
                    <li><a href="#courses">Courses</a></li>
                    <li><a href="#why-us">Why Choose Us</a></li>
                    <li><a href="#testimonials">Testimonials</a></li>
                    <li><a href="#contact">Contact</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="hero" id="home">
        <div class="container">
            <div class="hero-content">
                <h1>Transform Your Career with Future-Ready Skills</h1>
                <p>Join My FutureHub and gain expertise in DevOps, Cloud Computing, Data Science, and Cybersecurity from industry experts.</p>
                <a href="#courses" class="btn">Explore Courses</a>
            </div>
        </div>
    </section>

    <!-- About Section -->
    <section class="section" id="about">
        <div class="container">
            <div class="section-title">
                <h2>About My FutureHub</h2>
            </div>
            <div class="about-content">
                <div class="about-text">
                    <h3>Empowering the Next Generation of Tech Professionals</h3>
                    <p>My FutureHub is a premier software training institution dedicated to bridging the gap between academic knowledge and industry requirements. We specialize in providing hands-on training in cutting-edge technologies that are shaping the future of the IT industry.</p>
                    <p>Our mission is to equip students and professionals with practical skills and real-world experience to excel in their careers. With a team of certified instructors and industry veterans, we offer comprehensive training programs designed to meet the evolving demands of the tech landscape.</p>
                    <p>Whether you're a beginner looking to start a career in tech or a professional aiming to upskill, My FutureHub provides the perfect learning environment to achieve your goals.</p>
                    <a href="#contact" class="btn">Get in Touch</a>
                </div>
                <div class="about-image">
                    <img src="https://images.unsplash.com/photo-1522202176988-66273c2fd55f?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80" alt="Students learning at My FutureHub">
                </div>
            </div>
        </div>
    </section>

    <!-- Courses Section -->
    <section class="section courses" id="courses">
        <div class="container">
            <div class="section-title">
                <h2>Our Courses</h2>
            </div>
            <div class="courses-grid">
                <!-- Course 1 -->
                <div class="course-card">
                    <div class="course-img">
                        <img src="https://images.unsplash.com/photo-1551288049-bebda4e38f71?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80" alt="DevOps Course">
                    </div>
                    <div class="course-content">
                        <h3>DevOps Engineering</h3>
                        <p>Master CI/CD pipelines, containerization, orchestration, and infrastructure as code with our comprehensive DevOps program.</p>
                        <div class="course-meta">
                            <span><i class="far fa-clock"></i> 12 Weeks</span>
                            <span><i class="fas fa-level-up-alt"></i> Advanced</span>
                        </div>
                    </div>
                </div>
                
                <!-- Course 2 -->
                <div class="course-card">
                    <div class="course-img">
                        <img src="https://images.unsplash.com/photo-1610563166150-b34df4f3bcd6?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80" alt="AWS Course">
                    </div>
                    <div class="course-content">
                        <h3>AWS Cloud Practitioner</h3>
                        <p>Become an AWS certified professional with hands-on training in EC2, S3, Lambda, and other core AWS services.</p>
                        <div class="course-meta">
                            <span><i class="far fa-clock"></i> 8 Weeks</span>
                            <span><i class="fas fa-level-up-alt"></i> Intermediate</span>
                        </div>
                    </div>
                </div>
                
                <!-- Course 3 -->
                <div class="course-card">
                    <div class="course-img">
                        <img src="https://images.unsplash.com/photo-1581094794329-c8112a89af12?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80" alt="Azure Course">
                    </div>
                    <div class="course-content">
                        <h3>Microsoft Azure Administrator</h3>
                        <p>Learn to deploy, manage, and monitor Azure resources and prepare for the AZ-104 certification exam.</p>
                        <div class="course-meta">
                            <span><i class="far fa-clock"></i> 10 Weeks</span>
                            <span><i class="fas fa-level-up-alt"></i> Intermediate</span>
                        </div>
                    </div>
                </div>
                
                <!-- Course 4 -->
                <div class="course-card">
                    <div class="course-img">
                        <img src="https://images.unsplash.com/photo-1551288049-bebda4e38f71?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80" alt="GCP Course">
                    </div>
                    <div class="course-content">
                        <h3>Google Cloud Platform</h3>
                        <p>Gain expertise in GCP services and prepare for the Google Cloud Associate Engineer certification.</p>
                        <div class="course-meta">
                            <span><i class="far fa-clock"></i> 8 Weeks</span>
                            <span><i class="fas fa-level-up-alt"></i> Intermediate</span>
                        </div>
                    </div>
                </div>
                
                <!-- Course 5 -->
                <div class="course-card">
                    <div class="course-img">
                        <img src="https://images.unsplash.com/photo-1551288049-bebda4e38f71?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80" alt="Data Analytics Course">
                    </div>
                    <div class="course-content">
                        <h3>Data Analytics</h3>
                        <p>Learn data visualization, SQL, Python for data analysis, and business intelligence tools like Power BI and Tableau.</p>
                        <div class="course-meta">
                            <span><i class="far fa-clock"></i> 10 Weeks</span>
                            <span><i class="fas fa-level-up-alt"></i> Beginner</span>
                        </div>
                    </div>
                </div>
                
                <!-- Course 6 -->
                <div class="course-card">
                    <div class="course-img">
                        <img src="https://images.unsplash.com/photo-1551288049-bebda4e38f71?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80" alt="Data Science Course">
                    </div>
                    <div class="course-content">
                        <h3>Data Science</h3>
                        <p>Master machine learning, statistical analysis, and data wrangling with Python and R in our intensive program.</p>
                        <div class="course-meta">
                            <span><i class="far fa-clock"></i> 16 Weeks</span>
                            <span><i class="fas fa-level-up-alt"></i> Advanced</span>
                        </div>
                    </div>
                </div>
                
                <!-- Course 7 -->
                <div class="course-card">
                    <div class="course-img">
                        <img src="https://images.unsplash.com/photo-1551288049-bebda4e38f71?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80" alt="Data Engineering Course">
                    </div>
                    <div class="course-content">
                        <h3>Data Engineering</h3>
                        <p>Learn to build data pipelines, work with big data technologies, and design data warehouses.</p>
                        <div class="course-meta">
                            <span><i class="far fa-clock"></i> 14 Weeks</span>
                            <span><i class="fas fa-level-up-alt"></i> Advanced</span>
                        </div>
                    </div>
                </div>
                
                <!-- Course 8 -->
                <div class="course-card">
                    <div class="course-img">
                        <img src="https://images.unsplash.com/photo-1551288049-bebda4e38f71?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80" alt="Cyber Security Course">
                    </div>
                    <div class="course-content">
                        <h3>Cyber Security</h3>
                        <p>Develop skills in ethical hacking, penetration testing, and security operations to protect digital assets.</p>
                        <div class="course-meta">
                            <span><i class="far fa-clock"></i> 12 Weeks</span>
                            <span><i class="fas fa-level-up-alt"></i> Intermediate</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Why Choose Us Section -->
    <section class="section" id="why-us">
        <div class="container">
            <div class="section-title">
                <h2>Why Choose My FutureHub</h2>
            </div>
            <div class="features">
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-chalkboard-teacher"></i>
                    </div>
                    <h3>Expert Instructors</h3>
                    <p>Learn from industry professionals with years of hands-on experience in their respective fields.</p>
                </div>
                
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-laptop-code"></i>
                    </div>
                    <h3>Hands-on Training</h3>
                    <p>Our courses emphasize practical skills with real-world projects and lab exercises.</p>
                </div>
                
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-certificate"></i>
                    </div>
                    <h3>Certification Prep</h3>
                    <p>We prepare you for industry-recognized certifications from AWS, Microsoft, Google, and more.</p>
                </div>
                
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-briefcase"></i>
                    </div>
                    <h3>Career Support</h3>
                    <p>Get resume reviews, interview preparation, and job placement assistance.</p>
                </div>
                
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-users"></i>
                    </div>
                    <h3>Flexible Learning</h3>
                    <p>Choose from in-person, online, or hybrid learning options to fit your schedule.</p>
                </div>
                
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-project-diagram"></i>
                    </div>
                    <h3>Real Projects</h3>
                    <p>Work on capstone projects that solve real business problems and build your portfolio.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Testimonials Section -->
    <section class="section testimonials" id="testimonials">
        <div class="container">
            <div class="section-title">
                <h2>What Our Students Say</h2>
            </div>
            <div class="testimonials-grid">
                <div class="testimonial-card">
                    <div class="testimonial-text">
                        <p>The DevOps course at My FutureHub completely transformed my career. The hands-on approach and real-world projects gave me the confidence to apply for senior positions.</p>
                    </div>
                    <div class="testimonial-author">
                        <div class="author-img">
                            <img src="https://randomuser.me/api/portraits/men/32.jpg" alt="John D.">
                        </div>
                        <div class="author-info">
                            <h4>John D.</h4>
                            <p>DevOps Engineer at TechCorp</p>
                        </div>
                    </div>
                </div>
                
                <div class="testimonial-card">
                    <div class="testimonial-text">
                        <p>As someone transitioning from a non-tech background, the Data Science program was challenging but incredibly rewarding. The instructors were patient and supportive throughout.</p>
                    </div>
                    <div class="testimonial-author">
                        <div class="author-img">
                            <img src="https://randomuser.me/api/portraits/women/44.jpg" alt="Sarah M.">
                        </div>
                        <div class="author-info">
                            <h4>Sarah M.</h4>
                            <p>Data Scientist at AnalyticsPro</p>
                        </div>
                    </div>
                </div>
                
                <div class="testimonial-card">
                    <div class="testimonial-text">
                        <p>The AWS course prepared me perfectly for the certification exam. I passed on my first attempt and landed a cloud architect role within a month of completing the program.</p>
                    </div>
                    <div class="testimonial-author">
                        <div class="author-img">
                            <img src="https://randomuser.me/api/portraits/men/67.jpg" alt="Raj P.">
                        </div>
                        <div class="author-info">
                            <h4>Raj P.</h4>
                            <p>Cloud Architect at CloudSolutions</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section class="section" id="contact">
        <div class="container">
            <div class="section-title">
                <h2>Contact Us</h2>
            </div>
            <div class="contact-container">
                <div class="contact-info">
                    <h3>Get in Touch</h3>
                    <div class="contact-details">
                        <div class="contact-item">
                            <div class="contact-icon">
                                <i class="fas fa-map-marker-alt"></i>
                            </div>
                            <div class="contact-text">
                                <h4>Location</h4>
                                <p>123 Tech Park Avenue, Silicon Valley, CA 94025</p>
                            </div>
                        </div>
                        
                        <div class="contact-item">
                            <div class="contact-icon">
                                <i class="fas fa-phone-alt"></i>
                            </div>
                            <div class="contact-text">
                                <h4>Phone</h4>
                                <p><a href="tel:+18005551234">+1 (800) 555-1234</a></p>
                            </div>
                        </div>
                        
                        <div class="contact-item">
                            <div class="contact-icon">
                                <i class="fas fa-envelope"></i>
                            </div>
                            <div class="contact-text">
                                <h4>Email</h4>
                                <p><a href="mailto:info@myfuturehub.com">info@myfuturehub.com</a></p>
                            </div>
                        </div>
                    </div>
                    
                    <h3>Follow Us</h3>
                    <div class="social-links">
                        <a href="#" class="social-link"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="social-link"><i class="fab fa-twitter"></i></a>
                        <a href="#" class="social-link"><i class="fab fa-linkedin-in"></i></a>
                        <a href="#" class="social-link"><i class="fab fa-instagram"></i></a>
                        <a href="#" class="social-link"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                
                <div class="contact-form">
                    <form id="contactForm">
                        <div class="form-group">
                            <label for="name">Your Name</label>
                            <input type="text" id="name" class="form-control" required>
                        </div>
                        
                        <div class="form-group">
                            <label for="email">Your Email</label>
                            <input type="email" id="email" class="form-control" required>
                        </div>
                        
                        <div class="form-group">
                            <label for="subject">Subject</label>
                            <input type="text" id="subject" class="form-control" required>
                        </div>
                        
                        <div class="form-group">
                            <label for="message">Your Message</label>
                            <textarea id="message" class="form-control" required></textarea>
                        </div>
                        
                        <button type="submit" class="submit-btn">Send Message</button>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="footer-container">
                <div class="footer-col">
                    <h3>About Us</h3>
                    <p>My FutureHub is a leading software training institution dedicated to providing high-quality education in emerging technologies.</p>
                    <div class="social-links">
                        <a href="#" class="social-link"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="social-link"><i class="fab fa-twitter"></i></a>
                        <a href="#" class="social-link"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                </div>
                
                <div class="footer-col">
                    <h3>Quick Links</h3>
                    <ul class="footer-links">
                        <li><a href="#home">Home</a></li>
                        <li><a href="#about">About</a></li>
                        <li><a href="#courses">Courses</a></li>
                        <li><a href="#why-us">Why Choose Us</a></li>
                        <li><a href="#testimonials">Testimonials</a></li>
                        <li><a href="#contact">Contact</a></li>
                    </ul>
                </div>
                
                <div class="footer-col">
                    <h3>Courses</h3>
                    <ul class="footer-links">
                        <li><a href="#">DevOps Engineering</a></li>
                        <li><a href="#">AWS Cloud</a></li>
                        <li><a href="#">Azure Administrator</a></li>
                        <li><a href="#">Google Cloud</a></li>
                        <li><a href="#">Data Science</a></li>
                        <li><a href="#">Cyber Security</a></li>
                    </ul>
                </div>
                
                <div class="footer-col">
                    <h3>Contact Info</h3>
                    <div class="contact-item">
                        <i class="fas fa-map-marker-alt"></i>
                        <span>123 Tech Park Avenue, Silicon Valley, CA 94025</span>
                    </div>
                    <div class="contact-item">
                        <i class="fas fa-phone-alt"></i>
                        <span>+1 (800) 555-1234</span>
                    </div>
                    <div class="contact-item">
                        <i class="fas fa-envelope"></i>
                        <span>info@myfuturehub.com</span>
                    </div>
                </div>
            </div>
            
            <div class="copyright">
                <p>&copy; 2023 My FutureHub. All Rights Reserved.</p>
            </div>
        </div>
    </footer>

    <script>
        // Mobile Menu Toggle