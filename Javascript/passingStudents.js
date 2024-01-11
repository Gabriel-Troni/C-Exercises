// Make a program that receives a list of students and returns a list of students who passed the course.

const students = [
    {
        name: 'João',
        grade: 5,
        class: '1B',
    },
    {
        name: 'Sofia',
        grade: 9,
        class: '1B',
    },
    {
        name: 'Paulo',
        grade: 6,
        class: '2C',
    },
];

function getPassingStudents(students, average) {
    let passingStudents = []

    for (let i = 0; i < students.length; i++) {
        let { grade, name } = students[i]

        if (grade >= average) {
            passingStudents.push(name)
        }
    }

    return passingStudents
}

console.log(getPassingStudents(students, 6))