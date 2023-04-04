@isTest
public  class OperationsHelperTest {
    @istest
    private static void largestOutOfTwoNumbersTest() {
        OperationsHelper hp = new OperationsHelper();
        //Decimal sonuc = hp.largestOutOfTwoNumbers(3, 8);

        System.assertEquals(8, hp.largestOutOfTwoNumbers(3, 8)); 
        System.assertNotEquals(3, hp.largestOutOfTwoNumbers(3, 8));
        System.assertEquals(3, hp.largestOutOfTwoNumbers(3, 1));
    }
    @isTest
    private static void smallestOutOfThreeNumbersTest() {
        OperationsHelper hp2 = new OperationsHelper();
        //hp2.smallestOutOfThreeNumbers(2, 5, 7);
        System.assertEquals(2,  hp2.smallestOutOfThreeNumbers(2, 5, 7));
        System.assertEquals(5,  hp2.smallestOutOfThreeNumbers(12, 5, 7));
        System.assertEquals(7,  hp2.smallestOutOfThreeNumbers(12, 15, 7));
    }
    @isTest
    private static void sumOfPositiveIntegerTest() {
        OperationsHelper hp3 = new OperationsHelper();
         System.assertEquals(null, hp3.sumOfPositiveInteger(-2));
         System.assertEquals(6, hp3.sumOfPositiveInteger(3));
         
        
    }

}