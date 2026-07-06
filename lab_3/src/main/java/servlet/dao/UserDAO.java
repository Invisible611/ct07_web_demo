package dao;

import context.DBContext;
import util.HashUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {

    public boolean login(String username, String password) {

        String sql = """
                SELECT *
                FROM tbl_user
                WHERE username = ?
                AND password = ?
                """;

        try (
                Connection conn = new DBContext().getConnection();
                PreparedStatement ps = conn.prepareStatement(sql);
        ) {

            ps.setString(1, username);
            ps.setString(2, HashUtil.hash(password));

            ResultSet rs = ps.executeQuery();

            return rs.next();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

}