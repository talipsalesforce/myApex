public  class MapDemo {
    public static String retrieveMonth(Integer m){
        String monthName = '';

        map<Integer, String> mapMonth = new map<Integer, String>();
        mapMonth.put(1, 'January');
        mapMonth.put(2, 'February');
        mapMonth.put(3, 'March');
        mapMonth.put(4, 'April');

        mapMonth.put(5, 'May');
        mapMonth.put(6, 'June');
        mapMonth.put(7, 'July');
        mapMonth.put(8, 'August');


        mapMonth.put(9, 'September');
        mapMonth.put(10, 'October');
        mapMonth.put(11, 'November');
        mapMonth.put(12, 'December');


//Boolean keyExists =  mapMonth.containsKey(m);
if (mapMonth.containsKey(m)){
    monthName = mapMonth.get(m);

}else {
    monthName = ' no such month exists.  Please behave!';
}

 return monthName;


     }


}