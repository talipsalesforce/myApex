trigger CaseTrigger on Case (before update) {
    if (trigger.isInsert) {
        System.debug(' before insert case trigger called');   
    }
    if (trigger.isUpdate) {
        System.debug(' before update case trigger called');   
        CaseTriggerHandler.countTriggerExecution++;
        System.debug(' # of times trigger ran: ' + CaseTriggerHandler.countTriggerExecution);
        Integer size = trigger.size;
        CaseTriggerHandler.countTriggerRecords+= size;
        System.debug(' # of records updated ---> ' + CaseTriggerHandler.countTriggerRecords);

    }
    

}