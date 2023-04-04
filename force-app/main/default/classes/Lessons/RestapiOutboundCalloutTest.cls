@isTest
public  class RestapiOutboundCalloutTest {
    @isTest
    private static void flagsCountryTest() {
       GetFlagCountryCalloutMock mock = new  GetFlagCountryCalloutMock();
       Test.setMock(HttpCalloutMock.class, mock);

       HttpResponse response = FlagsCountry.getCountry();

       System.assertEquals(200, response.getStatusCode());
       System.assertEquals('OK', response.getStatus());
    }
    
}



