<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>To Do Application</title>
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
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }
        
        .container {
            background: white;
            border-radius: 10px;
            box-shadow: 0 10px 40px rgba(0, 0, 0, 0.2);
            padding: 40px;
            max-width: 500px;
            width: 100%;
        }
        
        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 10px;
            font-size: 2.5rem;
        }
        
        .subtitle {
            text-align: center;
            color: #666;
            margin-bottom: 30px;
            font-size: 1rem;
        }
        
        .features {
            background: #f8f9fa;
            padding: 20px;
            border-radius: 8px;
            margin-bottom: 30px;
        }
        
        .features h2 {
            font-size: 1.2rem;
            color: #333;
            margin-bottom: 15px;
        }
        
        .features ul {
            list-style: none;
            padding-left: 0;
        }
        
        .features li {
            padding: 8px 0;
            color: #555;
            padding-left: 25px;
            position: relative;
        }
        
        .features li:before {
            content: "✓";
            position: absolute;
            left: 0;
            color: #667eea;
            font-weight: bold;
        }
        
        .button-group {
            display: flex;
            gap: 10px;
            justify-content: center;
        }
        
        .btn {
            padding: 12px 30px;
            border: none;
            border-radius: 5px;
            font-size: 1rem;
            cursor: pointer;
            transition: all 0.3s ease;
            text-decoration: none;
            display: inline-block;
        }
        
        .btn-primary {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
        }
        
        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 20px rgba(102, 126, 234, 0.4);
        }
        
        .btn-secondary {
            background: #e9ecef;
            color: #333;
        }
        
        .btn-secondary:hover {
            background: #dee2e6;
            transform: translateY(-2px);
        }
        
        .welcome-message {
            text-align: center;
            color: #666;
            margin-top: 20px;
            font-size: 0.95rem;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>📝 To Do App</h1>
        <p class="subtitle">Manage your tasks efficiently</p>
        
        <div class="features">
            <h2>Features:</h2>
            <ul>
                <li>Create and manage tasks</li>
                <li>Mark tasks as complete</li>
                <li>Delete completed tasks</li>
                <li>Simple and intuitive interface</li>
            </ul>
        </div>
        <p class="welcome-message">Welcome to your To Do Application. Start organizing your tasks today!</p>
    </div>
</body>
</html>