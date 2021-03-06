class RemoveFields {
  constructor() {
    this.iterateLinks()
  }

  iterateLinks() {
    document.addEventListener('click', e => {
      if (e.target && e.target.id == 'remove_fields') {
        this.handleClick(e.target, e)
      }
    })
  }

  handleClick(link, e) {
    if (!link || !e) return
    e.preventDefault()
    let fieldParent = link.closest('.nested-fields')
    let deleteField = fieldParent
      ? fieldParent.querySelector('input[type="hidden"]')
      : null
    if (deleteField) {
      deleteField.value = 1
      fieldParent.style.display = 'none'
      fieldParent.classList.remove('nested-fields')
    }
  }
}
window.addEventListener('turbolinks:load', () => new RemoveFields())