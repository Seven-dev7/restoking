require "administrate/base_dashboard"

class UserProfileDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    first_name: Field::String,
    last_name: Field::String,
    date_of_birth: Field::DateTime,
    building_number: Field::Number,
    address: Field::String,
    city: Field::String,
    zip_code: Field::String,
    user_id: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
    id
    first_name
    last_name
    date_of_birth
    building_number
    address
    city
    zip_code
    user_id
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    id
    first_name
    last_name
    date_of_birth
    building_number
    address
    city
    zip_code
    user_id
    created_at
    updated_at
  ].freeze

  FORM_ATTRIBUTES = %i[
    id
    first_name
    last_name
    date_of_birth
    building_number
    address
    city
    zip_code
  ].freeze

  COLLECTION_FILTERS = {}.freeze
end
