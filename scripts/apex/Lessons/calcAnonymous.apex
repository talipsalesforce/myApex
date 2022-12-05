Calculator c2 = new Calculator();
Date date1 = Date.newInstance(2020, 6, 22);
boolean date1Lp = c2.leapYearCheck(date1);
System.debug(' date 1 is leap year? '+ date1Lp);





Integer c2sum33 = c2.add(10, 15, 25);
System.debug(c2sum33);


c2.add(10, 15);
Integer c2sum1 = c2.add(10, 15);
System.debug('c2Sum1 is ' +c2Sum1);
Integer c2Sum2 = c2.add(45, 55);
System.debug('c2Sum2 is ' + c2Sum2);

Integer x = 88;
Integer y = 99;
Integer c2Sum3  = c2.add(x, y); 
System.debug('c2Sum3 is '+ c2Sum3);







Calculator C3 = new Calculator();
String returnC2 = C3.printAndReturnMessage('print this asap');
System.debug(returnC2);





Calculator c1 = new Calculator();

c1.welcomeMessage();

String message = 'print this message';
c1.printNewMessage(message);
  
c1.printNewMessage('now print this.'); 
 


