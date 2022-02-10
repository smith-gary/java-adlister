import com.mysql.cj.jdbc.Driver;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection = null;
//    private List<Ad> ads;

//    public MySQLAdsDao (){};

    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch(SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Ad> all() {
        List<Ad> showAll = new ArrayList<>();
        try {
            Statement stmt = connection.createStatement();
            String query = "SELECT * FROM ads";

            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                Ad newAd = new Ad(
                    rs.getLong("id"),
                    rs.getLong("user_id"),
                    rs.getString("title"),
                    rs.getString("description")
                );
                showAll.add(newAd);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return showAll;
    }

    @Override
    public Long insert(Ad ad) {
        try {
            Statement stmt = connection.createStatement();
            String query = "INSERT INTO ads(user_id, title, description) VALUES " +
                    "(" + ad.getUserId() + ", " +
                    "'" + ad. getTitle() + "', " +
                    "'" + ad.getDescription() + "')";

            stmt.executeUpdate(query, Statement.RETURN_GENERATED_KEYS);
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);

        } catch (SQLException e) {
            throw new RuntimeException("Add not created.", e);
        }
    }
}
