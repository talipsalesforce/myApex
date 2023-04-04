//Amountu 10000 den buyuk olan ve en büyük amounta sahip 5 tane Opportunity recordun bilgisini alip JSON formata cevirip debug konsolda yazdiralim.. daha sonra tekrar Jsondan,  record formatına çevirelim.

List<opportunity> listOpp = [select id, name, amount from opportunity where amount > 10000  order by  amount desc limit 5];
System.debug(listOpp);

 String oppJson =JSON.serialize(listOpp);
 System.debug('json formatta hali' + oppJson);

JSON.deserialize(oppJson, List<opportunity>.class);
System.debug('tekrar normal record formatı: ' + JSON.deserialize(oppJson, List<opportunity>.class));


//Case objesinden Contactlara bagli olan 2 tane case recordu getirelim. CaseNumber, Subject, Description, Contact.FirstName, Contact.LastName, Account.Name bilgileri ile beraber gelsin ve bu record bilgilerini JSON formata cevirelim..
list<case> listCase = [select id, caseNumber, subject,description, Contact.firstName, contact.LastName, Account.name from case  order by createddate  limit 2];
System.debug('normal case listesi ' + listCase);

  String caseJson = JSON.serialize(listCase);
  System.debug('json formatta case listesi: ' +caseJson);


//json formattaki bilgiyi tekrar eski formata çevireli.
list<case> newCaseList = (list<case>)JSON.deserialize(caseJson,list<case>.class);
System.debug('tekrar Record formatı: ' + newCaseList);
