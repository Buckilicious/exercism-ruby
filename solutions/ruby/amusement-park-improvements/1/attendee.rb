class Attendee
  def initialize(height)
    @height = height
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end

  # Do not edit above methods, add your own methods below.

  def has_pass?
    # Check if attendee has pass
    @pass_id != nil
  end

  def fits_ride?(ride_minimum_height)
    # Check if they are tall enough to ride
    @height >= ride_minimum_height
  end

  def allowed_to_ride?(ride_minimum_height)
    # Must be taller or equal in height and have pass to ride
    @pass_id != nil && @height >= ride_minimum_height
  end
end
