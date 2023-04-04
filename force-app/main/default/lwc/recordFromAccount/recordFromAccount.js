import { LightningElement } from 'lwc';
import NAME_FIELDS from '@salesforce/schema/Account.Name';
import TYPE_FIELDS from '@salesforce/schema/Account.Type';
import INDUSTRY_FIELDS from '@salesforce/schema/Account.Industry';
import REVENUE_FIELDS from '@salesforce/schema/Account.AnnualRevenue';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';


export default class RecordFormAccount extends LightningElement {
    objectName = ACCOUNT_OBJECT;
    accFields = [NAME_FIELDS, TYPE_FIELDS, INDUSTRY_FIELDS, REVENUE_FIELDS];
    recordId = "0018d00000KUiFMAA1";
}