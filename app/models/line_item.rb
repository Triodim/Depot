class LineItem < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :product, optional: true
  belongs_to :cart

  def total_price
    product.price * quantity
  end

  def decrement
    if quantity > 1
      self.quantity -= 1
    else
      self.destroy
    end
      self
  end
end
