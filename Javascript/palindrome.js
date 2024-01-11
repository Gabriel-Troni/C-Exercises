// Create a code that checks if a word is a palindrome.

// SOLUTION 1
function isPalindrome(string) {
    if (!string) return `Non-existent string`
    
    if (string.split("").reverse().join("") == string) {
        return `The word ${string} is a palindrome`
    } else return `The word ${string} is not a palindrome`
}

// SOLUTION 2
function isPalindrome2(string) {
    if (!string) return `Non-existent string`
    
    for (let i = 0; i < string.length / 2; i++) {
        if (string[i] !== string[string.length - 1 - i]) {
            return false
        }
    }

    return true
}

console.log(isPalindrome2('arara'))