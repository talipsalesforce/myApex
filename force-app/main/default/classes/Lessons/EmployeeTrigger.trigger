trigger EmployeeTrigger on Employee__c (after insert) {
    if (trigger.isAfter && trigger.isInsert) {
        EmployeeTriggerHandler.employee(trigger.New);
        
    }

}