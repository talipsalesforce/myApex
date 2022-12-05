public  class Dog {
   public String name;
   public String color;
   public integer age;
   public static integer count = 0;

   public Dog(){
    count++;
    age= 1;
    checkAge();
    showCount();
   }
public void  checkAge(){
    if (age>0 && age<=1){
        System.debug(' Puppy Dog');
    } else if (age>1 && age<=3){
        System.debug(' Young Dog');
    }else if(age>3 && age<=5){
        System.debug(' Adult Dog'); 
    }else {
        System.debug(' Old Dog'); 
    }
}
   public Dog(string n, string clr, integer a){
     name = n;
     color = clr;
     age = a;
     count++;
     checkAge();
     showCount();
   }
   public  static void showCount(){
    System.debug('count = ' + count);
   }
}
