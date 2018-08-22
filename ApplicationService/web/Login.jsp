<%-- 
    Document   : Login
    Created on : Aug 22, 2018, 7:48:38 PM
    Author     : macos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="main">
            <form action="LoginServlet">
                <h1><span>ADMIN</span><label> Lgin </label></h1>
                <div class="inset">
                    <p>
                        <label for="email">UAERNAME</label>
                        <input type="text" name="username" placeholder="" required>
                    </p>
                    <p>
                        <label for="password">PASSWORD</label>
                        <input type="password" placeholder="" name="password" required/>
                    </p>
                    <p>
                        <input type="checkbox" name="remeber" id="remember">
                        <label for="remember">Remember me </label>
                    </p>
                </div>
                
                <p class="p_container">
                    <span><a href="#">Forgot password ?</a></span>
                    <input type="submit" value="Login">
                </p>
            </form>
        </div>
        <!----------Start-copyright--------->
        <div class="copy-right">
            <p>Design by <a href="#">fpt-Aptech</a></p>
        </div>
        <!----------End-copyright--------->
    </body>
</html>
