public  class Datetime_Assigment {
    public void diffofDate() {
        date varTomorrowDate = date.newInstance(2022, 11, 15);
        date varTodaysDate = date.newInstance(2022, 11, 14);
        Integer dayDifference = varTodaysDate.daysBetween(varTomorrowDate);
        System.debug(' Day difference between  today and tomorrow date --> '+ dayDifference); 

    } 
    public void timeCheck(){
        Datetime varTomorrowDatetime = Datetime.newInstance(2022, 11, 16, 07, 0, 0);
        Datetime add7days = varTomorrowDatetime.addDays(7);
        System.debug(' 7 days added to tomorrow '+ add7days );

        Datetime var10daysDatetime = Datetime.newInstanceGmt(2022, 11, 25, 9, 0, 0);
        Datetime add10days = var10daysDatetime.addDays(10);
        System.debug(' 10 days added to today '+ add10days );

        long  varDatetimeLong = 12339874361L;
        Datetime varLong = Datetime.newInstance(varDatetimeLong);
        System.debug(varLong);

    }
}
