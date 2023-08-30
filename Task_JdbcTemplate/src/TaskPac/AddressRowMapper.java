package TaskPac;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class AddressRowMapper implements RowMapper<Address> {

	@Override
	public Address mapRow(ResultSet rs, int rowNum) throws SQLException {
		Address address = new Address(rowNum, null, null, null, null);
		address.setAddressId(rs.getInt("address_id"));
		address.setStreetAddress(rs.getString("street_address"));
		address.setCity(rs.getString("city"));
		address.setState(rs.getString("state"));
		address.setPostalCode(rs.getString("postal_code"));
		return address;
	}
}
