package com.CRM.services;
import java.util.List;
import com.CRM.entities.Lead;

public interface LeadService {
public void saveOneLead(Lead lead);
public Lead getOneLeadById(long id);
public void deleteOneLeadById(long id);
public List<Lead> listLeads();
}