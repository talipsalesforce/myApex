@isTest
public  class Sf_AssgTest {
@isTest    
private static void insertsfTest() {
    Sf_Assg.insertsf(); 
   List<salesforce_project__c> sfNewList = [SELECT id,project_Name__c FROM salesforce_project__c WHERE project_Name__c = 'Phone23'];
   System.assertEquals(10, sfNewList.size());
   System.assertEquals('Phone23', sfNewList[0].project_Name__c);
}
@isTest
private static void updatesfTest() {
    Sf_Assg.insertsf();
    Sf_Assg.updatesf();
    List<salesforce_project__c> sfUpdateList = [SELECT id, project_Name__c FROM Salesforce_Project__c WHERE Project_Name__c = 'Phone2'];
    System.assertEquals('Phone2', sfUpdateList[0].project_Name__c);
    System.assertEquals(1, sfUpdateList.size());
    
 }
}
