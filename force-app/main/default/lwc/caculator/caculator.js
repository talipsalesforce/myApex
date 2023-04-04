import { LightningElement } from 'lwc';

export default class Caculator extends LightningElement {

    num1;
    num2;
    totalNumber;
    changeHandler(event){

        if (event.target.name=="input1") {
           this.num1= event.target.value;
            
        }else{
            this.num2=event.target.value;
        }
        if (this.num1==undefined) {
            this.num1=0;
        }
        if (this.num2==undefined) {
            this.num2=0;
        }
        this.totalNumber=Number(this.num1)+Number(this.num2);

    }
}