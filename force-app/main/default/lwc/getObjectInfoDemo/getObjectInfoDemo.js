import { LightningElement, wire } from 'lwc';

import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import { getObjectInfo } from 'lightning/uiObjectInfoApi';

export default class GetObjectInfoDemo extends LightningElement {

    accRtId;

    @wire(getObjectInfo,{objectApiName: ACCOUNT_OBJECT})
    accountGetInfo({data,error}){
        if (data) {
            console.log('gelen data ' + data);
            this.accRtId = data.defaultRecordTypeId;
        }
        if (error) {
            console.error(error);  
        }
    }

}