package com.CRM.repositories;
import org.springframework.data.jpa.repository.JpaRepository;
import com.CRM.entities.Billing;

public interface BillingRepository extends JpaRepository<Billing, Long> {
}