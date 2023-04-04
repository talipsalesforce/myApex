@isTest
public  class StudentCtrlTest {
    @isTest
    public static void studentTest() {

        student__c st = new student__c();
        st.Mobile__c = '1235';
        st.Postal_Code__c = '3434';  

        insert st;

     Test.startTest();
     List<student__c>   studentTest = StudentCtrl.searchStudentsByPostalCode('3434');
     System.assert(studentTest.size() !=0);
     Test.stopTest();
    } 
}