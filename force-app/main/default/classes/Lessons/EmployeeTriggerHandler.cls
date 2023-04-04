public  class EmployeeTriggerHandler {
    public static void employee(list<Employee__c> triggerNew) {
        if (!triggerNew.isEmpty()) {
        for (Employee__c eachEmp : triggerNew) {

            EmployeeCalloutFuture.postEmployee(eachEmp.Id); 
        }  
        }
    }
}