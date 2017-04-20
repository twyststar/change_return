require('rspec')
require('./lib/coin_methd')

describe("String#coin_methd") do
  it("will return 1 for the amount 25 cents") do
    expect(("25").coin_methd()).to(eq([1]))
  end
  it("will return 1, 1 for the amount 35 cents") do
    expect(("35").coin_methd()).to(eq([1 , 1]))
  end
  it("will return 1, 2 for the amount 45 cents") do
    expect(("45").coin_methd()).to(eq([1 , 2]))
  end
  it("will return 1, 1, 1, 1 for the amount 41 cents") do
    expect(("41").coin_methd()).to(eq([1 , 1, 1, 1]))
  end
end
