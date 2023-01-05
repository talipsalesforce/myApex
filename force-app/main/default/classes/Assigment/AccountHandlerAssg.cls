public  class AccountHandlerAssg {
    public static void CreateContact(List<account> triggerNew, List<account> triggerOld, Map<id, account> triggerNewMap, Map<id, account> triggerOldMap) {
      List<contact> conList = new List<contact>();

        for (account acc : triggerNew) {
            contact cn = new contact();
            cn.AccountId = acc.Id;
            cn.lastName = acc.Name +' talip'; 
            conList.add(cn);   
        }
        insert conList;
    }
}
