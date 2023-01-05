// non static yöntem object oluşturarak metoda ulaştık.
Trigger_Map tg = new Trigger_Map();
 id tgs = tg.insertSF_Project();
 System.debug(tgs);


/* // static yöntem. classıçağırdık . ile metodu çağırdık. kısa yolu.
System.debug(Trigger_Map.insertSF_Project()); */

Trigger_Map.updateSFProject(tgs, 'record değişti');

