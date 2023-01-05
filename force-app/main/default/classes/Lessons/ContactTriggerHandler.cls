public class ContactTriggerHandler {
   public static void contactUpdateValidation1(List<contact> conTriggerNew, List<contact> conTriggerOld,
            Map<id, contact> conTriggerNewMap, Map<id, contact> conTriggerOldMap) {

                //validation
                for (contact eachContact : conTriggerNew) {
                    Contact oldContact = conTriggerOldMap.get(eachContact.id);
                    if (oldContact.LeadSource == 'Partner Referral') {
                        eachContact.addError('Cannot update Partner Referral contact');
                    }
                }
   }

public static void contactUpdateValidation2(List<contact> conTriggerNew, List<contact> conTriggerOld, Map<id, contact> conTriggerNewMap, Map<id, contact> conTriggerOldMap) {

                //validation 2
                for (contact eachContact : conTriggerNew) {
                    Contact oldContact = conTriggerOldMap.get(eachContact.id);
                    if (eachContact.LeadSource != oldContact.leadSource){
                        String customError = System.label.ContactValidation2;
                        eachContact.leadSource.addError(customError);
                    }
                }
   }



}