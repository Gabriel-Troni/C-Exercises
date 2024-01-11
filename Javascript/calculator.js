// Create a calculator program that prompts the user to choose an operation
// and performs calculations based on the selected operation.

function calculator() {
    const operation = Number(prompt('Choose an operation:\n 1 - addition (+)\n 2 - subtraction (-)\n 3 - multiplication (*)\n 4 - division (/)\n 5 - integer division (%)\n 6 - exponentiation (**)'))

    if (!operation || operation > 6) {
        alert('Invalid operation')
        calculator()
    } else {

        let num1 = Number(prompt('Enter the first value'))
        let num2 = Number(prompt('Enter the second value'))
        let result

        if (!num1 || !num2) {
            alert('Invalid parameters')
            calculator()
        } else {

            function addition() {
                result = num1 + num2
                alert(`${num1} + ${num2} = ${result}`)
                newOperation()
            }

            function subtraction() {
                result = num1 - num2
                alert(`${num1} - ${num2} = ${result}`)
                newOperation()
            }

            function multiplication() {
                result = num1 * num2
                alert(`${num1} x ${num2} = ${result}`)
                newOperation()
            }

            function division() {
                result = num1 / num2
                alert(`${num1} ÷ ${num2} = ${result}`)
                newOperation()
            }

            function integerDivision() {
                result = num1 % num2
                alert(`The division of ${num1} by ${num2} has a remainder of ${result}`)
                newOperation()
            }

            function exponentiation() {
                result = num1 ** num2
                alert(`${num1} ^ ${num2} = ${result}`)
                newOperation()
            }

            function newOperation() {
                let choice = prompt('Do you want to perform a new operation?\n 1 - Yes\n 2 - No')

                if (choice == 1) {
                    calculator()
                } else if (choice == 2) {
                    alert('Come back anytime!')
                } else {
                    alert('Please enter a valid option')
                    newOperation()
                }
            }
        }

        switch (operation) {
            case 1:
                addition()
                break
            case 2:
                subtraction()
                break
            case 3:
                multiplication()
                break
            case 4:
                division()
                break
            case 5:
                integerDivision()
                break
            case 6:
                exponentiation()
                break
        }
    }
}

calculator()