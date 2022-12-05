Cat sfCat = new Cat();
sfCat.name = 'Leo';
sfCat.color = 'blue';
System.debug('sfCat----> ' +sfCat);

Cat batch11Cat = new Cat('fluffykins' , 'blue');
System.debug('batch11 cat is ' + batch11Cat);

Cat wrongEx = new Cat(4,8);