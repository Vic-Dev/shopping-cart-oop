class Cart

  MAX_ITEMS = 5

  attr_reader :items

  attr_accessor :store_name, :budget

  def initialize(store_name, budget)
    @store_name = store_name
    @items = []
    @budget = budget
  end

  def add_to_cart(item)
    if @items.length >= MAX_ITEMS
      false
    else
      @items << item
    end
  end

  def within_budget?(item)
    item.price <= self.budget
  end

end