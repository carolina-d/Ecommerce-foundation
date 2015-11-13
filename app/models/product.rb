class Product < ActiveRecord::Base

  belongs_to :brand

  has_and_belongs_to_many :categories

  validates :name, presence: true, length: {minimum: 10}
  validates :description, presence: true
  validates :price, presence: true, numericality: true
  validates :code, presence: true, uniqueness: true	
 
 has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
 validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
