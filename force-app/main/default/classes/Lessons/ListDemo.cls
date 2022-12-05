public  class ListDemo {
   public static  String candidateList(Integer i){

        List<String> listCandidates = new List<String>();
        listCandidates.add('Marc ');
        listCandidates.add('Elon ');
        listCandidates.add('Bill ');
        listCandidates.add('Marc ');
        System.debug('List of candidates ' + listCandidates);

        String returnValue = '';
        Integer sizeOfList = listCandidates.size();
        if (i>= 0 && i <  sizeOfList) {
        returnValue = listCandidates[i];
        
        }else {
        returnValue = 'No values found. come on. ';
        }
        return returnValue;
   }

   public static  void randomIntegerList(){
        List<Integer> listInteger = new List<Integer>();

        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        listInteger.add(15);
       Integer index3value =listInteger.get(3);
       Integer index3value2 =listInteger[3];

       System.debug(' index at value ---> ' + index3value);
    
       System.debug(' List of random integer ' + listInteger);
   }

   public static void allCats() {
    List<cat> listCats = new List<cat>();
    Cat sfCat2 = new Cat('leo', 'orange');
    Cat sfCat3 = new Cat('luna', 'brown');
    Cat batch11Cat = new Cat(' fluffykins','white' );
    listCats.add(sfCat2);
    listCats.add(sfCat3);
    listCats.add(batch11Cat);
    listCats.add(sfCat2);
    System.debug(' cat list '+ listCats);
 
   }

}
