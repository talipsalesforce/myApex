public  class LeadController {
    @AuraEnabled
    public static Lead[] searchName(string word) {
        String arananWord = '%'+ word + '%';
        return [select FirstName,LastName,Company,Industry,LeadSource from Lead where name like : arananWord];      
    }
     @AuraEnabled
    public static lead[] searchIndusrty(string industry) {
        return [select FirstName,LastName,Company,Industry,LeadSource from Lead where Industry =: industry];      
        
    }
}