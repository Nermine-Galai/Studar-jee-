package mvcModel;

import java.util.ArrayList;
import java.util.List;

import entities.User;
import jakarta.ejb.LocalBean;
import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.TypedQuery;

/**
 * Session Bean implementation class UserService
 */
@Stateless
@LocalBean
public class UserService {
	@PersistenceContext(unitName="studar")
	private EntityManager em;

    /**
     * Default constructor. 
     */
    public UserService() {
        // TODO Auto-generated constructor stub
    }
    public void addUser(String email,String password, String job, String picture) {
		User user=new User();
    	user.setEmail(email);
    	user.setPassword(password);
    	user.setJob(job);
    	user.setPicture(picture);
    	em.persist(user);
	}
    
    public List<User> getAllUsers()
	{
	List<User> users = new ArrayList<User>();
	TypedQuery<User> query =em.createNamedQuery("User.findAll",User.class);
	users = query.getResultList();
	return users;
	}
    	
	
	public User getUserByEmailAndPwd(String email,String pwd)
	{
			List<User> users = new ArrayList<User>();
			TypedQuery<User> query =
			em.createNamedQuery("User.findByEmailAndPwd",User.class);
			query.setParameter(1, email);
			query.setParameter(2, pwd);
			users = query.getResultList();
			if (users.size()!=0) {
		        return users.get(0);
		    } else {
		        return null; // 
		    }
	}
	public User getUserByEmail(String mail) {
		// TODO Auto-generated method stub
		List<User> users = new ArrayList<User>();
		TypedQuery<User> query =
		em.createNamedQuery("User.findByEmail",User.class);
		query.setParameter(1, mail);
		users = query.getResultList();
		if (users.size()!=0) {
	        return users.get(0);
	    } else {
	        return null; // 
	    }
	}
}