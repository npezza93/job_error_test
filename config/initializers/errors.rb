class ErrorSubscriber
  attr_reader :events

  def initialize
    @events = []
  end

  def report(error, **opts)
    binding.irb
    puts "hi\n\n\n\n\n\n\n\n\n\n"
    ::Error.create
    @events << [error, opts]
  end
end

Rails.error.subscribe(ErrorSubscriber.new)
