import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';

import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';

export default class GetPicklistValuesIndustry extends LightningElement {
    defaultRtId;
    industryOptions = [];
    isSelected = false;
    selectedIndustry;

    @wire(getObjectInfo, { objectApiName: ACCOUNT_OBJECT })
    objectInfoHandler({ data, error }) {
        if (data) {
            this.defaultRtId = data.defaultRecordTypeId;
        }
        if (error) {
            console.log(error);
        }
    }

    @wire(getPicklistValues, { fieldApiName: INDUSTRY_FIELD, recordTypeId: '$defaultRtId' })
    picklistHandler({ data, error }) {
        if (data) {
            console.log('Picklist Data =>>', data);
            //uzun yol 
            // let options = [];
            // for (const element of data.values) {
            //     let singleValueObject = {
            //         label: element.label,
            //         value: element.value
            //     }
            //     options.push(singleValueObject);
            // }
            //this.industryOptions = options;

            this.industryOptions = data.values;
        }
        if (error) {
            console.log(error);
        }
    }

    changeHandler(event){
        this.selectedIndustry = event.target.value;
        this.isSelected = true;
    }
}