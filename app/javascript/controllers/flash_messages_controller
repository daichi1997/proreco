import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.element.style.display = 'block'
    setTimeout(() => {
      this.element.style.opacity = '1'
    }, 100)
    
    setTimeout(() => {
      this.close()
    }, 5000)
  }

  close() {
    this.element.style.opacity = '0'
    setTimeout(() => {
      this.element.style.display = 'none'
    }, 500)
  }
}