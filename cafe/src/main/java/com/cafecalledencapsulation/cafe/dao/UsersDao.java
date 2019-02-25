package com.cafecalledencapsulation.cafe.dao;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
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

	public User findById(Long id) {
		return em.find(User.class, id);
	}

	public void create(User aUser) {
		em.merge(aUser);
		// jdbcTemplate.update("INSERT INTO users (firstname, lastname, email, ssn,
		// roast, extraction, birthdate, shoesize) VALUES (?, ?, ?, ?, ?, ?, ?, ?)",
		// aUser.getFirstName(), aUser.getLastName(), aUser.getEmail(),
		// aUser.getSocialSecurity(),
		// aUser.getRoast(), aUser.getExtraction(), aUser.getBirthDate(),
		// aUser.getShoeSize() );
	}

	public User findByEmail(String email) {
		try {
			return em.createQuery("FROM User WHERE email = :email", User.class).setParameter("email", email)
					.getSingleResult();
		} catch (NoResultException ex) {
			// No user with that username found.
			return null;
		}
	}

	
	public void update(User user) {
		em.merge(user);
	}


}
