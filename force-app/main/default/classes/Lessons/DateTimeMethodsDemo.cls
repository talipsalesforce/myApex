public  class DateTimeMethodsDemo {

    public  void  calculateAgeInMonths() {

        Date dttoday = date.today();
        date tDdate = date.newInstance(2005, 07, 16);
        Integer ageInMonths = tDdate.monthsBetween(dttoday);
        System.debug(' Talip age in month is '+ ageINMonths);
    }

    public void calculateAgeInDays(){
           Date dttoday = date.today();
           date tDdate = date.newInstance(2005, 07, 16);
           Integer ageInDays = tDdate.daysBetween(dttoday);
           System.debug(' Talip age in days is '+ ageInDays);
    }

    public void printSubscriptionEndDate(){
           Date subscriptionStartDate = date.today();
           Date subscriptionEndDate = subscriptionStartDate.addDays(1000);
           System.debug('subscription ends on ' + subscriptionEndDate);

           integer endDateYear = subscriptionEndDate.year();
           system.debug('subscription end date YEAR is ' + endDateYear);

           integer endDateMonth = subscriptionEndDate.month();
           system.debug('subscription end date month is ' + endDateMonth);
    }

    public void printOfferEndDateTime(){
           Datetime dtNow = Datetime.now();
           Datetime dtOfferEnd = dtNow.addHours(150);
           System.debug(' Offer end date & time ' +dtOfferEnd );
           date dateOfferEnd = dtOfferEnd.date();
           System.debug('date of offer end '+ dateOfferEnd);
    }

    public void birthDateToMilliSeconds(){
           Datetime birthDate = DateTime.newInstance(2010, 1, 13, 11, 30, 55);
           Long longBirthDate = birthDate.getTime();
           System.debug(' long birth date --> '+ longBirthDate);
    }


   
 }






