require "administrate/base_dashboard"

class ProductDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    title: Field::String,
    description: Field::Text,
    price: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
    id
    title
    description
    price
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    id
    title
    description
    price
    created_at
    updated_at
  ].freeze

  FORM_ATTRIBUTES = %i[
    id
    title
    description
    price
  ].freeze

  COLLECTION_FILTERS = {}.freeze
end
