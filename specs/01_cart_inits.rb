require('rspec')
require_relative('../cart')
require_relative('../item')

describe Cart do 
  describe 'it initializes with a list of items, store name, and budget' do
    before :each do
      @cart = Cart.new('Bestbuy', 1000)
    end

    it 'should start with a name' do
      expect(@cart.store_name).to eq('Bestbuy')
    end

    it 'items list should start as empty' do
      expect(@cart.items).to eq([])
    end

    it 'should have a budget' do
      expect(@cart.budget).to eq(1000)
    end
  end
end