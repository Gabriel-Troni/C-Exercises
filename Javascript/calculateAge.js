// Create a program that calculates the age of a person or an animal after a certain number of years.

const person1 = {
    name: 'John',
    age: 5,
}

const person2 = {
    name: 'Maria',
    age: 55,
}

const animal = {
    name: 'Meredith',
    age: 2,
}

function calculateAge(years) {
    return `In ${years} years, ${this.name} will be ${
        this.age + years
    } years old.`
}

console.log(calculateAge.apply(animal, [10]))