# frozen_string_literal: true

module Types
  class ProductType < Types::BaseObject
    field :id, Integer, null: false
    field :name, String
    field :amount, Integer
    field :category_id, Integer, null: false
    field :status, Boolean
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
