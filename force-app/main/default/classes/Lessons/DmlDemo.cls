public  class DmlDemo {
    public static void dmlInsertDemo_stndObj() {
        Account acc = new account();
        acc.Name = 'SoftInnovas';
       System.debug( 'NOT INSERTED ' + acc); 
       Insert acc;

       System.debug('INSERTED '+ acc);
    }
    public static void dmlInsertDemo_cstdObj() {
        salesforce_project__c spNew = new salesforce_project__c ();
        spNew.project_name__c = 'teach DML btch 11';
        spNew.description__c = 'everybody is doing great. Keep it up';

        Insert spNew;       
    }

    public static void dmlUpdateDemo_1() {
       Account acc = new account();
        acc.Name = 'SoftInnovas';
        Insert acc; 

         
        acc.Name = 'Salesforce Inc.';
        update acc;
        System.debug(acc);
        
    }


}
