import { LightningElement } from 'lwc';
import  searchRecentlyLeads  from '@salesforce/apex/LeadController11.searchRecentlyLeads';

const COLUMNS = [
    { label: 'First Name', fieldName: 'FirstName' },
    { label: 'Last Name', fieldName: 'LastName'},
    { label: 'Title', fieldName: 'Title'},
    { label: 'Company', fieldName: 'Company'}   
];

export default class GetLeadsRecently extends LightningElement {

    leadsList;
    error;
    columns = COLUMNS;
    
    handleClick(){

        if (this.leadsList || this.error) {
            this.leadsList = undefined;
            this.error = undefined;
            
        }else{
            searchRecentlyLeads()
                .then(result => {
                    this.leadsList = result;

                })
                .catch(error => {

                    this.error = error;
                })  
        }   
    }
}