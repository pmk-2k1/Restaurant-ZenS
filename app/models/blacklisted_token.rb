# frozen_string_literal: true

class BlacklistedToken < ApplicationRecord
  belongs_to :users
end
