@RestResource(urlMapping='/Con/*')
global with sharing class ContactManager {
    @HttpGet
    global static contact getContact() {
        RestRequest Request = RestContext.Request;
        string uri = Request.requestURI;
        id conId = uri.substringAfterLast('/');
        contact con = [select id, FirstName, LastName, Title, Email, Department from  Contact where id =:conId];
        return con;
    }

    @HttpPost
    global static Contact createContact(string lastName, string firstName, String Title, String Email, String Department) {
        Contact con= new Contact();
        con.lastName= lastName;
        con.firstName= firstName;
        con.Title= Title;
        con.Email= Email;
        con.Department= Department;
        
        insert con;
        return con;
    }

    @HttpDelete
    global static string deleteContact() {
        RestRequest Request = RestContext.Request;
        string uri = Request.requestURI;
        id conId = uri.substringAfterLast('/');
        Contact con = [select id from Contact where id =:conId];
        delete con;
        return 'Recordunuz basiriyla silindi..';
    }

    @HttpPut
    global static Contact upsertcontact( string id,string lastName, string firstName, String Title, String Email, String Department) {
       Contact con= new Contact();
        con.Id =id;
        con.lastName= lastName;
        con.firstName= firstName;
        con.Title= Title;
        con.Email= Email;
        con.Department= Department;
        
        upsert con;
        return con;
    }

    @HttpPatch
    global static Contact updateContact() {
        RestRequest Request = RestContext.Request;
        string jsonString = Request.requestBody.toString();
        Contact con = (Contact)JSON.deserialize(jsonString, Contact.Class);
        update con;
        Contact conNew = [select id, FirstName, LastName, Title, Email, Department from  Contact where id =:con.Id];
        return conNew;
    }
}