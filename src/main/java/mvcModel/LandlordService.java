package mvcModel;

import java.util.ArrayList;
import java.util.List;

import entities.Landlord;
import entities.User;
import jakarta.ejb.LocalBean;
import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.TypedQuery;

/**
 * Session Bean implementation class LandlordService
 */
@Stateless
@LocalBean
public class LandlordService {
	@PersistenceContext(unitName="studar")
	private EntityManager em;

    /**
     * Default constructor. 
     */
    public LandlordService() {
        // TODO Auto-generated constructor stub
    }
    public void addLandlord(User user, String fullName,String gender, int phoneNum, String picture) {
		Landlord landlord=new Landlord();
		landlord.setUser(user);
    	landlord.setFullName(fullName);
    	landlord.setGender(gender);
    	landlord.setPhoneNum(phoneNum);
    	landlord.setPicture(picture);
    	em.persist(landlord);
	}
    
    public List<Landlord> getAllLandlords()
	{
	List<Landlord> landlords = new ArrayList<Landlord>();
	TypedQuery<Landlord> query =em.createNamedQuery("Landlord.findAll",Landlord.class);
	landlords = query.getResultList();
	return landlords;
	}
    
    public Landlord getLandlordById(int id)
	{
			List<Landlord> landlords = new ArrayList<Landlord>();
			TypedQuery<Landlord> query =
			em.createNamedQuery("Landlord.findById",Landlord.class);
			query.setParameter(1, id);
			landlords = query.getResultList();
			if (landlords.size()!=0) {
		        return landlords.get(0);
		    } else {
		        return null; // 
		    }
	}
	public Landlord getLandlordByuser(User user) {
		List<Landlord> landlords = new ArrayList<Landlord>();
		TypedQuery<Landlord> query =
		em.createNamedQuery("Landlord.findByUser",Landlord.class);
		query.setParameter(1, user);
		landlords = query.getResultList();
		if (landlords.size()!=0) {
	        return landlords.get(0);
	    } else {
	        return null; // 
	    }
	}
}