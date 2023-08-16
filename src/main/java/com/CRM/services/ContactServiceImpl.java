package com.CRM.services;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.CRM.entities.Contact;
import com.CRM.repositories.ContactRepository;

@Service
public class ContactServiceImpl implements ContactService {
	@Autowired
	private ContactRepository contactRepo;

	@Override
	public void saveOneContact(Contact contact) {
		contactRepo.save(contact);
	}

	@Override
	public List<Contact> listContacts() {
		List<Contact> contacts = contactRepo.findAll();
		return contacts;
	}

	@Override
	public Contact getOneContactById(long id) {
		Optional<Contact> findById = contactRepo.findById(id);
		Contact contact = findById.get();
		return contact;
	}

	@Override
	public void deleteOneContactById(long id) {
		contactRepo.deleteById(id);
	}
}