class ErrorJob < ApplicationJob
  def perform
    raise StandardError
  end
end
