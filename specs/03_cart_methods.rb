require('rspec')
require_relative('../cart')
require_relative('../item')

describe Cart do 

  describe '#add_to_cart' do
    before :each do
      @cart = Cart.new('Future Shop', 1000)
      @item = Item.new('iPhone 6s', 9000)
    end

    it 'should add new item to list of items' do
      @cart.add_to_cart(@item)
      expect(@cart.items[0]).to eq(@item)
    end

    it 'should able to add up to 5 items' do
      (1..5).each do |n|
        @cart.add_to_cart(@item)
      end
      expect(@cart.items.length).to eq(5)
    end

    it 'should not be able to add more than 5 items, returns false' do
      (1..5).each do |n|
        @cart.add_to_cart(@item)
      end
      expect(@cart.add_to_cart(@item)).to eq(false)
    end

    it 'should still have 5 items in cart if try to add more than 5 items' do
      (1..6).each do |n|
        @cart.add_to_cart(@item)
      end
      expect(@cart.items.length).to eq(5)
    end
  end

  describe '#within_budget?' do
    before :each do
      @cart = Cart.new('Bestbuy', 2000)
      @item = Item.new('Super Expensive Item', 19000)
    end

    it 'should return true if the price of an item is within the budget' do
      allow(@cart).to receive(:budget) { 20000 }
      expect(@cart.within_budget?(@item)).to be true
    end

    it 'should return false if the price of an item is outside of the budget' do
      allow(@cart).to receive(:budget) { 1000 }
      expect(@cart.within_budget?(@item)).to be false
    end
  end

end





