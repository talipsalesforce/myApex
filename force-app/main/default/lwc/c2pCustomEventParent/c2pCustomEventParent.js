import { LightningElement } from 'lwc';

export default class C2pCustomEventParent extends LightningElement {

    counter = 0;

    handleSubtraction() {
        this.counter = this.counter - 3;
    }


    handleAddition() {
        this.counter = this.counter + 2;
    }
}