package in.net.dpl.rest;
 
import javax.ws.rs.FormParam;

/**
 * @author Crunchify.com
 */
 
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Response;

import in.net.dpl.utility.ExamineMessage;
 
@Path("/direct")
public class BilldeskResponse {
	
	@POST
	@Path("/response")
	public String addUser(
		@FormParam("msg") String msg) {
		System.out.println("MSG-"+msg);
		//return Response.status(200).entity("MSG is called, name : " + msg).build();
		String status=new ExamineMessage().examineMsg(msg);
		return "200";
		

	}

}