package com.labouardy.service;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.labouardy.entity.Workshop;
import com.labouardy.repository.WorkshopRepository;

@Service
public class InitDbService {

	@Autowired
	private WorkshopRepository workshopRepository;
	
	@PostConstruct
	public void init(){
		Workshop workshop=new Workshop();
		workshop.setName("Dockercon");
		workshop.setDescription("Cloud and big data");
		workshop.setSubject("Cloud");
		workshop.setAnimator("Xavier Blanc");
		workshopRepository.save(workshop);
	}
}
