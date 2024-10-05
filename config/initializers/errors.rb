class ErrorSubscriber
  attr_reader :events

  def initialize
    @events = []
  end

  def report(error, **opts)
    puts "hi\n\n\n\n\n\n\n\n\n\n"
    @events << [error, opts]
  end
end

Rails.error.subscribe(ErrorSubscriber.new)
