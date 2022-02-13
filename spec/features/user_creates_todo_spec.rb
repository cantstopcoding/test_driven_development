# frozen_string_literal: true

require 'rails_helper'

feature 'User created todo' do
  scenario 'successfully' do
    sign_in

    create_todo 'Buy milk'

    expect(page).to display_todo 'Buy milk'
  end
end
