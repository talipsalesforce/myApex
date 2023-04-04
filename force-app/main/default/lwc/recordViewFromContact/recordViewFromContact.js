import { api, LightningElement } from 'lwc';

// import CONTACT_OBJECT from '@salesforce/schema/Contact';

import FIRSTNAME_FIELD from '@salesforce/schema/Contact.FirstName';
import LASTNAME_FIELD from '@salesforce/schema/Contact.LastName';
import LEADSOURCE_FIELD from '@salesforce/schema/Contact.LeadSource';
import TITLE_FIELD from '@salesforce/schema/Contact.Title';

export default class RecordViewFormContact extends LightningElement {

    // objectName=CONTACT_OBJECT;
    @api objectApiName;
    @api recordId;

    fields = {
        firstName: FIRSTNAME_FIELD,
        lastName: LASTNAME_FIELD,
        leadSource: LEADSOURCE_FIELD,
        title: TITLE_FIELD
    }

}