<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login</title>
    <style>
        body {
                height: 200vh;
                background-size: cover;
                background-position: center;
                background-image:
                radial-gradient(circle at 50% 35%, #ffffff 0%, #e1f5fe 40%, #81d4fa 70%, #b3e5fc 100%),
                radial-gradient(circle at 10% 10%, #ffffff 0%, #e0f2f1 50%, #b2dfdb 100%),
                radial-gradient(circle at 90% 10%, #ffffff 0%, #e1f5fe 30%, #81d4fa 80%, #29b6f6 100%);
                background-blend-mode: normal;
        }

        .container {
            background-color: #fff;
            border-radius: 10px;
            padding: 40px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            width: 400px;
            text-align: center;
margin: auto;
        }

        h1 {
            color: #333;
            font-size: 36px;
            margin-bottom: 20px;
        }

        form {
            margin-top: 20px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
            color: #333;
            text-align: left;
        }

        input[type="text"],
        input[type="password"],
        input[type="email"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 15px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;                                           
            width: 100%;
        }  
              
        input[type="submit"]:hover {
            background-color: #45a049; 
        }                                   
                                 
        .join-btn {                                                                                    
            background-color: #007bff;                                                    
            color: white;                                                                              
            padding: 15px 1px;                
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;       
            width: 100%;        
            margin-top: 10px;
            text-align: center;                       
            display: inline-block;
            text-decoration: none;
        }    
         
        .join-btn:hover {
            background-color: #0056b3;
        }               
    </style>                
</head>                         
<body>   
    <div class="container">
        <h1>Login</h1>
        <form method="post" action="loginAction.jsp">
            <label for="userID">Username:</label>
            <input type="text" id="userID" name="userID" required>
            <br>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            <br>               
            <input type="submit" value="Login">
        </form>              
         
        <a href="http://www.togglia.shop/join/" class="join-btn">Join</a>
    </div>                 
</body>                        
</html>           