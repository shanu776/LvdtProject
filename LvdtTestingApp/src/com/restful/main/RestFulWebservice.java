package com.restful.main;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import utility.Addition;

@Path("/welcome")
public class RestFulWebservice 
{
	
	@GET
	@Produces(MediaType.TEXT_HTML)
	@Path("/kookoodoo")
	public String getWelcomeMessage()
	{
		return "<html>"+"<body>"+"Hi...welcome"+"</body>"+"</html>";
	}
	
	@GET
	@Produces("application/json")
	@Path("/additionJson/{number1}/{number2}")
	public Addition getAdditionJson(@PathParam("number1") int number1,@PathParam("number2") int number2)
	{
		Addition addition=new Addition();
		addition.setNumber1(number1);
		addition.setNumber2(number2);
		int ans=(number1+number2);
		addition.setAns(ans);
		/*return "Ans="+ans*/;
		return addition;
	}
	
	
	
	@GET
	@Produces(MediaType.APPLICATION_XML)
	@Path("/additionXml/{number1}/{number2}")
	public Addition getAddition(@PathParam("number1") int number1,@PathParam("number2") int number2)
	{
		
		Addition addition=new Addition();
		addition.setNumber1(number1);
		addition.setNumber2(number2);
		int ans=(number1+number2);
		addition.setAns(ans);
		/*return "Ans="+ans*/;
		return addition;
	}
}
