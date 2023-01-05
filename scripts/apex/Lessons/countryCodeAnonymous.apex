Map<String, country_code__c> allCountryCodes = country_code__c.getAll();
System.debug(' all country codes --> ' + allCountryCodes);
for (string eachCountry : allCountryCodes.keySet()) {
    System.debug(' country is ' + eachCountry+ ' its code is ' +allCountryCodes.get(eachCountry).code__c);
    
}