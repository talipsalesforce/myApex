public  class PrimitiveDataTypeDemo3 {

    public void  printNewDateTime(){

       Datetime dt3 = Datetime.newInstance(2021, 5, 15, 9, 5, 40);
       System.debug(' dt3 is ' + dt3); 

       Datetime dt4_1 = Datetime.newInstance(300000);
       System.debug(' dt4_1' + dt4_1 );

       Long longTime = 1487954621154L;
       Datetime dt4 = Datetime.newInstance(longtime);
       System.debug('dt4 is '+ dt4);

       Datetime dt6 = Datetime.now();
       System.debug('dt 6 current datetime is ' + dt6);


       Datetime dt5 = Datetime.newInstanceGmt(1998, 8, 4, 5, 1, 4);
       System.debug(' dt 5 is '+ dt5);

       
    }
}
