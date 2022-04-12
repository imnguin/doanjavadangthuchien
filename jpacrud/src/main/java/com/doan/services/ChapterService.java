package com.doan.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.doan.entities.Chapter;
import com.doan.repository.ChapterRepository;

@Service
@Transactional
public class ChapterService {

	@Autowired ChapterRepository repochap;
	
	public void save(Chapter chapter) {
		repochap.save(chapter);
    } 
    public List<Chapter> listAll() {
        return (List<Chapter>) repochap.findAll();
    }
     
    public Chapter get(Long id) {
        return repochap.findById(id).get();
    }
     
    public void delete(Long id) {
    	repochap.deleteById(id);
    }
    
    public List<Chapter> getByNameAndNameComic(Long idcomic, String name) {
    	List<Chapter> abc = repochap.findByNameAndNameComic(idcomic, name);
    	return abc ; }
}
