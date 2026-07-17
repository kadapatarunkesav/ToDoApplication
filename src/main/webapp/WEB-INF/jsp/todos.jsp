<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My To Do List</title>
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
            max-width: 600px;
            margin: 0 auto;
        }
        
        .todo-form {
            background: white;
            padding: 30px;
            border-radius: 10px;
            margin-bottom: 30px;
            box-shadow: 0 10px 40px rgba(0, 0, 0, 0.2);
        }
        
        .form-group {
            margin-bottom: 20px;
        }
        
        .form-group label {
            display: block;
            color: #333;
            font-weight: 500;
            margin-bottom: 8px;
        }
        
        .form-group input,
        .form-group textarea {
            width: 100%;
            padding: 12px;
            border: 2px solid #e0e0e0;
            border-radius: 5px;
            font-size: 1rem;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            transition: border-color 0.3s;
        }
        
        .form-group input:focus,
        .form-group textarea:focus {
            outline: none;
            border-color: #667eea;
        }
        
        .form-group textarea {
            resize: vertical;
            min-height: 80px;
        }
        
        .btn-submit {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 12px 30px;
            border: none;
            border-radius: 5px;
            font-size: 1rem;
            cursor: pointer;
            transition: all 0.3s ease;
            width: 100%;
        }
        
        .btn-submit:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 20px rgba(102, 126, 234, 0.4);
        }
        
        .todo-list {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 10px 40px rgba(0, 0, 0, 0.2);
        }
        
        .todo-item {
            padding: 15px;
            border-left: 4px solid #667eea;
            background: #f8f9fa;
            margin-bottom: 10px;
            border-radius: 5px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        
        .todo-content h3 {
            color: #333;
            margin-bottom: 5px;
        }
        
        .todo-content p {
            color: #666;
            font-size: 0.9rem;
        }
        
        .todo-actions {
            display: flex;
            gap: 10px;
        }
        
        .btn-small {
            padding: 6px 12px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            font-size: 0.85rem;
            transition: 0.3s;
        }
        
        .btn-complete {
            background: #4caf50;
            color: white;
        }
        
        .btn-complete:hover {
            background: #45a049;
        }
        
        .btn-delete {
            background: #f44336;
            color: white;
        }
        
        .btn-delete:hover {
            background: #da190b;
        }
        
        .empty-state {
            text-align: center;
            padding: 40px 20px;
            color: #999;
        }
        
        .empty-state p {
            font-size: 1rem;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <h2>📝 My To Do List</h2>
        <a href="/">← Back Home</a>
    </div>
    
    <div class="container">
        <!-- Add New Todo Form -->
        <div class="todo-form">
            <h3 style="color: #333; margin-bottom: 20px;">Add New Task</h3>
            <form>
                <div class="form-group">
                    <label for="title">Task Title</label>
                    <input type="text" id="title" name="title" placeholder="Enter task title..." required>
                </div>
                
                <div class="form-group">
                    <label for="description">Description</label>
                    <textarea id="description" name="description" placeholder="Enter task description..."></textarea>
                </div>
                
                <button type="submit" class="btn-submit">Add Task</button>
            </form>
        </div>
        
        <!-- Todo List -->
        <div class="todo-list">
            <h3 style="color: #333; margin-bottom: 20px;">Your Tasks</h3>
            
            <!-- Sample Todo Item -->
            <div class="todo-item">
                <div class="todo-content">
                    <h3>Complete Project</h3>
                    <p>Finish the Java To Do application</p>
                </div>
                <div class="todo-actions">
                    <button class="btn-small btn-complete">✓ Done</button>
                    <button class="btn-small btn-delete">✕ Delete</button>
                </div>
            </div>
            
            <div class="todo-item">
                <div class="todo-content">
                    <h3>Write Documentation</h3>
                    <p>Document the API endpoints</p>
                </div>
                <div class="todo-actions">
                    <button class="btn-small btn-complete">✓ Done</button>
                    <button class="btn-small btn-delete">✕ Delete</button>
                </div>
            </div>
            
            <div class="empty-state" style="display:none;">
                <p>No tasks yet. Add one above to get started! 🚀</p>
            </div>
        </div>
    </div>
</body>
</html>
