package com.doan.repository;

import org.springframework.data.repository.CrudRepository;

import com.doan.entities.Comic;

public interface ComicRepository extends CrudRepository<Comic, Long>{
	
}
