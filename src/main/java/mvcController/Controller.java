package mvcController;

import jakarta.ejb.EJB;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import mvcModel.HouseService;
import mvcModel.LandlordService;
import mvcModel.StudentService;
import mvcModel.UserService;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.logging.Logger;

import entities.House;
import entities.Landlord;
import entities.Student;
import entities.User;
import jakarta.servlet.annotation.MultipartConfig;

import jakarta.servlet.http.Part;
/**
 * Servlet implementation class Controller
 */
@WebServlet( urlPatterns = "/upload" )
@MultipartConfig( fileSizeThreshold = 1024 * 1024, 
                  maxFileSize = 1024 * 1024 * 5,
                  maxRequestSize = 1024 * 1024 * 5 * 5 )
public class Controller extends HttpServlet {
    public static final String IMAGES_FOLDER = "/Images";
    private static final Logger LOGGER = Logger.getLogger(Controller.class.getName());

	private static final long serialVersionUID = 1L;
	@EJB
	private HouseService houseService;
	
	@EJB
	private UserService userService;
	
	@EJB
	private LandlordService landlordService;
	
	@EJB
	private StudentService studentService;
	  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    private String getFileName(Part part) {
        for (String content : part.getHeader("content-disposition").split(";")) {
            if (content.trim().startsWith("filename"))
                return content.substring(content.indexOf("=") + 2, content.length() - 1);
        }
        // If no filename is found, return null or an appropriate default value
        return null; // Or you can return an empty string, depending on your use case
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String Btn=request.getParameter("myBtn");
		 
	if ((Btn!=null)&&(Btn.equals("Search"))){
		String bedrooms = request.getParameter("bedrooms");
		if (bedrooms!=null && bedrooms.equals("room")) {
			bedrooms=null;
		}
		String furnished = request.getParameter("furnished");
		String gender = request.getParameter("gender");
		if (gender.equals("Gender")) {
			gender=null;
		}
		String max = request.getParameter("max");
		String min = request.getParameter("min");
		String propertyType = request.getParameter("property");
		if (propertyType.equals("prop")) {
			propertyType=null;
		}
		String university = request.getParameter("university");
		if (university!=null && university.equals("University")) {
			university=null;
		}
		String waterelect = request.getParameter("waterelect");
		String wifi = request.getParameter("wifi");
		int wifiValue;
		if(wifi!=null) {
			wifiValue=1;
		}
		else {
			wifiValue=0;
		}
		int furnishedValue;
		if(furnished!=null) {
			furnishedValue=1;
		}
		else {
			furnishedValue=0;
		}
		int waterValue;
		if(waterelect!=null) {
			waterValue=1;
		}
		else {
			waterValue=0;
		}
		List<House> housesF = houseService.getAllHousesByFilters(bedrooms,furnishedValue
				,gender,max,min,propertyType,university,waterValue,wifiValue);
		request.setAttribute("listHouses", housesF);
		RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);	
		
	}
	if ((Btn!=null)&&(Btn.equals("details"))){
		int id =Integer.parseInt(request.getParameter("houseId"));
		House house=houseService.getHouseById(id);
		request.setAttribute("house", house);
		RequestDispatcher dispatcher = request.getRequestDispatcher("details.jsp");
        dispatcher.forward(request, response);
	}
	if ((Btn!=null)&&(Btn.equals("details2"))){
		int id =Integer.parseInt(request.getParameter("houseId"));
		House house=houseService.getHouseById(id);
		request.setAttribute("house", house);
		RequestDispatcher dispatcher = request.getRequestDispatcher("details2.jsp");
        dispatcher.forward(request, response);
	}
	if ((Btn!=null)&&(Btn.equals("Update"))){
		int id =Integer.parseInt(request.getParameter("houseId"));
		House house=houseService.getHouseById(id);
		request.setAttribute("house", house);
		RequestDispatcher dispatcher = request.getRequestDispatcher("modify.jsp");
        dispatcher.forward(request, response);
	}
	if ((Btn!=null)&&(Btn.equals("publish"))){
		String bedrooms = request.getParameter("bedrooms");
		String furnished = request.getParameter("furnished");
		String gender = request.getParameter("gender");
		String monthlyRent = request.getParameter("monthly");
		String propertyType = request.getParameter("property");
		String university = request.getParameter("uni");
		String waterelect = request.getParameter("water");
		String wifi = request.getParameter("wifi");
		String note = request.getParameter("note");
		String location = request.getParameter("location");
		Part part1=request.getPart("multiPartServlet1");
		String photo1 = getFileName( part1 );
		Part part2=request.getPart("multiPartServlet2");
		String photo2 = getFileName( part2 );
		Part part3=request.getPart("multiPartServlet3");
		String photo3 = getFileName( part3 );
		String email=request.getParameter("email");
		User user=userService.getUserByEmail(email);
		Landlord landlord =landlordService.getLandlordByuser(user);
		int wifiValue;
		if(wifi!=null) {
			wifiValue=1;
		}
		else {
			wifiValue=0;
		}
		int furnishedValue;
		if(furnished!=null) {
			furnishedValue=1;
		}
		else {
			furnishedValue=0;
		}
		int waterValue;
		if(waterelect!=null) {
			waterValue=1;
		}
		else {
			waterValue=0;
		}
		
		houseService.insertHouse(bedrooms, furnishedValue, gender, location, monthlyRent, note, propertyType, university, waterValue, wifiValue, landlord, photo1, photo2, photo3);
		
		List<House> houses = landlord.getHouses();
		
			request.setAttribute("listHouses", houses);
			RequestDispatcher dispatcher = request.getRequestDispatcher("listings.jsp");
	        dispatcher.forward(request, response);
		
}
	if ((Btn!=null)&&(Btn.equals("modify"))){
		String bedrooms = request.getParameter("bedrooms");
		String furnished = request.getParameter("furnished");
		String gender = request.getParameter("gender");
		String monthlyRent = request.getParameter("monthly");
		String university = request.getParameter("uni");
		String waterelect = request.getParameter("water");
		String wifi = request.getParameter("wifi");
		String note = request.getParameter("note");
		int idh=Integer.parseInt(request.getParameter("houseId"));
		House house=houseService.getHouseById(idh);
		String email=request.getParameter("email");
		User user=userService.getUserByEmail(email);
		Landlord landlord =landlordService.getLandlordByuser(user);
		int wifiValue;
		if(wifi!=null) {
			wifiValue=1;
		}
		else {
			wifiValue=0;
		}
		int furnishedValue;
		if(furnished!=null) {
			furnishedValue=1;
		}
		else {
			furnishedValue=0;
		}
		int waterValue;
		if(waterelect!=null) {
			waterValue=1;
		}
		else {
			waterValue=0;
		}
		
		houseService.updateHouse(house, bedrooms, furnishedValue, gender, monthlyRent, note, university, waterValue,wifiValue);
		List<House> houses = landlord.getHouses();
		
			request.setAttribute("listHouses", houses);
			RequestDispatcher dispatcher = request.getRequestDispatcher("listings.jsp");
	        dispatcher.forward(request, response);
		
}
	if ((Btn!=null)&&(Btn.equals("home"))) {
		response.sendRedirect("index.jsp");
	}
	if ((Btn!=null)&&(Btn.equals("Delete"))) {
		int idh=Integer.parseInt(request.getParameter("houseId"));
		houseService.deleteHouseById(idh);
		String email=request.getParameter("email");
		User user=userService.getUserByEmail(email);
		Landlord landlord =landlordService.getLandlordByuser(user);
		List<House> houses = landlord.getHouses();
		if (houses.isEmpty()) {
			response.sendRedirect("First.jsp");}
			else {
				request.setAttribute("listHouses", houses);
				RequestDispatcher dispatcher = request.getRequestDispatcher("listings.jsp");
		        dispatcher.forward(request, response);
			}
	}
	if ((Btn!=null)&&(Btn.equals("Login"))){
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		User user = userService.getUserByEmailAndPwd(email, password);
		if (user != null) {
				HttpSession session = request.getSession(true);
		        session.setAttribute("activeUser", user);
		        session.setMaxInactiveInterval(3000);
		        List<House> houses = houseService.getAllHouses();
				request.setAttribute("listHouses", houses);
				RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
		        dispatcher.forward(request, response);
			}
		
		
		else {
			
			request.setAttribute("errorMessage", "Your email or password may be incorrect,try again or create a new account");
			RequestDispatcher dispatcher = request.getRequestDispatcher("signlog.jsp");
	        dispatcher.forward(request, response);
		}
		
	
	}else if ((Btn!=null)&&(Btn.equals("Signup"))){
		
			String mail = request.getParameter("email1");
			User user = userService.getUserByEmail(mail);
			if(user ==null) {
				
			Part part=request.getPart("multiPartServlet");
	        String pwd = request.getParameter("password1");
	        String job = request.getParameter("job");
	        String picture = getFileName( part );
	        String full_name=request.getParameter("fullname");
        	String gender=request.getParameter("gender");
        	userService.addUser(mail,pwd,job,picture);
        	User use = userService.getUserByEmail(mail);
	        if(job.equalsIgnoreCase("landlord")) {
	        	int phoneNum = Integer.parseInt(request.getParameter("phone_num"));
	        	landlordService.addLandlord(use,full_name, gender, phoneNum,picture);
	        }else {
	        	String university=request.getParameter("university");
	        	studentService.addStudent(use,full_name,gender,university);
	        }
	        HttpSession session = request.getSession(true);
	        session.setAttribute("activeUser", use);
	        session.setMaxInactiveInterval(3000);
	        List<House> houses = houseService.getAllHouses();
			request.setAttribute("listHouses", houses);
			RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
	        dispatcher.forward(request, response);
	}else {
		request.setAttribute("errorMessage", "Email already used.");
		RequestDispatcher dispatcher = request.getRequestDispatcher("signlog.jsp");
        dispatcher.forward(request, response);
	}
			}
	
		
	else if ((Btn!=null)&&(Btn.equals("list"))){
		String email=request.getParameter("email");
		User user=userService.getUserByEmail(email);
		Landlord landlord =landlordService.getLandlordByuser(user);
		List<House> houses = landlord.getHouses();
		if (houses.isEmpty()) {
		response.sendRedirect("First.jsp");}
		else {
			request.setAttribute("listHouses", houses);
			RequestDispatcher dispatcher = request.getRequestDispatcher("listings.jsp");
	        dispatcher.forward(request, response);
		}
	}
	
}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	
	/*private String getFileName( Part part ) {
        for ( String content : part.getHeader( "content-disposition" ).split( ";" ) ) {
            if ( content.trim().startsWith( "filename" ) )
                return content.substring( content.indexOf( "=" ) + 2, content.length() - 1 );
        }
        
    }*/
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
	}

}