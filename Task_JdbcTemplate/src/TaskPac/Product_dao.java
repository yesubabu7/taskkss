package TaskPac;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
public interface Product_dao {

	List<Product> getAllProducts();

	List<Address> getAddressesByCustomerId(String customerId);

}

@Component
class Product_imp implements Product_dao {

	JdbcTemplate jdbcTemplate;

	private final String SQL_FIND_EMPLOYEE = "select * from pme where empno = ?";

	@Autowired
	public Product_imp(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public List<Product> getAllProducts() {
		return jdbcTemplate.query("select * from Product_x", new ProductMapper());
	}

	public List<Address> getAddressesByCustomerId(String customer_Id) {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(customer_Id);
		System.out.println(id + "iddd");
		String sql = "SELECT * FROM Address_x WHERE ADDRESS_id = ?";

		return jdbcTemplate.query(sql, new Object[] { id }, new AddressRowMapper());

	}

}
