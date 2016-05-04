require('rspec')
require_relative('../cart')
require_relative('../item')

describe Item do 
  describe 'it initializes with a name and price' do
    before :each do
      @item = Item.new('Macbook Pro 13"', 2000)
    end

    it 'should start with a name' do
      expect(@item.name).to eq('Macbook Pro 13"')
    end

    it 'should start with a price' do
      expect(@item.price).to eq(2000)
    end
  end
end