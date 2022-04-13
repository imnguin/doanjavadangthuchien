package com.doan.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.doan.entities.Chapter;

public interface ChapterRepository extends CrudRepository<Chapter, Long> {

	 @Query(value = "SELECT * FROM Chapter e WHERE e.Idcomic = ?1 AND e.Name like %?2%", nativeQuery = true)
	 List<Chapter> findByNameAndNameComic(Long idcomic, String name);
	 
	 @Query(value = "SELECT * FROM Chapter e WHERE e.Idcomic = ?1", nativeQuery = true)
	 List<Chapter> findChapByIdcomic(Long idcomic);
}
