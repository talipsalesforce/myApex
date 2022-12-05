public  class NewCar {

integer currentSpeed = 0;
string carType = '';
string carName = '';

public string startCar(string carType, string carName){
    string carProp = carType + ' '+ carName;
    System.debug(carProp);
    return carProp;
}
public Integer Accelerate(integer x){
    currentSpeed += x;
    System.debug(' speed '+ currentSpeed);
    return currentSpeed;
}
public Integer Brake(integer y){
    currentSpeed -= y;
    System.debug(' speed '+ currentSpeed);
    return currentSpeed;
}
public Integer stopCar(){
    currentSpeed = 0;
    System.debug(' speed ' + currentSpeed);
    return currentSpeed;
}
public string checkSpeed(){
    String mode = '';
    if(currentSpeed > 0  && currentSpeed <= 30 ){
         mode = 'city mode';
         System.debug(mode);

    }else if(currentSpeed >31 && currentSpeed <= 60){
        mode = 'economy mode';
        System.debug(mode);
        
    }else if( currentSpeed > 60){
        mode = 'sports mode';
        system.debug(mode);
    }
 return mode;
}
}