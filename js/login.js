
function validarLogin() {
    let formulario = document.querySelector('.form')
    formulario.addEventListener("submit", e => {
        e.preventDefault()

        let email = document.getElementById('email').value
        let password = document.getElementById('password').value

        if (email.value == '') {
            mostrarMensaje('El campo de contacto no puede estar vacío', true)
            
        } else (!validarEmail(email)) {
            document.getElementById('email').style.borderColor = 'red'
        }

        if (password == '') {
            mostrarMensaje('La contraseña es obligatoria', true)
            document.getElementById('password').style.borderColor = 'red'
        }

    })
}
function validarEmail(email) {
    let regexEmail = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/

    return regexEmail.test(email)
}
function mostrarMensaje(mensaje, error = null) {
    let alerta = document.createElement('P')
    alerta.textContent = mensaje

    if (error) {
        alerta.classList.add('alerta', 'error')
    } else {
        alerta.classList.add('alerta', 'correcto')
    }

    form.appendChild(alerta)

    setTimeout(() => {
        alerta.remove()
    }, 5000)
}