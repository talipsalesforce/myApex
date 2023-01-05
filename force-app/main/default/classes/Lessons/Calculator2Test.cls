
@isTest
public  class Calculator2Test {
    @isTest
    private static void testmessage() {
        Calculator2.welcomeMessage();
        Calculator2.printNewMessage('this is from test method');
        
    }
    @istest
    private static void addTest1() {
        Integer i = 10;
        Integer j =15;
        Integer sum1 = Calculator2.add(i, j);
        System.assertEquals(25, sum1);
        
    }
     @istest
    private static void addTest2() {
      
        Integer sum1 = Calculator2.add(10,25,15);
        System.assertEquals(50, sum1);
        
    }
}
