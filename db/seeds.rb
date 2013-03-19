User.delete_all
Bank.delete_all

u1 = User.create(username: 'Bob', email: 'bob@gmail.com', password: 'a', password_confirmation: 'a')

b1 = Bank.create(name: 'Bank of America', balance: '500')
b2 = Bank.create(name: 'Wells Fargo', balance: '5000')
b3 = Bank.create(name: 'Citibank', balance: '1000')
b4 = Bank.create(name: 'PNC', balance: '800')
b5 = Bank.create(name: 'Chase', balance: '500')

u1.banks = [b1, b2, b3, b4, b5]