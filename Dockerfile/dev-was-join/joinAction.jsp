<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Join Action</title>
</head>
<body>
    <%
        String userID = request.getParameter("userID");
        String password = request.getParameter("password");
        String userName = request.getParameter("userName");
        String userGender = request.getParameter("userGender");
        String userEmail = request.getParameter("userEmail");

        String dbURL = "jdbc:mariadb://trip-prd-rds.cfsqemik0j2g.ap-northeast-2.rds.amazonaws.com/withus";
        String dbUser = "root";
        String dbPassword = "mysql12345";

        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            Class.forName("org.mariadb.jdbc.Driver");
            conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

            String sql = "INSERT INTO user (userID, password, userName, userGender, userEmail) VALUES (?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userID);
            pstmt.setString(2, password);
            pstmt.setString(3, userName);
            pstmt.setString(4, userGender);
            pstmt.setString(5, userEmail);
            pstmt.executeUpdate();
                response.sendRedirect("https://dev.withus.site/login/");
        } catch (ClassNotFoundException e) {
            out.println("JDBC Driver not found: " + e.getMessage());
        } catch (SQLException e) {
            out.println("SQL Error: " + e.getMessage());
        } catch (Exception e) {
            out.println("Error: " + e.getMessage());
        } finally {
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
    %>
</body>
</html>
