package TaskPac; // Make sure to use the correct package name

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class ProductMapper implements RowMapper<Product> {

	public Product mapRow(ResultSet resultSet, int i) throws SQLException {

		Product product = new Product(i, null, null, null, null, null, null);
		product.setProdId(resultSet.getInt("prod_id"));
		product.setName(resultSet.getString("name"));
		product.setDescription(resultSet.getString("description"));
		product.setHsncode(resultSet.getString("hsncode"));
		product.setCategory(resultSet.getString("category"));
		product.setImageUrl(resultSet.getString("image_url"));
		product.setPrice(resultSet.getDouble("price"));
		return product;
	}
}
