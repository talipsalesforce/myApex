public  class StudentMarksheet {
    public void ShowMarksheetUsingDataType(){
        string studentFirstName = 'Rose';
        string studentLastName = 'Gülendam';
        integer math = 99;
        string english = 'A+';
        decimal chemistry = 97.7;
         system.debug('Student first Name : ' + studentFirstName );
         system.debug('Student Last Name : ' + studentLastName );
         system.debug('Math grade: ' + math);
         system.debug('English grade: ' + english);
         system.debug('Chemistry grade: ' + chemistry);
    
    }
    public void showMarksheetUsingObject(){
        object fullName = 'Karanfil Destegider';
        object math = 100;
        object english = ' BB';
        object chemistry = 89.5;

        system.debug (fullName + ' grade are: Math - ' + math + ' /'+
          ' English -' + english + ' /' +  ' Chemistry - '+ chemistry  );
    }
}

