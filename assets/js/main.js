const hamburger = document.querySelector('.hamburger')

function menuToggle() {
    hamburger.classList.toggle('open')
}

hamburger.addEventListener('click', menuToggle)