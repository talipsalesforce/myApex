public with sharing class EmployeeCalloutFuture {
    @future (callout = true)
    public static void postEmployee(Id empId) {
        
        Employee__c postEmp = [select id, Username__c,Phone_Number__c,Integration_Status__c,	Gender__c,	Name, 	Email__c, 	Designation__c, Complete_Address__c FROM Employee__c WHERE id =:empId];

        EmployeeWrapper empWrapper = new EmployeeWrapper();
        empWrapper.designation = postEmp.Designation__c;
        empWrapper.complete_address =postEmp.Complete_Address__c;
        empWrapper.email = postEmp.Email__c;
        empWrapper.gender =postEmp.Gender__c;
        empWrapper.name =postEmp.Name;
        empWrapper.phone_number =postEmp.Phone_Number__c;
        empWrapper.username =postEmp.Username__c;

        String jsonBody = JSON.serialize(empWrapper);

        HttpRequest request = new HttpRequest();

        request.setEndpoint('https://api.onlinewebtutorblog.com/employees');
        request.setMethod('POST');        
        request.setBody(JSONbody);
        request.setHeader('Content-Type', 'application/json');
        
        Http http = new Http();
        HttpResponse response = http.send(request);

        if (response.getStatusCode()==200) {
            postEmp.Integration_Status__c = response.getBody();
            update postEmp;
            
        }
    }

    public class EmployeeWrapper{
        public String username;
        public String name;
        public String email;
        public String gender;
        public String designation;
        public String phone_number;
        public String complete_address;

    }
   
}