require 'rails_helper'

describe Transaction do
  it 'returns a validation error when first name is missing' do
    transaction = Transaction.new(last_name: "Snow", amount: 1000, email: "example@example.com")
    expect(transaction).to be_invalid
  end

  it 'returns a validation error when last name is missing' do
    transaction = Transaction.new(first_name: "John", amount: 1000, email: "example@example.com")
    expect(transaction).to be_invalid
  end

  it 'returns a validation error when email is missing' do
    transaction = Transaction.new(first_name: "John", last_name: "Snow", amount: 1000)
    expect(transaction).to be_invalid
  end

  it 'returns a validation error when first name is missing' do
    transaction = Transaction.new(first_name: "John", last_name: "Snow", email: "example@example.com")
    expect(transaction).to be_invalid
  end

  it 'returns a validation error when email has improper format' do
    transaction = Transaction.new(first_name: "John", last_name: "Snow", amount: 1000, email: "123")
    expect(transaction).to be_invalid
  end

  it 'returns a validation error when amount is 0' do
    transaction = Transaction.new(first_name: "John", last_name: "Snow", amount: 0, email: "example@example.com")
    expect(transaction).to be_invalid
  end

  it 'creates a new transaction' do
    transaction = Transaction.new(first_name: "John", last_name: "Snow", amount: 1000, email: "example@example.com")
    expect(transaction).to be_valid
    expect { transaction.save }.to change{Transaction.count}.by(1)
  end
end
