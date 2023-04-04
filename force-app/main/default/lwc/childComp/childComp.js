import { LightningElement } from 'lwc';

export default class ChildComp extends LightningElement {
    clickHandler(){
        console.log("Before creating the event!");

        const showEvent  = new CustomEvent("show", {detail:"Greeting from child component" , bubbles: true, composed:true});
        this.dispatchEvent(showEvent);

        console.log("Created and dispatched the event!");

    }
}