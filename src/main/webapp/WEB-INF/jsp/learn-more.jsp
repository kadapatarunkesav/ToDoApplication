<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Learn More - To Do App</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            padding: 20px;
        }
        
        .navbar {
            background: white;
            padding: 15px 30px;
            border-radius: 10px;
            margin-bottom: 30px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        
        .navbar h2 {
            color: #333;
            font-size: 1.5rem;
        }
        
        .navbar a {
            background: #667eea;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            transition: 0.3s;
        }
        
        .navbar a:hover {
            background: #764ba2;
        }
        
        .container {
            max-width: 800px;
            margin: 0 auto;
        }
        
        .content {
            background: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 10px 40px rgba(0, 0, 0, 0.2);
            margin-bottom: 30px;
        }
        
        .content h1 {
            color: #333;
            font-size: 2rem;
            margin-bottom: 20px;
            text-align: center;
        }
        
        .content h2 {
            color: #667eea;
            font-size: 1.4rem;
            margin-top: 30px;
            margin-bottom: 15px;
        }
        
        .content p {
            color: #555;
            line-height: 1.8;
            margin-bottom: 15px;
            font-size: 1rem;
        }
        
        .feature-list {
            list-style: none;
            margin: 20px 0;
        }
        
        .feature-list li {
            padding: 12px 0;
            padding-left: 30px;
            color: #555;
            position: relative;
            line-height: 1.6;
        }
        
        .feature-list li:before {
            content: "⭐";
            position: absolute;
            left: 0;
        }
        
        .highlight {
            background: #f0f4ff;
            padding: 20px;
            border-left: 4px solid #667eea;
            border-radius: 5px;
            margin: 20px 0;
        }
        
        .highlight h3 {
            color: #667eea;
            margin-bottom: 10px;
        }
        
        .cta-button {
            display: inline-block;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 14px 40px;
            border-radius: 5px;
            text-decoration: none;
            transition: all 0.3s;
            margin-top: 20px;
            text-align: center;
        }
        
        .cta-button:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 20px rgba(102, 126, 234, 0.4);
        }
        
        .faq {
            background: #f8f9fa;
            padding: 20px;
            border-radius: 8px;
            margin-top: 20px;
        }
        
        .faq-item {
            margin-bottom: 20px;
        }
        
        .faq-item strong {
            color: #667eea;
            display: block;
            margin-bottom: 8px;
        }
        
        .faq-item p {
            color: #666;
            margin: 0;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <h2>ℹ️ Learn More</h2>
        <a href="/">← Back Home</a>
    </div>
    
    <div class="container">
        <div class="content">
            <h1>About To Do Application</h1>
            
            <p>Welcome to our simple yet powerful To Do Application! This is a modern task management solution designed to help you organize your daily activities efficiently.</p>
            
            <h2>What is This App?</h2>
            <p>The To Do Application is a lightweight task management tool built with Spring Boot and Java. It allows you to create, manage, and track your tasks in a clean and intuitive interface.</p>
            
            <h2>Key Features</h2>
            <ul class="feature-list">
                <li><strong>Create Tasks:</strong> Quickly add new tasks with title and description</li>
                <li><strong>Manage Tasks:</strong> View all your tasks in one organized place</li>
                <li><strong>Mark Complete:</strong> Track your progress by marking tasks as done</li>
                <li><strong>Delete Tasks:</strong> Remove completed or unwanted tasks</li>
                <li><strong>User Friendly:</strong> Simple and intuitive interface for everyone</li>
                <li><strong>Responsive Design:</strong> Works on desktop, tablet, and mobile devices</li>
            </ul>
            
            <div class="highlight">
                <h3>💡 Pro Tip</h3>
                <p>Create categories for your tasks (Work, Personal, Shopping) to organize them better and boost your productivity!</p>
            </div>
            
            <h2>Technology Stack</h2>
            <p>This application is built with modern technologies:</p>
            <ul class="feature-list">
                <li><strong>Backend:</strong> Spring Boot 4.1, Java 21</li>
                <li><strong>Database:</strong> MySQL</li>
                <li><strong>Frontend:</strong> JSP, HTML, CSS</li>
                <li><strong>Architecture:</strong> MVC (Model-View-Controller)</li>
            </ul>
            
            <h2>How to Get Started?</h2>
            <p>Getting started is simple! Just click the button below and start adding your first task.</p>
            <a href="/todos" class="cta-button">→ Start Creating Tasks</a>
            
            <div class="faq">
                <h3>❓ Frequently Asked Questions</h3>
                
                <div class="faq-item">
                    <strong>Q: Can I access my tasks from anywhere?</strong>
                    <p>A: Yes! Since it's a web application, you can access it from any device with a web browser.</p>
                </div>
                
                <div class="faq-item">
                    <strong>Q: Is my data secure?</strong>
                    <p>A: Your tasks are stored securely in our MySQL database. We use environment-specific configurations to protect sensitive information.</p>
                </div>
                
                <div class="faq-item">
                    <strong>Q: Can I export my tasks?</strong>
                    <p>A: Currently, tasks are managed within the application. Export features can be added in future versions.</p>
                </div>
                
                <div class="faq-item">
                    <strong>Q: How do I delete a task?</strong>
                    <p>A: Simply click the "Delete" button next to any task to remove it from your list.</p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
