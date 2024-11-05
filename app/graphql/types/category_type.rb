# frozen_string_literal: true

module Types
  class CategoryType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :status, Boolean
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :products, [ProductType], null: false do
      argument :limit, Integer, required: false, default_value: 3
      argument :offset, Integer, required: false, default_value: 0
    end
    field :products_count, Integer, null: true
    field :amount_average, Float, null: true

    def products(limit:, offset:)
      object.products.limit(limit).offset(offset)
    end

    def products_count
      object.products.size
    end

    def amount_average
      object.products.average(:amount)
    end
  end
end
