// Function that converts even numbers in an array to 0.
function convertEvenToZero(array) {
    if (!array) return `-1`
    if (!array.length) return `-1`

    for (let i = 0; i < array.length; i++) {
        if (array[i] === 0) {
            console.log("You are already zero!")
        } else if (array[i] % 2 === 0) {
            console.log(`Replacing ${array[i]} with 0...`)
            array[i] = 0
        }
    }

    return array
}

let arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
console.log(convertEvenToZero(arr))