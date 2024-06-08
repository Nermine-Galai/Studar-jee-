package entities;

import java.io.Serializable;
import jakarta.persistence.*;
import java.util.List;


/**
 * The persistent class for the landlord database table.
 * 
 */
@Entity
@NamedQuery(name="Landlord.findAll", query="SELECT l FROM Landlord l")
@NamedQuery(name="Landlord.findById", query="SELECT s FROM Landlord s where s.id = ?1")
@NamedQuery(name="Landlord.findByUser", query="SELECT s FROM Landlord s where s.user = ?1")
public class Landlord implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	@Column(name="full_name")
	private String fullName;

	private String gender;
	
	private String picture;

	@Column(name="phone_num")
	private int phoneNum;
	//bi-directional one-to-one association to user
		@OneToOne
		@JoinColumn(name="user_id")
		private User user;
	//bi-directional many-to-one association to House
	@OneToMany(mappedBy="landlord", fetch=FetchType.EAGER)
	private List<House> houses;

	public Landlord() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFullName() {
		return this.fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getGender() {
		return this.gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getPhoneNum() {
		return this.phoneNum;
	}

	public void setPhoneNum(int phoneNum) {
		this.phoneNum = phoneNum;
	}

	public List<House> getHouses() {
		return this.houses;
	}
	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}


	public House addHous(House hous) {
		getHouses().add(hous);
		hous.setLandlord(this);

		return hous;
	}

	public House removeHous(House hous) {
		getHouses().remove(hous);
		hous.setLandlord(null);

		return hous;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

}