module LinkHelpers
  def event_anchor(event)
    "#{event.date.downcase.gsub(' ', '-')}-#{event.name.downcase.gsub(' ', '-')}"
  end
end