public  class SOQL_Assigment {
    public static void soqlWhereClause() {
        List<contact> lstContact = [ SELECT id, name FROM Contact WHERE name LIKE 'A%' ]; 
        System.debug(lstContact);
        System.debug('The size of lstContact-->  ' + lstContact.size());     
    }
    public static void soqlFromMethod() {
        List<contact> lstContact = [SELECT id, Lastname, phone FROM Contact ORDER BY Lastname ASC];
        for (contact  eachContact : lstContact) {
        String cLastName = eachContact.lastName;
        String cPhone = eachContact.Phone;
        System.debug('last name --> '  + cLastName +' /  phone number : ' + cPhone);
            
        } 
        
    }

}
