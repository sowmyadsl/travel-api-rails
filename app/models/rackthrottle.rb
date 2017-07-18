class Rack::Throttle::Place < Rack::Throttle::Interval

  # def max_per_second(request = nil)
  #   return (options[:max_per_second] || options[:max] || 1) unless request
  #   if request.place == "POST"
  #     4
  #   else
  #     10
  #   end
  # end
  # alias_method :max_per_window, :max_per_second

end
