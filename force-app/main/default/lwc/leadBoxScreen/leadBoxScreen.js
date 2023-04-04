
import searchName from '@salesforce/apex/LeadController.searchName';
import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';
import INDUSTRY_FIELD from '@salesforce/schema/Lead.Industry';
import LEAD_OBJECT from '@salesforce/schema/Lead';
import searchIndusrty from '@salesforce/apex/LeadController.searchIndusrty';

export default class LeadBoxScreen extends LightningElement {

    isName = false;
    isIndustry = false;
    industryOptions = [];
    leads;
    error;

    @wire(getObjectInfo,{objectApiName: LEAD_OBJECT})
    leadInfo;

    @wire(getPicklistValues, { fieldApiName: INDUSTRY_FIELD, recordTypeId:'$leadInfo.data.defaultRecordTypeId'})
    picklisthandler({data,error}){
        if (data) {
            this.industryOptions = data.values;   
        }
        if (error) {
            console.error(error); 
        }
    }

    handleClick(event){
        if (event.target.label === "Search by Name") {
            this.isName = !this.isName;
            this.leads = undefined;  
            this.isIndustry = false; 
        }
        if (event.target.label === "Search by Industry") {
            this.isIndustry = !this.isIndustry;
            this.leads = undefined;
            this.isName = false;   
        }  
    }

    changeHandler(event){
        const selectedName = event.target.value;
        const selectedIndustry = event.target.value;
        if (event.target.label === "Enter Search Word") {
            searchName({ word: selectedName })
                .then(result => {
                    if (result.length > 0 && selectedName.length > 1) {
                        this.leads = result;
                        //console.log('leads kayıtları:', this.leads);
                        this.error = undefined;
                    } else {
                        this.error = "İşleminiz henüz gerçekleşmedi..";
                        this.leads = undefined;
                    }
                }) 
            } else{
                searchIndusrty({industry:selectedIndustry})
                   .then(result =>{
                      if (result.length > 0) {
                          this.leads = result;
                          this.error = undefined;                       
                      }else{
                        this.error = 'Aradığınız record bulunamadı.';
                      }
                  
                   })
                    .catch(error => {
                        this.error = error.body.message;
                    })
            }  
    }
}