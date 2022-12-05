Map<String,Integer> markObtainInMaths = new Map<String,Integer>();
markObtainInMaths.put('0111CE112', 40);
markObtainInMaths.put('0111CE102', 19);
markObtainInMaths.put('0111CE100', 33);
markObtainInMaths.put('0111CE098', 40);
markObtainInMaths.put('0111CE007', 45);
markObtainInMaths.put('0111CE014', 12);

System.debug(markObtainInMaths);
 for ( string rlNumber: markObtainInMaths.keySet()){
    System.debug('Rol Number : ' + rlNumber);
 }
 for ( integer mr : markObtainInMaths.values()){
    System.debug(' Mark --> ' +mr);
 }

 Set<String> rNmUnic = new Set<String>();
 rNmUnic = markObtainInMaths.keySet();
 System.debug( ' list of rNmUnic : ' + rNmUnic);

 List<Integer> mList = new List<Integer>();
 mList = markObtainInMaths.values();
 System.debug(' list of the mList : ' + mList);

 for ( String rlNumber : markObtainInMaths.keySet()){
    Integer marks = markObtainInMaths.get(rlNumber);
    if( marks < 20){
    System.debug( rlNumber + ' is not qualifed for next class.');
    }
 }