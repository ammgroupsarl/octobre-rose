// L’introduction peut être passée sans déclencher l’ambiance sonore.
document.getElementById('skipIntro')?.addEventListener('click',()=>{document.getElementById('opening').classList.add('hide');document.body.classList.remove('locked');document.querySelector('.hero .primary').focus();});
// Activité facultative : aucune réponse n’est enregistrée ni transmise.
document.querySelectorAll('[data-knowledge]').forEach(button=>button.addEventListener('click',()=>{const group=button.closest('fieldset');group.querySelector('[role="status"]').textContent=button.dataset.knowledge;}));
