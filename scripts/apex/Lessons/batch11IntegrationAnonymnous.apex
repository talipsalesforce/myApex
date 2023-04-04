List<Account> accList = new List<Account>();

Account acc1 = new Account();
acc1.Name = 'Integration Test 1';
acc1.AnnualRevenue = 100000;
accList.add(acc1);

Account acc2 = new Account();
acc2.Name = 'Integration Test 2';
acc2.AnnualRevenue = 200000;
accList.add(acc2);

System.debug(accList);

string accListJson = JSON.serialize(accList);

System.debug('Listenin Json Formati : ' + accListJson);

List<account> acList = (List<account>)JSON.deserialize(accListJson, List<account>.class);
System.debug('new list ' + acList);

List<opportunity> listOpp = [select id, name, amount from opportunity where amount > 100000 limit 1];

String amountJson = JSON.serialize(listOpp);
System.debug(amountJson);