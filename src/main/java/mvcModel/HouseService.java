package mvcModel;

import java.util.ArrayList;
import java.util.List;

import entities.House;
import entities.Landlord;
import jakarta.ejb.LocalBean;
import jakarta.ejb.Stateless;
import jakarta.persistence.Entity;
import jakarta.persistence.EntityManager;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.TypedQuery;

/**
 * Session Bean implementation class HouseService
 */
@Stateless
@LocalBean


public class HouseService {
	@PersistenceContext(unitName="studar")
	private EntityManager em;
	
	//select all
	public List<House> getAllHouses()
	{
	List<House> houses = new ArrayList<House>();
	TypedQuery<House> query =
	em.createNamedQuery("House.findAll",House.class);
	houses = query.getResultList();
	return houses;
	}
	
	//select 1house by id
	public House getHouseById(int houseId)
	{
	List<House> house = new ArrayList<House>();
	TypedQuery<House> query =
	em.createNamedQuery("House.findAllById",House.class);
	query.setParameter(1, houseId);
	house = query.getResultList();
        return house.get(0);
    
	}
	
	//select filter
	public List<House> getAllHousesByFilters(String Bedrooms,
			int Furnished, String Gender,
			String max, String min,
			String PropertyType,String University,int waterelect,
			int Wifi )
			{
		List<House> houses = new ArrayList<House>();
	    StringBuilder queryString = new StringBuilder("SELECT h FROM House h WHERE 1=1 ");

	    if (Bedrooms != null) {
	        queryString.append("AND h.bedrooms = :Bedrooms ");
	    }
	    queryString.append("AND h.furnished = :Furnished ");
	    if (Gender != null) {
	    	queryString.append("AND (h.gender = :Gender OR h.gender = 'Both') ");
	    	}
	    
	    queryString.append("AND h.monthlyRent BETWEEN :min AND :max ");
	    if (PropertyType != null) {
	    	queryString.append("AND h.propertyType = :Property ");
	    }
	    if (University != null) {
	    	queryString.append("AND h.university = :uni ");
	    }
	    queryString.append("AND h.waterelect = :water AND h.wifi = :wifi");
	    TypedQuery<House> query = em.createQuery(queryString.toString(), House.class);

	    if (Bedrooms != null) {
	        query.setParameter("Bedrooms", Bedrooms);
	    }
	    
	        query.setParameter("Furnished", Furnished);
		    
			if (Gender != null) {
				query.setParameter("Gender", Gender);
		    }
			
			if (min != "") {
				Float rentmin = Float.parseFloat(min);
				query.setParameter("min", rentmin);
		    }
			if (max != "") {
				Float rentmax = Float.parseFloat(max);
				query.setParameter("max", rentmax);
		    }
			if (PropertyType != null) {
				query.setParameter("Property", PropertyType);
		    }
			if (University != null) {
				query.setParameter("uni", University);
		    }
				query.setParameter("water",waterelect );
		    
				query.setParameter("wifi", Wifi);
		    
			
			
			
			houses = query.getResultList();
			return houses;
			}
	//add
	public void insertHouse(String Bedrooms,
			int Furnished, String Gender, String Location,
			String MonthlyRent, String Note, 
			String PropertyType,String University,int Waterelect,
			int Wifi , Landlord landlord, String Photo1, String Photo2, String Photo3) 
	{
		House house=new House();
		if (MonthlyRent != "") {
			house.setMonthlyRent(Float.parseFloat(MonthlyRent));
	    }
	    if (Bedrooms != "") {
	        house.setBedrooms(Bedrooms);
	    }
	    
	        house.setFurnished(Furnished);
	    
	    if (Gender != "" ) {
	    	house.setGender(Gender);
	    }
	    if (Location != "") {
	        house.setLocation(Location);
	    }
	    if (Note != "") {
	        house.setNote(Note);
	    }
	    if (Photo1 != "") {
	        house.setPhoto1(Photo1);
	    }
	    if (Photo2 != "") {
	        house.setPhoto2(Photo2);
	    }
	    if (Photo3 != "") {
	        house.setPhoto3(Photo3);
	    }
	    if (PropertyType != "") {
	        house.setPropertyType(PropertyType);
	    }
	    if (University != "") {
	        house.setUniversity(University);
	    }
	        house.setWaterelect(Waterelect);
	    
	   
	        house.setWifi(Wifi);
	    
	    house.setLandlord(landlord);;
		em.persist(house);
	}

//update
public void updateHouse(House  house,String newBedrooms,
		int newFurnished, String newGender,
		String newMonthlyRent, String newNote,String newUniversity,int newWaterelect,
		int newWifi) 
{
	if (newMonthlyRent != "") {
		house.setMonthlyRent(Float.parseFloat(newMonthlyRent));
    }
    if (newBedrooms != "") {
        house.setBedrooms(newBedrooms);
    }
    
        house.setFurnished(newFurnished);
    
    if (newGender != "" ) {
    	house.setGender(newGender);
    }
    if (newNote != "") {
        house.setNote(newNote);
    }
   
    if (newUniversity != "") {
        house.setUniversity(newUniversity);
    }
        house.setWaterelect(newWaterelect);
    
   
        house.setWifi(newWifi);
    
	em.merge(house);
}

//delete
public List<House> deleteHouseById(int houseId){
	List<House> houses = new ArrayList<House>();
	House house = em.find(House.class, houseId);if(house!=null)
	em.remove(house);
	TypedQuery<House> query =
	em.createNamedQuery("House.findAll",House.class);
	houses = query.getResultList();
	return houses;
		}
/*public void geocodeAndSaveProperty(Property property) {
    try {
        String address = property.getAddress();
        // Call Google Maps Geocoding API to get latitude and longitude
        String apiKey = "YOUR_GOOGLE_MAPS_API_KEY";
        String geocodingUrl = "https://maps.googleapis.com/maps/api/geocode/json?address=" + URLEncoder.encode(address, "UTF-8") + "&key=" + apiKey;
        
        // Make HTTP request to Google Maps Geocoding API
        URL url = new URL(geocodingUrl);
        HttpURLConnection connection = (HttpURLConnection) url.openConnection();
        connection.setRequestMethod("GET");
        
        BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
        StringBuilder responseBuilder = new StringBuilder();
        String line;
        while ((line = reader.readLine()) != null) {
            responseBuilder.append(line);
        }
        reader.close();
        
        // Parse JSON response to extract latitude and longitude
        JSONObject jsonResponse = new JSONObject(responseBuilder.toString());
        JSONArray results = jsonResponse.getJSONArray("results");
        if (results.length() > 0) {
            JSONObject location = results.getJSONObject(0).getJSONObject("geometry").getJSONObject("location");
            double latitude = location.getDouble("lat");
            double longitude = location.getDouble("lng");
            // Set latitude and longitude on the property object
            property.setLatitude(latitude);
            property.setLongitude(longitude);
            // Save property to the database
            entityManager.persist(property);
        } else {
            System.out.println("No results found for the address: " + address);
        }
    } catch (IOException | JSONException e) {
        e.printStackTrace();
        // Handle exception
    }
}*/


    /**
     * Default constructor. 
     */
    public HouseService() {
        // TODO Auto-generated constructor stub
    }

}