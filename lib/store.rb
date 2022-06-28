class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0}
  validate :require_apparel, on: :create

  def require_apparel
    if !(mens_apparel || womens_apparel)
      errors.add(:apparel, "men's or women's apparel must be true")
    end
  end
  
end


