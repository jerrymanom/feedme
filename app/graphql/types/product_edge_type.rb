# frozen_string_literal: true

module Types
  class ProductEdgeType < Types::BaseObject
    field :node, ProductType, null: false
    field :cursor, String, null: false
  end

  class ProductConnectionType < Types::BaseConnection
    edge_type(ProductEdgeType)
  end
end
