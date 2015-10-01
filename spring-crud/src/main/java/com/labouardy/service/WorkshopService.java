package com.labouardy.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.labouardy.entity.*;
import com.labouardy.repository.WorkshopRepository;

@Service
@Transactional
public class WorkshopService {

	@Autowired
	private WorkshopRepository workshopRepository;
	
	public List<Workshop> findAll(){
		return workshopRepository.findAll();
	}

	public void save(Workshop workshop) {
		workshopRepository.save(workshop);
	}
}
