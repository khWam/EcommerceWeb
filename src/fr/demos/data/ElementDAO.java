package fr.demos.data;

import java.util.HashMap;

public interface ElementDAO {


		
		void saveToDB (Object cl) throws Exception;
	    void deleteFromDB (String identifier) throws Exception;
		HashMap<String, Object> getAllDBElements () throws Exception;
		HashMap<String, Object> getDBElement (String identifier) throws Exception;
		int nombre(String identifier) ;

	
	
}
