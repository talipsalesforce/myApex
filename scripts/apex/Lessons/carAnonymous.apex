    System.debug( 'tesla created');
car tesla = new car();
    tesla.carName = 'model S' ;
    tesla.carColor = 'black';
    tesla.switchOn();
    System.debug( ' tesla car color -> '+ tesla.carColor);
    System.debug(' tesla -> ' + tesla);
    tesla.drive();
    tesla.driveAtMaxSpeed();
    System.debug( 'tesla done');

    System.debug( 'bmw created');
car bmw = new car();
    bmw.carName = 'xyz';
    bmw.carColor = 'white';
    bmw.switchOn();
    System.debug(' bmw car color ->' +bmw.carColor);
    System.debug( ' bmw -> ' + bmw);
    bmw.drive();
    bmw.driveAtMaxSpeed();
    System.debug( 'bmw done');
 
car toyota = new car();
    toyota.switchOn();
    toyota.drive();
