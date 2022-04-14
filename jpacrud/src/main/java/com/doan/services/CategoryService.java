package com.doan.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.doan.entities.Category;
import com.doan.repository.CategoryRepository;

@Service
@Transactional
public class CategoryService {

	@Autowired CategoryRepository repo;
	
	public void save(Category category) {
		repo.save(category);
    } 
    public List<Category> listAll() {
        return (List<Category>) repo.findAll();
    }
     
    public Category get(Long id) {
        return repo.findById(id).get();
    }
     
    public void delete(Long id) {
    	repo.deleteById(id);
    }
}
