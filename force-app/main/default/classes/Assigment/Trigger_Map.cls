public  class Trigger_Map {
// Bir Trigger_Map sınıfı oluşturun
// • Bir InsertSF_Project yöntemi oluşturun.
// • Yeni bir Salesforce Projesi kaydı ekleyin (Salesforce_Project__c)
// • Yöntem, yeni oluşturulan Salesforce Projesinin kimliğini döndürmelidir.

    public  Id insertSF_Project() {
        Salesforce_Project__c sfp =new  Salesforce_Project__c();
        sfp.project_Name__c = 'record 2';
        insert sfp;
        return sfp.id;   
    }
    public static void updateSFProject(id sfId, String sfName) {
// Bir UpdateSF_Project yöntemi oluşturun.Yöntem 2 girdi kabul eder, biri Id, ikincisi ise addır. (Veri türünü buna göre seçin) Proje_Adı__c alanını ad girişinde alınan değerle güncelleyin.

        salesforce_Project__c sf = [SELECT id, Project_Name__c FROM Salesforce_Project__c WHERE Id = :sfId];
        sf.project_Name__c = sfName;
        update sf;
        System.debug(sf); 
    }
}
