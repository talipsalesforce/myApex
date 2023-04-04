import { deleteRecord } from 'lightning/uiRecordApi';
import { LightningElement } from 'lwc';

import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class DeleteRecordCase extends LightningElement {
    recordId;

    changeHandler(event) {
        this.recordId = event.target.value;
    }

    deleteHandler() {
        const recordId = this.recordId;

        deleteRecord(recordId)
            .then(result => {
                //success toast message
                this.displayToast("Success", "Record has been deleted successfully", "success");
            })
            .catch(error => {
                //error toast message
                this.displayToast("Error", error.body.message, "error");
            })
    }

    displayToast(title, message, variant) {
        const toast = new ShowToastEvent({ title, message, variant });
        this.dispatchEvent(toast);
    }
}