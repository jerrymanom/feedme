# frozen_string_literal: true

module Types
  # QueryType define los puntos de entrada para las consultas en el esquema de GraphQL.
  class QueryType < Types::BaseObject
    description 'El tipo de raíz para todas las consultas en este esquema'

    field :node, Types::NodeType, null: true, description: 'Fetches an object given its ID.' do
      argument :id, ID, required: true, description: 'ID of the object.'
    end

    field :nodes, [Types::NodeType, { null: true }], null: true,
                                                     description: 'Fetches a list of objects given a list of IDs.' do
      argument :ids, [ID], required: true, description: 'IDs of the objects.'
    end

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :categories, [CategoryType], null: false, description: 'Returns a list of categories'

    field :category, CategoryType, null: false, description: 'Return data by one category' do
      argument :id, ID, required: true, description: 'ID único de la categoría a retornar'
    end

    field :products, [ProductType], null: false, description: 'Returns a list of products'

    field :product, ProductType, null: false, description: 'Return data by a product' do
      argument :id, ID, required: true, description: 'Id from Product table'
    end

    field :products_by_category, [ProductType], null: false, description: 'Return a list of products by a category' do
      argument :category_id, ID, required: true, description: 'Category Id from Category table'
      argument :first, Integer, required: false, default_value: 10, description: 'Value to set the initial range'
      argument :skip, Integer, required: false, default_value: 0, description: 'Value to seet the final range'
    end

    def node(id:)
      context.schema.object_from_id(id, context)
    end

    def nodes(ids:)
      ids.map { |id| context.schema.object_from_id(id, context) }
    end

    def categories
      Category.all
    end

    def category(id:)
      Category.find(id)
    end

    def products
      Product.all
    end

    def product(id:)
      Product.find(id)
    end

    # def products_by_category(category_id:, first:, skip:)
    #   total_products = Product.where(category_id: category_id)
    #   paginated_products = total_products.offset(skip).limit(first)
    #   puts "Total products: #{total_products.average(:amount)}, Count: #{total_products.count}"
    #   puts "paginated: #{paginated_products.class}"
    #   {
    #     products_average: total_products.average(:amount),
    #     products_count: total_products.count,
    #     paginated_products: paginated_products
    #   }
    # end
  end
end
