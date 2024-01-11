/*
Create a banking system with different account types (Bank Account, Checking Account, Savings Account, and University Account).
Each account has agency, number, and type properties. The Bank Account includes a private balance property.
Implement methods for withdrawing and depositing money in the Bank Account.
*/

class BankAccount {
    constructor(agency, number, type) {
        this.agency = agency
        this.number = number
        this.type = type
        this._balance = 0
    }

    get balance() {
        return this._balance
    }

    set balance(value) {
        this._balance = value
    }

    withdraw(value) {
        if (value > this._balance) {
            return `Insufficient balance`
        }
        this._balance -= value
        return this._balance
    }

    deposit(value) {
        this._balance += value
        return this._balance
    }
}

class CheckingAccount extends BankAccount {
    constructor(agency, number, creditCard) {
        super(agency, number, 'checking')
        this._creditCard = creditCard
    }

    get creditCard() {
        return this._creditCard
    }

    set creditCard(value) {
        this._creditCard = value
    }
}

class SavingsAccount extends BankAccount {
    constructor(agency, number) {
        super(agency, number, 'savings')
    }
}

class UniversityAccount extends BankAccount {
    constructor(agency, number) {
        super(agency, number, 'university')
    }

    withdraw(value) {
        if (value > 500) {
            return `Withdrawal request exceeds the maximum limit`
        }
        this._balance -= value
        return this._balance
    }
}