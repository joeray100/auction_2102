class Auction
  attr_reader :items

  def initialize
    @items = []
  end

  def add_item(item)
    @items << item
  end

  def item_names
    names_array = []
    @items.find_all do |item|
      names_array << item.name
    end
    names_array
  end

  def unpopular_items
    unwanted_items = []
    @items.find_all do |item|
      unwanted_items << item.bids
    end
  unwanted_items
  end

end
