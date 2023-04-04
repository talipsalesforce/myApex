import { getObjectInfo } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';

import CONTACT_OBJECT from '@salesforce/schema/Contact';

export default class GetObjectInfoContact extends LightningElement {
    contactDefaultRtId;
    contactEmployeeRtId;

    @wire(getObjectInfo, { objectApiName: CONTACT_OBJECT })
    infoHandler({ data, error }) {

        if (data) {
            console.log('DATA ==> ', data);
            this.contactDefaultRtId = data.defaultRecordTypeId;

            const rtids = data.recordTypeInfos;

            this.contactEmployeeRtId = Object.keys(rtids).find(rtid => rtids[rtid].name === "Employee Contact");
        }
    }
}