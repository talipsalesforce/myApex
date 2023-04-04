import { LightningElement } from 'lwc';

export default class TwoWayBinding extends LightningElement {
    fullname = "Talip";
    x = 5;
    role;
    roleOptions = [
        { label: 'Salesforce Admin', value: 'Salesforce Admin' },
        { label: 'Salesforce Developer', value: 'Salesforce Developer' },
        { label: 'Salesforce Arcitect', value: 'Salesforce Arcitect' },
    ];

    changeHandler(event){
        if(event.target.label === "Enter your name"){
            this.fullname = event.target.value;
        }else {
            this.role = event.target.value;
        }
    }

    // changeHandlerCombobox(event){
    //     this.role = event.target.value;
    // }
}