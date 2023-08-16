package com.CRM.repositories;
import org.springframework.data.jpa.repository.JpaRepository;
import com.CRM.entities.Lead;


public interface LeadRepository extends JpaRepository<Lead, Long> {
}