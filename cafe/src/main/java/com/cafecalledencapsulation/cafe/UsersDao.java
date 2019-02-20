package com.cafecalledencapsulation.cafe;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.cafecalledencapsulation.cafe.User;
@Repository
public class UsersDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public void create(User aUser) {

		jdbcTemplate.update("INSERT INTO users (firstname, lastname, ssn, shoesize, roast, extraction, email, birthdate) VALUES (?, ?, ?, ?, ?, ?, ?, ?)", 
				aUser.getFirstName(), aUser.getLastName(), aUser.getSocialSecurity(), aUser.getShoeSize(), 
				aUser.getRoast(), aUser.getExtraction(), aUser.getEmail(), aUser.getBirthDate() );
	}

}
