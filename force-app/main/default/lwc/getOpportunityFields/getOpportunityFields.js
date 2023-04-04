import { LightningElement, wire } from 'lwc';

import OPPORTUNITY_OBJECT from '@salesforce/schema/Opportunity';
import { getObjectInfo, getPicklistValuesByRecordType } from 'lightning/uiObjectInfoApi';

export default class GetOpportunityFields extends LightningElement {
    oppName;
    selectStageName;
    selectType;
    stageOptions =[];
    typeOptions= [];
    oppRtId;

    @wire(getObjectInfo, { objectApiName: OPPORTUNITY_OBJECT })
    opportunityInfo({data,error}){
        if (data) {
            console.log(data);
           this.oppRtId= data.defaultRecordTypeId; 
        }
        if (error) {
            console.error(error);  
        }
    }

    @wire(getPicklistValuesByRecordType, {objectApiName: OPPORTUNITY_OBJECT, recordTypeId:'$oppRtId'})
    opportunityPicklistHandler({data, error}){
        if (data) {
            console.log(data);
            this.stageOptions = data.picklistFieldValues.StageName.values;
            this.typeOptions = data.picklistFieldValues.Type.values;   
        }
        if (error) {
            console.error(error);
        }
    }

    handleChange(event){
        if (event.target.label === "Opportunity Name") {
            this.oppName = event.target.value;
            
        } else if (event.target.label === "stage Name") {
            this.selectStageName = event.target.value;
            
        }else{
            this.selectType = event.target.value;
        }
    }
}