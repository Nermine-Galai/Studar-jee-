package entities;

import java.io.Serializable;
import jakarta.persistence.*;


/**
 * The persistent class for the house database table.
 * 
 */
@Entity
@NamedQuery(name="House.findAll", query="SELECT h FROM House h")
@NamedQuery(name="House.findAllById", query="SELECT h FROM House h where h.houseId = ?1")
@NamedQuery(name="House.findAllByFilters",query="SELECT h FROM House h WHERE h.bedrooms = ?1 AND h.furnished = ?2 AND (h.gender = ?3 OR h.gender = 'Both') AND h.monthlyRent BETWEEN ?4 AND ?5 AND h.propertyType = ?6 AND h.university = ?7 AND h.waterelect = ?8 AND h.wifi = ?9")
public class House implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int houseId;

	private String bedrooms;

	private int furnished;

	private String gender;

	private String location;
	

	@Column(name="monthly_rent")
	private float monthlyRent;

	private String note;

	private String photo1;
	
	private String photo2;
	
	private String photo3;

	@Column(name="property_type")
	private String propertyType;

	private String university;

	private int waterelect;

	private int wifi;

	//bi-directional many-to-one association to Landlord
	@ManyToOne
	@JoinColumn(name="landId")
	private Landlord landlord;

	public House() {
	}

	public int getHouseId() {
		return this.houseId;
	}

	public void setHouseId(int houseId) {
		this.houseId = houseId;
	}

	public String getBedrooms() {
		return this.bedrooms;
	}

	public void setBedrooms(String bedrooms) {
		this.bedrooms = bedrooms;
	}

	public int getFurnished() {
		return this.furnished;
	}

	public void setFurnished(int furnished) {
		this.furnished = furnished;
	}

	public String getGender() {
		return this.gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getLocation() {
		return this.location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public float getMonthlyRent() {
		return this.monthlyRent;
	}

	public void setMonthlyRent(float monthlyRent) {
		this.monthlyRent = monthlyRent;
	}

	public String getNote() {
		return this.note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public String getPhoto1() {
		return this.photo1;
	}

	public void setPhoto1(String photo) {
		this.photo1 = photo;
	}

	public String getPropertyType() {
		return this.propertyType;
	}

	public void setPropertyType(String propertyType) {
		this.propertyType = propertyType;
	}

	public String getUniversity() {
		return this.university;
	}

	public void setUniversity(String university) {
		this.university = university;
	}

	public int getWaterelect() {
		return this.waterelect;
	}

	public void setWaterelect(int waterelect) {
		this.waterelect = waterelect;
	}

	public int getWifi() {
		return this.wifi;
	}

	public void setWifi(int wifi) {
		this.wifi = wifi;
	}

	public Landlord getLandlord() {
		return this.landlord;
	}

	public void setLandlord(Landlord landlord) {
		this.landlord = landlord;
	}

	public String getPhoto2() {
		return photo2;
	}

	public void setPhoto2(String photo2) {
		this.photo2 = photo2;
	}

	public String getPhoto3() {
		return photo3;
	}

	public void setPhoto3(String photo3) {
		this.photo3 = photo3;
	}

}