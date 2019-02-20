package com.cafecalledencapsulation.cafe;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.cafecalledencapsulation.cafe.Item;

@Repository
public class ItemsDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public List<Item> findAll() {
		// BeanPropertyRowMapper uses the rows from the SQL result create
		// new Room objects and fill in the values by calling the setters.
		// Use .query for SQL SELECT statements.
		return jdbcTemplate.query("SELECT * FROM items", new BeanPropertyRowMapper<>(Item.class));
	}
	
	
	
	
	
}
