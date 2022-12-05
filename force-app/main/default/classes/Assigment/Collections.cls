public  class Collections {
    public static string listAssigment(integer i){
        List<string> lstMonth = new List<string>();
        lstMonth.add('January');
        lstMonth.add('February');
        lstMonth.add('March');
        lstMonth.add('April');
        lstMonth.add('May');
        lstMonth.add('june');
        lstMonth.add('july');
        lstMonth.add('August');
        lstMonth.add('September');
        lstMonth.add('October');
        lstMonth.add('November');
        lstMonth.add('December');
        
        string output_month = '';
        if ( i>=0  &&  i<13 ){
            output_month =  lstMonth[i-1];
        } else { 
            output_month = 'please enter valid number'; 
        }
      return output_month;
    }
}
