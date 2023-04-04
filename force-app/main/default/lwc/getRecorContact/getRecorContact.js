import { getFieldValue, getRecord } from 'lightning/uiRecordApi';
import { LightningElement, wire } from 'lwc';

import FIRSTNAME_FIELD from '@salesforce/schema/Contact.FirstName';
import LASTNAME_FIELD from '@salesforce/schema/Contact.LastName';
import ACCOUNT_FIELD from '@salesforce/schema/Contract.Account.Name';
import DEPARTMENT_FIELD from '@salesforce/schema/Contact.Department';
import LEADSOURCE_FIELD from '@salesforce/schema/Contact.LeadSource';
import EMAİL_FILED from '@salesforce/schema/Contact.Email';


export default class GetRecorContact extends LightningElement {
    recordId = '0038d00000Of1SnAAJ';

    firstName;
    lastName;
    accountName;
    department;
    leadSource;
    email;

    @wire(getRecord, { recordId: '$recordId', layoutTypes: ['Full'] })
    recordHandler({ data, error }) {
        if (data) {
            console.log('Contact Data =>', data);
            /* Approach-1 */

            /* this.firstName = data.fields.FirstName.value;
            this.lastName = data.fields.LastName.value;
            this.accountName = data.fields.Account.displayValue;
            this.department = data.fields.Department.value;
            this.leadSource = data.fields.LeadSource.displayValue;
            this.email = data.fields.Email.value; */

            this.firstName = getFieldValue(data, FIRSTNAME_FIELD);
            this.lastName = getFieldValue(data, LASTNAME_FIELD);
            this.accountName = getFieldValue(data, ACCOUNT_FIELD);
            this.department = getFieldValue(data, DEPARTMENT_FIELD);
            this.leadSource = getFieldValue(data, LEADSOURCE_FIELD);
            this.email = getFieldValue(data, EMAİL_FILED);

            
        }
        if (error) {
            console.error(error);
        }
    }
}