// Create a code that changes the color of the page when the user clicks a button.

function changeMode () {
    changeClasses ()
    changeText ()
}

function changeClasses () {
    body.classList.toggle (darkModeClass)
    h1.classList.toggle (darkModeClass)
    button.classList.toggle (darkModeClass)
    footer.classList.toggle (darkModeClass)
}

function changeText () {
    const lightMode = "light-mode"
    const darkMode = "dark-mode"

    if (body.classList.contains(darkModeClass)) {
        h1.innerHTML = darkMode + ' ON'
        button.innerHTML = lightMode
        return
    }

    h1.innerHTML = lightMode + ' ON'
    button.innerHTML = darkMode
}

const darkModeClass = "dark-mode"
const body = document.getElementsByTagName ('body')[0]
const h1 = document.getElementById ('page-title')
const button = document.getElementById ('mode-selector')
const footer = document.getElementsByTagName ('footer')[0]

button.addEventListener("click", changeMode)