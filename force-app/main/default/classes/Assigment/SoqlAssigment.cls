public  class SoqlAssigment {
public static void soqlChild() {
    List<contact> lstContacts = [SELECT Id, Name, Account.Id, Account.Name FROM Contact];
   
    for (contact lstcont : lstContacts) {
        System.debug( 'contact name = '  +lstcont.Name + ' / Account ID --> ' +lstcont.Account.Id + '   /  Account name --> ' + lstcont.Account.Name); 
        
    } 
}
public static void soqlParent() {
    List<Account> lstAccount = [SELECT Id, Name, (SELECT Id, Name FROM Contacts) FROM Account];
   
    
    for (Account lstAcc : lstAccount) {
        System.debug( ' Account name = ' +lstAcc.Name);
        for (contact lstcont : lstAcc.contacts) {
            System.debug(' contact ID = '  + lstcont.Id + ' contact name : ' + lstcont.Name);
            
        }
        
    }
}

}



