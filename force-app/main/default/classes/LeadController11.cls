public class LeadController11 {
    @AuraEnabled
    public static Lead[] searchname(string word) {
        string searchWord = '%' + word + '%';
        return [select FirstName, LastName, Company, Industry, LeadSource from Lead where name like : searchWord];
    }
    @AuraEnabled
    public static Lead[] searchIndustry(string industry) {
        return [select FirstName, LastName, Company, Industry, LeadSource from Lead where Industry =: industry];
    }

    @AuraEnabled
    public static Lead[] searchRecentlyLeads() {
        return [select FirstName, LastName, Company, Title from Lead where title != null and company != null order by createdDate desc limit 5 ];
    }
}