# frozen_string_literal: true

class Category < ApplicationRecord
  self.table_name = 'categories'
  has_many :products, dependent: :destroy
end
