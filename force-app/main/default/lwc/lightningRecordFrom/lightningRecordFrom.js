import { LightningElement } from 'lwc';
import CASE_OBJECT from '@salesforce/schema/Case';
import ACCOUNT_NAME_FIELDS from '@salesforce/schema/Case.AccountId';
import CONTACT_NAME_FIELDS from '@salesforce/schema/Case.ContactId';
import SUBJECT_FIELDS from '@salesforce/schema/Case.Subject';
import  PRIORITY_FIELDS from '@salesforce/schema/Case.Priority';
import DESCRIPTION_FIELDS from '@salesforce/schema/Case.Description';
import ORIGIN_FIELDS from '@salesforce/schema/Case.Origin';


export default class LightningRecordForm extends LightningElement {
  objectName =CASE_OBJECT;
  recordId="5008d00000Dpw0IAAR"
  caseFields=[ACCOUNT_NAME_FIELDS,CONTACT_NAME_FIELDS,SUBJECT_FIELDS,PRIORITY_FIELDS,DESCRIPTION_FIELDS,ORIGIN_FIELDS ];

}