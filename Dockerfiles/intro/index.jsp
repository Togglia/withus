<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>                                               
                                                                                                                                     
<!DOCTYPE html>                                                                                                                      
                                                                                                                                     
<html>                                                                                                                               
<head>                                                                                                                               
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">                                                              
    <title>Travel Index</title>                                                                                                      
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
                                                                                                                                     
        h1 {                                                                                                                         
            font-size: 3em;                                                                                                          
            margin-bottom: 30px;                                                                                                     
            color: #fff; /* Header text color */                                                                                     
            text-shadow: 2px 2px 2px rgba(0,0,0,0.5); /* Text shadow effect */                                                       
        }                                                                                                                            
        a {                                                                                                                          
            display: inline-block;                                                                                                   
            padding: 10px 20px;                                                                                                      
            background-color: #ffc107; /* Button background color */                                                                 
            color: #fff; /* Button text color */                                                                                     
            text-decoration: none;                                                                                                   
            border-radius: 5px;                                                                                                      
            margin: 10px;                                                                                                            
            transition: background-color 0.3s ease;                                                                                  
        }                                                                                                                            
        a:hover {                                                                                                                    
            background-color: #ffca28; /* Button background color on hover */                                                        
        }                                                                                                                            
        .list {                                                                                                                      
            background: linear-gradient(45deg, #f1527c, #115fd5);                                                                    
            -webkit-background-clip: text;                                                                                           
            background-clip: text;                                                                                                   
            font-size: 32px;                                                                                                         
            margin-bottom: 10vh;                                                                                                     
        }                                                                                                                            
                                                                                                                                     
        @media (max-width: 768px) {                                                                                                  
            .list {                                                                                                                  
                font-size: 25px;                                                                                                     
            }                                                                                                                        
        }                                                                                                                            
                                                                                                                                     
        .list li {                                                                                                                   
            color: transparent;                                                                                                      
        }                                                                                                                            
        .explanation {                                                                                                               
            font-size: 40px;                                                                                                         
            color: transparent;                                                                                                      
            background: linear-gradient(45deg, #f1527c, #115fd5); 
            -webkit-background-clip: text;                                            
            background-clip: text;
            font-weight: 700;
            height: 10vh;
            margin-bottom: 5vh;
        }
        .box1 {                                                        
            height: 50vh;      
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            align-items: center;
        }                       
        .box1 span { 
            font-size: 24px;                                                                   
            font-family: 'Merienda', cursive;                                     
            font-weight: 500;                                                                  
            color: transparent;   
            background: linear-gradient(45deg, #8752f1, #ed49c7);
            -webkit-background-clip: text;
            background-clip: text;
            margin: 20px auto;
            padding-top: 50px;  
        }                                       
        .box1 h2 {                                                            
            font-size: 80px;
            text-align: center;
            width: 50%;           
            color: black;      
        }                                                           
                                                
        @media (max-width: 768px) {
            .box1 h2 {         
                font-size: 48px;
            }                                      
        }
        .to-home a {
            width: 15vh;                                                     
            height: 5vh;
            padding: 10px 20px;
            border-radius: 15px;                                 
            box-shadow: 0 0 100px rgba(255, 84, 32, 0.8);
            margin-bottom: 50px;  
            border: none;   
            background: #ff783d;
            display: flex;
            justify-content: center;
            align-items: center;   
            transition: background 0.4s ease-in-out;
            color: white;       
            text-decoration: none;
        }
        .to-home a:hover {
            box-shadow: 0, 0, 1000px rgba(73, 32, 255, 0.8);
            background: #ff5e00;
        }
        .box2 {       
        height: 100vh;      
        padding-top: 20vh;     
        background-color: transparent;          
        margin: 0px 10vh;                                                             
        display: flex;            
        flex-direction: column;
        justify-content: center;
        align-items: center;   
         }
         .how-to-make {                                                
            height: 70vh;      
            flex-direction: column;
            justify-content: start;
            align-items: center;           
        }                       
        .how {                  
            color: transparent;
            background: linear-gradient(45deg, #f1527c, #115fd5);                              
            -webkit-background-clip: text;                                        
            background-clip: text;                                                             
            font-size: 32px;      
            margin-bottom: 10vh;                                 
        }                                 
        .cover-sample {           
            background-color: white;
            height: 100px;      
            width: 100px;                       
            border-radius: 10%;                                               
            transition: transform 0.3s ease;
            background-size: cover;
            background-position: center;
        }                      
        .cover-sample a {                                           
            text-decoration: none;              
            display: block;        
            height: 100%;      
            width: 100%;        
        }                                          
        .cover-sample:hover {
            transform: scale(1.1);
        }                                                                    
        .row {          
            display: flex;     
            gap: 10px;                                           
            position: absolute;                          
            width: 100%;          
            justify-content: space-evenly;
        }                       
        .container {      
            padding: 0px 20px;      
            height: 100%;          
        }                                           
    </style>                    
</head>                           
<body>   
                          
    <div class="box1">                                      
        <span>AWS ... ......... Docker, Kubernetes Project</span>
        <h2>...... ......... ......... ......?</h2>
                      
        <div class="to-home">
        <a href="http://www.togglia.shop/login/">Login</a>
        <a href="http://www.togglia.shop/join/">Join</a>            
    </div>                                                                            
                                  
    <h2 class="explanation">How it works</h2>
                                
    <ul class="list">          
        <li>1. AWS eks... ......... 3tier ......</li>
        <li>2. springboot - react ... ......... Web App ......</li>    
        <li>3. Argo CD... ......... ......... ............ ......</li>
    </ul>                          
</div>                             
</body>                                    
</html>       