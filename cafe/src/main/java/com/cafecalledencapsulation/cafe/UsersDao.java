package com.cafecalledencapsulation.cafe;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import org.springframework.stereotype.Repository;

import com.cafecalledencapsulation.cafe.User;

@Repository
@Transactional
public class UsersDao {

	// @Autowired
	// private JdbcTemplate jdbcTemplate;

	@PersistenceContext
	private EntityManager em;

	public void create(User aUser) {
		em.merge(aUser);
		// jdbcTemplate.update("INSERT INTO users (firstname, lastname, email, ssn,
		// roast, extraction, birthdate, shoesize) VALUES (?, ?, ?, ?, ?, ?, ?, ?)",
		// aUser.getFirstName(), aUser.getLastName(), aUser.getEmail(),
		// aUser.getSocialSecurity(),
		// aUser.getRoast(), aUser.getExtraction(), aUser.getBirthDate(),
		// aUser.getShoeSize() );
	}
	
	

}
