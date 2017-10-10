module FormHelper
  def setup_location(location)
    location.address ||= Address.new
    location
  end
end