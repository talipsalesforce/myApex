import { LightningElement } from 'lwc';

export default class LwcHookparent extends LightningElement {
   
    constructor(){
        super();
        console.log("Parent constructor hook is called.");
    }

    connectedCallback(){
        console.log("Parent connectedCallback hook is called.");
    }

    renderedCallback(){
        console.log("Parent renderedCallback hook is called.");
    }
    errorCallback() {
        console.log("Parent errorCallback hook is called.");
    }

    switchChild = false;
    clickHandler(){
        this.switchChild = !this.switchChild;

    }
}