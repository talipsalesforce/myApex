//created a class
public  class Car {

  public String carColor = '';
  public string carName ='';

  private integer  maxSpeed = 150;
    
 public void switchOn(){ 
      
    system.debug('starting the car'); 
 }

 public void drive(){
    System.debug(' driving ' + carName + ' of color ' + carColor);
 }
 
 public void driveAtMaxSpeed(){
     String drivingDescription = 'Driving ' + carName + ' at '+ maxSpeed + 'km/hr';
     System.debug(drivingDescription);
 }

}

