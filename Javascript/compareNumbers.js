/*
Create a function that takes two numbers as parameters.
Check if the numbers are equal.
Check if the sum of the numbers is greater than 10 or less than 20.
Return a string saying "The numbers num1 and num2 are/are not equal. Their sum is sum,
which is greater/less than 10 and greater/less than 20."
Example:

Input: 10, 2
Output: The numbers 10 and 2 are not equal. Their sum is 12, which is greater than 10 and less than 20.
*/

function verifier(num1, num2) {
    if (!num1 || !num2) return `Define two numbers`

    const firstPhrase = createFirstPhrase(num1, num2)
    const secondPhrase = createSecondPhrase(num1, num2)

    return `${firstPhrase} ${secondPhrase}`
}

function createFirstPhrase(num1, num2) {
    let areEqual = ""

    if (num1 !== num2) {
        areEqual = "not"
    }

    return `The numbers ${num1} and ${num2} are ${areEqual} equal.`
}

function createSecondPhrase(num1, num2) {
    const sum = num1 + num2

    let result10 = "less"
    let result20 = "less"

    const compare10 = sum > 10
    const compare20 = sum > 20

    if (compare10) {
        result10 = "greater"
    }

    if (compare20) {
        result20 = "greater"
    }

    return `The result of the sum is ${sum}. This number is ${result10} than 10 and ${result20} than 20.`
}

console.log(verifier(10, 2))