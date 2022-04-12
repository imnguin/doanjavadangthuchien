package com.doan.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.doan.entities.ImagesComic;

public interface ImagesComicRepository extends CrudRepository<ImagesComic, Long>{

	@Query(value = "SELECT i.id, i.img, i.idchapter FROM Chapter e, images i, comic c WHERE c.id = e.idcomic and e.id = i.idchapter and c.id = ?1 and e.name like ?2", nativeQuery = true) 
	 List<ImagesComic> findByNameAndNameComic(Long idcomic, String name);
}
