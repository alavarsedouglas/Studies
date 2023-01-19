document.addEventListener('DOMContentLoaded', () => {

    let squares = document.querySelectorAll(".square")

    squares.forEach((square) => {
        square.addEventListener('click', handleClick)
    })
})

function handleClick(event) {

    let square = event.target
    let position = square.id

    if (handleMove(position)) {
        setTimeout(() => {
            if (playerTime == 0) {
                alert("O vencedor foi o cocô!")
            } else {
                alert("O vencedor foi o xixi!")
            } 
        }, 100)
        
    }
    updateSquare(position)
}

function updateSquare(position) {
    let square = document.getElementById(position.toString())
    let symbol = board[position]
    square.innerHTML = `<div class = "${symbol}"</div>`
}

function updateSquares() {
    let squares = document.querySelectorAll(".square")

    squares.forEach((square) => {
        let position = square.id
        let symbol = board[position]
        
        if (symbols != '') {
            square.innerHTML = `<div class='${symbol}'></div>`
        }
    })
}

