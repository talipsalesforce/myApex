import { LightningElement } from 'lwc';

export default class ConditionalRendering extends LightningElement {
    showContent = false;
    labelButton = "Show Content";
    clickHandler(){
        if (this.showContent) {
            this.showContent = false;
            this.labelButton ="Show Content";
        }else{
            this.showContent = true;
            this.labelButton ="Hide Content";

        }
    }

}