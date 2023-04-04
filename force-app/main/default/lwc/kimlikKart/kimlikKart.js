import { LightningElement } from 'lwc';

export default class KimlikKart extends LightningElement {
    firstName;
    lastName;
    role;
    //if ile yapılırsa tek methotta hepsi ifade edilebilir.
    handleChange(event){
        if (event.target.label=== "first name") {
            this.firstName = event.target.value;  
        }else if (event.target.label=== "last name") {
            this.lastName = event.target.value; 
        }else{
            this.role = event.target.value;
        }
    }
    //if kullanmadan tek tak yapılan şekli:
    //   handleChange(event){
    //     this.firstName = event.target.value;
    //   }
    //   handleChange2(event){
    //     this.lastName = event.target.value;
    //   }
    //   handleChange3(event){
    //     this.role = event.target.value;
    //   }
      options =[
        {label:'Salesforce Admin', value: 'Salesforce Admin'},
        {label:'Salesforce Developer', value: 'Salesforce Developer'},
        {label:'Salesforce Architect', value: 'Salesforce Architect'}
      ];
}