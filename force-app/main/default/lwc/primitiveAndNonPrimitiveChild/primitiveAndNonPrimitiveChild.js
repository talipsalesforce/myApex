import { api, LightningElement } from 'lwc';

export default class PrimitiveAndNonPrimitiveChild extends LightningElement {
    @api country;
    @api cities;
}