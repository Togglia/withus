<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*,java.io.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Action</title>
    <script>
        function showPopup() {
            alert("존재하지 않는 ID입니다. 다시 시도해주세요.");
            window.location.href = "https://www.withus.site/login/"; // login.jsp 페이지로 이동
        }
        
    </script>
</head>
<body>
    <%
        String userID = request.getParameter("userID");
        String password = request.getParameter("password");

        // MariaDB JDBC URL
        String dbURL = "jdbc:mariadb://trip-prd-rds.cfsqemik0j2g.ap-northeast-2.rds.amazonaws.com/withus";
        String dbUser = "root";
        String dbPassword = "mysql12345";

        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        String dbuserId = null;
        String dbuserPassword = null;

        try {
            Class.forName("org.mariadb.jdbc.Driver");
            conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

            String sql = "SELECT * FROM user WHERE userID=? AND password=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userID);
            pstmt.setString(2, password);
            rs = pstmt.executeQuery();

            

            if (rs.next()) {
                out.println("Login Successful");
                dbuserId = rs.getString("userID");
                dbuserPassword = rs.getString("password");
            } else {
                out.println("Invalid credentials. Please try again.");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (pstmt != null) {
                try {
                    pstmt.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {                                            
                    e.printStackTrace();
                }                                  
            }  
        }
        if(userID.equals(dbuserId) && password.equals(dbuserPassword)){
            String RsessionId = request.getRequestedSessionId();
            String sessionId = session.getId();
            response.sendRedirect("https://www.withus.site/home?userId=" + userID + "&sessionId=" + sessionId);
        } else {
            out.println("Session Error");
        }        
    %>
</body>                                                                
</html>
