// Values / Person
// Meat - 400gr || + 6 hours - 650gr
// Beer - 1.2L  || + 6 hours - 2L
// Soda/Juice 1L || + 6 hours - 1.5L
// Children = 0.5

let adults = document.getElementById("adults")
let kids = document.getElementById("kids")
let duration = document.getElementById("duration")
let results = document.getElementById("results")

// function clear() {
// #
// }

function submit() {
    let meats = ((adults.value * meatPP(duration)) + (kids.value * meatPP(duration)/2 )).toFixed(2)
    let beer = Math.ceil(adults.value * beerPP(duration))
    let drink = Math.ceil((adults.value * drinkPP(duration)) + (kids.value * drinkPP(duration)/2))    

    results.innerHTML = `<p>Meat: ${meats}kg</p>`
    results.innerHTML += `<p>Beer: ${beer} cans</p>`
    results.innerHTML += `<p>Juice / Soda: ${drink}L</p>`

}

function meatPP(duration) {
    if (duration.value < 6) {
        return 0.4
    } else {
        return 0.65
    }
}

function beerPP(duration) {
    if (duration.value < 6) {
        return 1200 / 355
    } else {
        return 2000 / 355
    }
}

function drinkPP(duration) {
    if (duration.value < 6) {
        return 1
    } else {
        return 1.5
    }
}

