# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'homepage' do
  it 'displays a welcome message' do
    visit root_path

    expect(page).to have_content 'Hello World'
  end
end
