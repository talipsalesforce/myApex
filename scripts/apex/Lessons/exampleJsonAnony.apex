Account a1 = new Account();
a1.Name ='Onur';
a1.phone = '54654446';
a1.annualRevenue = 100;

Account a2 = new Account();
a2.Name ='Onur';
a2.phone = '54654446';
a2.annualRevenue = 100;

Account a3 = new Account(Name = 'Adem', phone ='11111', AnnualRevenue = 200);

List<Account> listAcc = new List<account>{a1,a2,a3};

String accJson = JSON.serialize(listAcc);
System.debug(accJson);


List<Account> accList = [SELECT id, name, phone, site,annualRevenue from Account limit 5];
System.debug(accList);

String accJson2 = JSON.serialize(accList);
System.debug(accJson2);

