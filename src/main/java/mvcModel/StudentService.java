package mvcModel;

import java.util.ArrayList;
import java.util.List;

import entities.Student;
import entities.User;
import jakarta.ejb.LocalBean;
import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.TypedQuery;

/**
 * Session Bean implementation class StudentService
 */
@Stateless
@LocalBean
public class StudentService {
	@PersistenceContext(unitName="studar")
	private EntityManager em;
    /**
     * Default constructor. 
     */
    public StudentService() {
        // TODO Auto-generated constructor stub
    }
    
    public void addStudent( User user, String fullName,String gender, String university) {
		Student student=new Student();
		student.setUser(user);
    	student.setFull_name(fullName);
    	student.setGender(gender);
    	student.setUniversity(university);
    	em.persist(student);
	}
    
    public List<Student> getAllStudents()
	{
	List<Student> students = new ArrayList<Student>();
	TypedQuery<Student> query =em.createNamedQuery("Student.findAll",Student.class);
	students = query.getResultList();
	return students;
	}
    
    public Student getStudentById(int id)
  	{
  			List<Student> students = new ArrayList<Student>();
  			TypedQuery<Student> query =
  			em.createNamedQuery("Student.findById",Student.class);
  			query.setParameter(1, id);
  			students = query.getResultList();
  			if (students.size()!=0) {
  		        return students.get(0);
  		    } else {
  		        return null; // 
  		    }
  	}
}