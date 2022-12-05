public  class StringDemoClass {

    public void stringMethod1(){
          String sessionDescription = 'learning string methods in apex language.';
          system.debug(sessionDescription);

          integer lengthOfStr = sessionDescription.length();
          system.debug('length of session description is '+ lengthOfStr);

          string capsSessionDescription = sessionDescription.toUpperCase();
          system.debug('in CAPS -> '+ capsSessionDescription);

          boolean apexContains =sessionDescription.contains('apex');
          system.debug('contains apex ???????????? '+ apexContains);

          boolean sfContains =sessionDescription.contains('salesforce');
          system.debug('contains salesforce ???????????? '+ sfContains);

          
          
          

    }
}
