package com.doan.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.doan.entities.Comic;
import com.doan.repository.ComicRepository;

@Service
@Transactional
public class ComicService {
    @Autowired ComicRepository repo;
     
    public void save(Comic comic) {
        repo.save(comic);
    }
     
    public List<Comic> listAll() {
        return (List<Comic>) repo.findAll();
    }
     
    public Comic get(Long id) {
        return repo.findById(id).get();
    }
     
    public void delete(Long id) {
        repo.deleteById(id);
    }    
}