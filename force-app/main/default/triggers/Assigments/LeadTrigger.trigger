trigger LeadTrigger on Lead (before insert, before update) {

List<Lead> leadList = trigger.New;
if (trigger.isBefore && trigger.isInsert) {     
  }
     for (lead eachLead : leadList) {
     System.debug(' This is each leadList :' + eachLead  );    
  }

if (trigger.isBefore && trigger.isUpdate) {
     for (lead eachLead : leadList) {
        System.debug('ID--> '+ eachLead.Id+ ' Name --> '+ eachLead.lastName + ' Description --> '+ eachlead.description);
        
      }
    
  }
}