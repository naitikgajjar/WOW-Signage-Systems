package com.tss.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.tss.model.User;
import com.tss.repository.UserRepository;
import com.tss.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository userRepository;

	@Override
	public User save(User user) {
		return userRepository.save(user);
	}

	@Override
	public User update(User user) {
		return userRepository.save(user);
	}

	@Override
	public List<User> delete(User user) {
		userRepository.delete(user);
		return userRepository.findAll();
	}

	@Override
	public List<User> getAllUser() {
		return userRepository.findAll();
	}

	@Override
	public User findByUser(User user) {
		return userRepository.findByUserId(user.getUserId());
	}

}
