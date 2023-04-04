import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';

import OPPORTUNITY_OBJECT from '@salesforce/schema/Opportunity';
import STAGENAME_FIELD from '@salesforce/schema/Opportunity.StageName';
import getOppAmount from '@salesforce/apex/OpportunityCtrl.getOppAmount';

export default class GetOppTotalAmount extends LightningElement {

    stageNameOptions = [];
    totalAmount;
    error;
    oppRtTypId;
    selectedStage;

    @wire (getObjectInfo, {objectApiName: OPPORTUNITY_OBJECT})
    objectInfoHandler({data,error}){
        if (data) {
            console.log('gelen opp object', data);
            this.oppRtTypId = data.defaultRecordTypeId;
        }
        if (error) {
            console.error(error);  
        }
    }

    @wire(getPicklistValues, {fieldApiName: STAGENAME_FIELD, recordTypeId:'$oppRtTypId'})
    picklistInfoHandler({data,error}){
        if (data) {
            console.log('opp Picklist',data);
            this.stageNameOptions = data.values;   
        }
        if (error) {
            console.error(error);   
        }
    }


    handleChange(event){
        this.selectedStage =event.target.value;
        getOppAmount({stage:this.selectedStage})
          .then(result =>{
            if (result > 0 ) {
                this.totalAmount = result;
                this.error = undefined; 
            }else{
                this.error = 'There are no matching opportunities for the selected stage. Please select another'; 
                this.totalAmount = undefined;
            }
            
          })
          .catch(error =>{
            this.error = error.body.message;
            this.totalAmount = undefined;
          })
    }
}