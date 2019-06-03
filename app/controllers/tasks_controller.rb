# frozen_string_literal: true

class TasksController < ApplicationController
  def new; end

  def create
    Task.create task_params
  end

  private

  def task_params
    params.require(:task).permit(:title)
  end
end
