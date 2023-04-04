// Task: To create a Counter Component

//Parent: Show Counter Value and do increment/decrement
//Child : Create Add and Subtract buttons. Dispatch Custom event.

import { LightningElement } from 'lwc';

export default class C2pCustomEventChild extends LightningElement {

    handleSubtract(){
        //Create a Custom Event of name as 'subtraction'
        const subtractEvent = new CustomEvent('subtraction');
        this.dispatchEvent(subtractEvent);
    }

    handleAdd(){
        const addEvent = new CustomEvent('addition');
        this.dispatchEvent(addEvent);
    }
}