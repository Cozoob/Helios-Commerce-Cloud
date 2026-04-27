import { LightningElement } from 'lwc';

export default class Test extends LightningElement {
    numVar = 1;

    handleButtonClick() {
        console.error(this.numVar);
    }
}