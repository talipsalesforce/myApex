public with sharing class SoapCallouts11 {
  public static String[] parksCallout(string country) {
    ParksServices.ParksImplPort parkService = new  ParksServices.ParksImplPort();
    String[] parks = parkService.byCountry(country);
    System.debug(country + ' ülkesinin parklari => ' + parks);
    return parks;
  }
}