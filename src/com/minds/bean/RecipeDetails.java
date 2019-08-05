package com.minds.bean;

public class RecipeDetails {
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	private int id;
	private String category;

	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIngredients() {
		return ingredients;
	}
	public void setIngredients(String ingredients) {
		this.ingredients = ingredients;
	}
	public String getProcedure() {
		return procedure;
	}
	public void setProcedure(String procedure) {
		this.procedure = procedure;
	}
/*	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}*/
	private String name;
	private String ingredients;
	private String procedure;
	/*private String rating;*/
	

}
