package com.CRM.repositories;
import org.springframework.data.jpa.repository.JpaRepository;
import com.CRM.entities.Contact;

public interface ContactRepository extends JpaRepository<Contact, Long> {
}