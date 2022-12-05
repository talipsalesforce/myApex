public  class Collections_Assigment {
   public static void listMethods(List<string> daysList){
    System.debug(' Contens of the dayslist  = '  + daysList);
    System.debug(' Total number of elements in the list : ' +daysList.size());
    daysList.add(' Saturday');
    System.debug(' Added saturday to the list : '  + daysList);
    daysList.add(' Sunday');
    System.debug(' Added sunday to the list : '  + daysList);
    System.debug(' Number of elements of the list after additions : ' +daysList.size());
    System.debug('The first day of the week : '  +daysList.get(0));
    System.debug('The last day of the week : '  +daysList.get(6));
    System.debug('Is the days list empty ? = ' + daysList.isEmpty());
    System.debug(daysList.remove(3));
    System.debug('Is there a thursday in the list after index 3 is deleted ? =  '+ daysList.contains('Thursday'));
    daysList.add(3, 'Thursday');
    System.debug('3. has been re- added to the list --> '+ daysList);
    daysList.set(6, 'Holiday');
    System.debug(' Sunday is now called a holiday --> ' + daysList);
    daysList.sort();
    System.debug('List after sort : '  +daysList);
    daysList.clear();
    System.debug('The list size after clear = ' + daysList.size());
   }
   public static void setmethods(List<string> daysList) {
      System.debug('the daysList is empty ? = ' +daysList.isEmpty());
      daysList.add('Monday');
      daysList.add('Tuesday');
      daysList.add('Wednesday');
      daysList.add('Thursday');
      daysList.add('Friday');
      daysList.add('Saturday');
      daysList.add('Sunday');   
     Set<string> daysSet = new   Set<string>(daysList);
     System.debug(' The daySet of size --> '  + daysSet.size());
     System.debug(' New version ogf the daysSet : ' +daysSet);
     daysSet.add('Friday');
     daysSet.add('Sunday');
     System.debug('after friday and sunday are added to the list :' + daysSet);
     System.debug('The number of elements of the list before it was deleted : '+daysSet.size());
     daysSet.clear();
     System.debug('Deleted daySet list : ' +  daysSet);
     daysSet.addAll(daysList);
     System.debug('DaysList re- added : '+ daysSet);
     System.debug('Is Sunday on the list ? = ' + daysSet.contains('Sunday'));
     System.debug('Is Holiday on the list ? = ' +daysSet.contains('Holiday'));
     daysSet.remove('Sunday');
     System.debug(daysSet);
   }
}
