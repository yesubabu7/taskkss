package TaskPac;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ProductController {

	private Product_dao empDAO;

	@Autowired
	public ProductController(Product_dao e) {
		empDAO = e;
	}

	@RequestMapping(value = "/c", method = RequestMethod.GET)
	public String listEmployees(Model model) {
		List<Product> products = empDAO.getAllProducts();

		System.out.println(products.toString() + "iam in controller");
		model.addAttribute("products", products);

		return "ProductDisplay"; // Return the view name for displaying the list
	}

	@RequestMapping(value = "/f", method = RequestMethod.GET)
	public String listEmployee(Model model) {

		List<Product> products = empDAO.getAllProducts();

		model.addAttribute("Products", products);
		return "full";
	}

	@RequestMapping(value = "/customer", method = RequestMethod.GET)
	public String listEmploye(Model model, HttpSession session) {

		return "customer";
	}

	@RequestMapping(value = "/AddressDetails", method = RequestMethod.GET)
	public String listEmploy(@RequestParam("customer_id") String customerId, Model model) {
		List<Address> address = empDAO.getAddressesByCustomerId(customerId);

		model.addAttribute("a", address);

		return "Address"; // Return the name of the view to be displayed
	}

	@RequestMapping(value = "/ProcessSelectedAddress", method = RequestMethod.POST)
	public String processSelectedAddress(@RequestParam("selectedAddressId") int selectedAddressId, Model model) {

		return "ProcessSelectedAddress"; // The JSP page to display the details
	}

}
