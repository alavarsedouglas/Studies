let dica = document.getElementById('dica')
let lamp = document.getElementById('lamp')
dica.addEventListener('click', clicar)
dica.addEventListener('mouseenter', entrar)
dica.addEventListener('mouseout', sair)

function calcular() {

    let tn1 = Number(document.getElementById('n1').value)

    if (tn1 === 1) 
    {
        lamp.setAttribute("src", "./images/lamp_on.jpg")

        res.innerHTML = `Parabéns, você acertou! O resultado é ${tn1}!`
    } else 

    {
        lamp.setAttribute("src", "./images/lamp_off.jpg")

        res.innerHTML = `Tente novamente`
    }
}

function clicar() {
    dica.innerText = 'Está entre 0 e 9!'
    dica.style.background = 'grey'
}
function entrar() {
    dica.innerText = 'Vai usar a dica né?'
    dica.style.background = 'red'
}
function sair() {
    dica.innerText = 'Estou de olho! '
    dica.style.background = 'lightblue'
}