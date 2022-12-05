public class Cat {
    public String name;
    public String color;

   public Cat() {
   System.debug('  Cat constructor  called automatically');
    }

    public Cat(string n, String clr) {
        name = n;
        color = clr;
        sleeping();
    }
    public void sleeping(){
        System.debug(name + ' is kinda sleeping.');
    }

}
