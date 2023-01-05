public  class Dml_2_Assigment {
   public static void insetDml() {
        Account accoInt = new  Account();
        accoInt.Name='Assigment';
        accoInt.Name= 'Talip';
        insert accoInt;
        System.debug(accoInt);
    } 
   public static void updating_Dml() {
        Account accoUpdt = new Account();
        accoUpdt.Name = 'Account Created';
        insert accoUpdt;
        System.debug(accoUpdt);

        accoUpdt.Name = 'Account Updated';
        update accoUpdt;
        System.debug(accoUpdt);
        
     }
   public static void updating_Dml2() {
        Account accoUpdt2 = new Account();
        accoUpdt2.Name = 'merhaba';
        insert accoUpdt2;
        System.debug(accoUpdt2);

        accoUpdt2.Name = 'kelam';
        update accoUpdt2;
        System.debug(accoUpdt2); 
      }
   public static void createBulkContacts() {
     List<contact> cNewLst = new List<contact>();

     contact cn1 = new contact();
     cn1.firstName = 'Mark';
     cn1.lastName = 'Rufallo';
     cNewLst.add(cn1);
     contact cn2 = new contact();
     cn2.firstName = 'Mark';
     cn2.lastName = 'Rufallo';
     cNewLst.add(cn2);
     contact cn3 = new contact();
     cn3.firstName = 'Chris ';
     cn3.lastName = 'Hemsworth';
     cNewLst.add(cn3);
     contact cn4 = new contact();
     cn4.firstName = 'Scarlett';
     cn4.lastName = 'Johansonn';
     cNewLst.add(cn4);
     contact cn5 = new contact();
     cn5.firstName = 'Scarlett';
     cn5.lastName = 'Johansonn';
     cNewLst.add(cn5);
     insert cNewLst;
     System.debug(cNewLst);
     }
   public static List<contact> searchForcontacts(string lstNm) {
     List<contact> cnt  = [select id, firstName, lastName FROM Contact WHERE lastName = :lstNm];
     System.debug(cnt);
     Return cnt;
     }

}