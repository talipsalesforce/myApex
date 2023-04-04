import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

import CASE_OBJECT from '@salesforce/schema/Case';
import ACCOPUNTID_FIELD from '@salesforce/schema/Case.AccountId';
import CONTACT_FIELD from '@salesforce/schema/Case.ContactId';
import SUBJECT_FIELD from '@salesforce/schema/Case.Subject';
import PRIORTY_FIELD from '@salesforce/schema/Case.Priority';
import STATUS_FIELD from '@salesforce/schema/Case.Status';
import DESCRIPTION_FIELD from '@salesforce/schema/Case.Description';
import ORIGIN_FIELD from '@salesforce/schema/Case.Origin';




export default class CaseEditForm extends LightningElement {
    objectApiName = CASE_OBJECT;
    recordId = "5008d00000Dpw04AAB";

    fields = {
        accountName: ACCOPUNTID_FIELD,
        contacName: CONTACT_FIELD,
        subject: SUBJECT_FIELD,
        priority: PRIORTY_FIELD,
        status: STATUS_FIELD,
        description: DESCRIPTION_FIELD,
        origin: ORIGIN_FIELD,
    };

    successHandler() {
        const successToast = new ShowToastEvent({
            title: 'Success',
            message: 'Case has been saved successfuly',
            variant: 'success'
        });
        this.dispatchEvent(successToast);
    }
    
    errorHandler() {
        const errorToast = new ShowToastEvent({
            title: 'Error',
            message: 'An error accoured while saving the record',
            variant: 'error'
        });
        this.dispatchEvent(errorToast);
    }


}










