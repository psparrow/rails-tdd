# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'task management' do
  scenario 'creating a task' do
    visit root_path
    click_link 'Add Task'
    fill_in :task_title, with: 'Do something'
    click_button 'Submit'

    task = Task.last

    expect(task.title).to eq 'Do something'

    expect()
  end
end
