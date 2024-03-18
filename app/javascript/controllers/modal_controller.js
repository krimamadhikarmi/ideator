import { Controller } from "@hotwired/stimulus"
import { Modal } from 'flowbite';
// Connects to data-controller="modal"
export default class extends Controller {
  static targets=["modal"];
  modalToggle(){
    this.getModel();
    this.modal.show();
  }
  getModel() {
    this.modal=new Modal(this.modalTarget) 
  }
  
}
