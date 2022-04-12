package com.doan.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.doan.entities.ImagesComic;
import com.doan.repository.ImagesComicRepository;

@Service
@Transactional
public class ImagesComicService {

@Autowired ImagesComicRepository repo;
	
	public void save(ImagesComic chapter) {
		repo.save(chapter);
    } 
    public List<ImagesComic> listAll() {
        return (List<ImagesComic>) repo.findAll();
    }
     
    public ImagesComic get(Long id) {
        return repo.findById(id).get();
    }
     
    public void delete(Long id) {
    	repo.deleteById(id);
    }
    
    public List<ImagesComic> getByNameAndNameComic(Long idcomic, String name) {
    	List<ImagesComic> abc = repo.findByNameAndNameComic(idcomic, name);
    	return abc ;
    }
}
