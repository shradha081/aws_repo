package com.minds.Dao;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.minds.Dao.databaseconDao;
import com.minds.bean.Admin;
import com.minds.bean.RecipeDetails;
import com.minds.bean.User;


public class databaseconDao {

	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/RMS", "root", "root");
			System.out.println("Connected........!!!!");
		} catch (Exception ex) {
			System.out.println(ex);
		}
		return con;
	}
	
	
	
/*//	
//	public static Admin getRecordById(int id) {
//		Admin ad = null;
//		try {
//			Connection con = getConnection();
//			PreparedStatement ps = con.prepareStatement("select * from admin where username=?");
//			ps.setInt(1, id);
//			ResultSet rs = ps.executeQuery();
//			while (rs.next()) {
//				ad = new Admin();
//				ad.setUsername(rs.getString("username"));
//				ad.setPassword(rs.getString("password"));
//
//			}
//		} catch (Exception e) {
//			System.out.println(e);
//		}
//		return ad;
//	}
*/
	
	public static int UserLogin(User u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("insert into user(email, password) values(?,?)");

			ps.setString(1, u.getEmail());
			ps.setString(2, u.getPassword());

			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	
	
	public static int AddUser(User u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	        		
	        		
	"insert into user(username,password,email,dateofbirth,address,mobileno) values(?,?,?,?,?,?)");  
	    
	        ps.setString(1, u.getUsername());
			ps.setString(2, u.getPassword());
			ps.setString(3, u.getEmail());
			
			ps.setString(4, u.getDateofbirth());
			ps.setString(5, u.getAddress());
			ps.setString(6, u.getMobileno());
			
		/*    ps.setInt(1, u.getUserid);*/
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  

	
	
	/*public static ArrayList<User> getAllRecords() {
		ArrayList<User> list = new ArrayList<User>();

		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from user");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				User a = new User();
				a.setEmail(rs.getString("email"));
				a.setPassword(rs.getString("password"));

				list.add(a);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}*/

	/*public static User getRecordById(int id) {
		User ad = null;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("select * from user where email=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				ad = new User();
				ad.setEmail(rs.getString("email"));
				ad.setPassword(rs.getString("password"));

			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return ad;
	}*/

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


	public static int AddRecipe(RecipeDetails u){
		int status=0;
		try{
			Connection con=databaseconDao.getConnection();
			PreparedStatement ps=con.prepareStatement("insert into recipedetails(category,name,ingredients,procedure,rating) values(?,?,?,?,?)");
			ps.setString(1,u.getCategory());
			ps.setString(2,u.getName());
			ps.setString(3,u.getIngredients());
			ps.setString(4,u.getProcedure());
/*
			ps.setString(5,bean.getRating());*/
			
			status=ps.executeUpdate();
			con.close();
		}catch(Exception ex){System.out.println(ex);}
		return status;
	}

	/*public static int AddRecipe(RecipeDetails r){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	        		
	        		
	"insert into user(id,name,category,ingredients,procedure) values(?,?,?,?,?)");  
	        
	        ps.setString(1, r.getName());
			ps.setString(2, r.getCategory());
			ps.setString(3, r.getIngredients());
			
			ps.setString(4, r.getProcedure());
			
			
			ps.setInt(1, r.getId);
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	*/
	
	public static int RecipeDetails(RecipeDetails u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("insert into recipedetails(category,name,ingredients,recipe_procedure) values(?,?,?,?)"); 
            
			ps.setString(1, u.getCategory());
			ps.setString(2, u.getName());
			ps.setString(3, u.getIngredients());
			
			ps.setString(4, u.getProcedure());
			/*ps.setString(5, u.getRating());*/
		
		
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static ArrayList<RecipeDetails> getAllRecords() {
		ArrayList<RecipeDetails> list = new ArrayList<RecipeDetails>();

		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from recipedetails");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				RecipeDetails u = new RecipeDetails();
				u.setId(rs.getInt("id"));
				u.setCategory(rs.getString("category"));
				u.setName(rs.getString("name"));
				u.setIngredients(rs.getString("ingredients"));
				u.setProcedure(rs.getString("procedure"));
			/*	u.setRating(rs.getString("rating"));*/

				list.add(u);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}

	public static RecipeDetails getRecordById(int id) {
		RecipeDetails u = null;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from recipedetails where category=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				u = new RecipeDetails();
				u.setId(rs.getInt("id"));
				u.setCategory(rs.getString("category"));
				u.setName(rs.getString("name"));
				u.setIngredients(rs.getString("ingredients"));
				u.setProcedure(rs.getString("procedure"));
			/*	u.setRating(rs.getString("rating"));*/
				

			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return u;
	}

	
	

public static List<RecipeDetails> getRecordByCategory(String category) {
	List<RecipeDetails> list=new ArrayList<RecipeDetails>();
	try{
		Connection con=databaseconDao.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from recipedetails where category=?  " ); 
		/*and course=? and sem=?  and due>0*/
		
		ps.setString(1,category);
		
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			RecipeDetails bean=new RecipeDetails();
			/*bean.setId(rs.getInt(1));*/
			bean.setCategory(rs.getString(1));
			bean.setName(rs.getString(2));
			bean.setIngredients(rs.getString(3));
			bean.setProcedure(rs.getString(4));
		/*	bean.setRating(rs.getString(5));*/
		/*	bean.setApprove(rs.getString(7));*/

			
			list.add(bean);
		}
		con.close();
	}catch(Exception ex){System.out.println(ex);}
	
	return list;
}
	
	

	
}

	