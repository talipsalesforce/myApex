public class FlagsCountry {

   public static HttpResponse getCountry() {

    HttpRequest Request = new HttpRequest();
    Request.setEndpoint('https://restcountries.com/v2/all');
    Request.setMethod('GET');

    Http hp = new Http();
    HttpResponse response = hp.send(Request);

    if (response.getStatusCode()==200) {
       String jsonData = response.getBody();

       List<wrapperCountryFlag> listWrapper = (List<wrapperCountryFlag>)JSON.deserialize(jsonData, List<wrapperCountryFlag>.class);

       list<Flag_Country__c> listCountry = new list<Flag_Country__c>();
       for (wrapperCountryFlag eachWrapper : listWrapper) {
         
       Flag_Country__c obj = new Flag_Country__c();
       obj.name = eachWrapper.name;
       obj.Capital__c = eachWrapper.capital;
       obj.Flag_URL__c = eachWrapper.flags.svg;
       obj.Native_Name__c = eachWrapper.nativeName;
       obj.Region__c = eachWrapper.region;
       obj.Population__c = eachWrapper.population;

       listCountry.add(obj);
       }
       insert listCountry;
    }
    return response;
   }

   public class wrapperCountryFlag{
      public String name;
      public String nativeName;
      public Integer population;
      public String capital;
      public String region;
      public wrapperFlags flags;

   }

   public class wrapperFlags{
      public String svg;
   }
}