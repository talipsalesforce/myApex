import { LightningElement } from 'lwc';

export default class HelloWorld extends LightningElement {
    fullName= "Talip";
    age = 25
    location = {
        city: "Istanbul",
        country : "Turkey"
    };
    sum(a,b){
        return a+b;
    }
    
}