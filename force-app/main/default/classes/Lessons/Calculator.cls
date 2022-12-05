public  class Calculator {
    public void welcomeMessage(){
        System.debug('welcome to apex clac ');
    }
    public void printNewMessage(string msg){
         System.debug(msg);  
    }
    public string printAndReturnMessage(string msg){
      string returnString = msg + '...OK cool.';
      return returnString;
    }
    public Integer add(Integer a, Integer b){
        Integer sum = a + b;
        return sum;
    }
    public Integer add( Integer x, Integer y, Integer z){
        Integer sum = x + y + z;
        return sum ;
    }
    public boolean leapYearCheck(date dt){
        Integer year = dt.year();
        boolean lp = date.isLeapYear(year);
        return lp;
     }

    }

