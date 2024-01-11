// Function that tests for errors based on specified conditions.

function testError(array, number) {
    try {
        if (!array && !number) throw new ReferenceError('Insert parameters')

        if (typeof array !== "object") throw new TypeError('Insert an object')

        if (typeof number !== "number") throw new TypeError('Insert a number')

        if (array.length !== number) throw new RangeError('Incompatible values')

        return array
    }
    catch (e) {
        if (e instanceof ReferenceError) {
            console.log('This is a ReferenceError')
            console.log(e.message)
        } else if (e instanceof TypeError) {
            console.log('This is a TypeError')
            console.log(e.message)
        } else if (e instanceof RangeError) {
            console.log('This is a RangeError')
            console.log(e.message)
        } else {
            console.log("An unexpected error occurred" + e)
        }
    }
}

console.log(testError())