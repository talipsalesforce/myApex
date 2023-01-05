trigger AssetTrigger on Asset (before insert, before update) {
    if (trigger.isBefore && trigger.isInsert) {
       AssetTriggerHandler.AssetHandlerUpdate(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap); 
    }
if (trigger.isBefore && trigger.isUpdate) {
       AssetTriggerHandler.AssetHandlerUpdate(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap); 
    }

}