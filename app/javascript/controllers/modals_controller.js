import { Controller } from "@hotwired/stimulus";
import { Modal } from "flowbite";

// Connects to data-controller="modals"
export default class extends Controller {
  static targets = ["modal"];
  modalToggle() {
    this.initializeModal();
    this.modal.show();
  }
  initializeModal() {
    this.modal = new Modal(this.modalTarget);
  }
  hide(){
    this.modal.hide();
  }
}