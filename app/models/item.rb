class Item < ActiveRecord::Base

  def self.search(query)
    where("Manufacturer like ?", "%#{query}%") 
  end
end