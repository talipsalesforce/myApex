import { getFieldValue, getRecord } from 'lightning/uiRecordApi';
import { LightningElement, wire } from 'lwc';

import FIRSTNAME_FIELD from '@salesforce/schema/Contact.FirstName';
import LASTNAME_FIELD from '@salesforce/schema/Contact.LastName';
import TITTLE_FIELD from '@salesforce/schema/Contact.Title';
import MPHONE_FIELD from '@salesforce/schema/Contact.MobilePhone';
import DEPARTMENT_FIELD from '@salesforce/schema/Contact.Department';
import EMAİL_FIELD from '@salesforce/schema/Contact.Email';


const FIELDS = [FIRSTNAME_FIELD, LASTNAME_FIELD, TITTLE_FIELD, MPHONE_FIELD, DEPARTMENT_FIELD, EMAİL_FIELD];

export default class GetRecordContact extends LightningElement {


    contact;
    recordId = "0038d00000KaShNAAV";

    @wire(getRecord, { recordId: '$recordId', fields: FIELDS })
    getInfoContact({ data, error }) {
        if (data) {
            console.log(data);
            this.contact = data;
        }
        if (error) {
            console.error(error);
        }
    }
    get fullName() {
        return getFieldValue(this.contact, FIRSTNAME_FIELD) + ' ' + getFieldValue(this.contact, LASTNAME_FIELD);
    }
    get title() {
        return getFieldValue(this.contact, TITTLE_FIELD);
    }
    get phone() {
        return getFieldValue(this.contact, MPHONE_FIELD);
    }
    get department() {
        return getFieldValue(this.contact, DEPARTMENT_FIELD);
    }
    get email() {
        return getFieldValue(this.contact, EMAİL_FIELD);
    }
}






