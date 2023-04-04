public  class StudentCtrl {
     @AuraEnabled
 
    public static List<student__c> searchStudentsByPostalCode(string searchKey){
        
        searchKey ='%'+ searchKey + '%';
        return [SELECT  Postal_Code__c, Mobile__c,email__c,Student_Name__c,Class__c
                FROM student__c  
                WHERE Postal_Code__c  LIKE : searchKey
                WITH SECURITY_ENFORCED ];  
}

}
    
    