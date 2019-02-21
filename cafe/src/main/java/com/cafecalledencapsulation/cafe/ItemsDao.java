package com.cafecalledencapsulation.cafe;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import org.springframework.stereotype.Repository;

import com.cafecalledencapsulation.cafe.Item;

@Repository
@Transactional
public class ItemsDao {
	@PersistenceContext
	private EntityManager em;
//	private JdbcTemplate jdbcTemplate;

	public List<Item> findAll() {
		// BeanPropertyRowMapper uses the rows from the SQL result create
		// new Room objects and fill in the values by calling the setters.
		// Use .query for SQL SELECT statements.
		return em.createQuery("FROM Item", Item.class).getResultList();
	}
	public void create(Item aItem) {
		em.persist(aItem);
	}
}
