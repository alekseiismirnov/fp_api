# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Food do
  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_presence_of :proteins }
  it { is_expected.to validate_presence_of :fats }
  it { is_expected.to validate_presence_of :carbs }
  it { is_expected.to validate_uniqueness_of :name }
end
