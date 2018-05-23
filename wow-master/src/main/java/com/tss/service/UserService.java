package com.tss.service;

import java.util.List;

import com.tss.model.User;

public interface UserService {
	public User save(User user);

	public User update(User user);

	public List<User> delete(User user);
	
	public List<User> getAllUser();
	
	public User findByUser(User user);
	
}
