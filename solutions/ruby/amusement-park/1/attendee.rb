class Attendee
  def initialize(height)
    # Save the height into instance variable
    @height = height
  end

  def height
    # Return the height of attendee
    @height
  end

  def pass_id
    # Get pass_id, return nil if none
    @pass_id
  end

  def issue_pass!(pass_id)
    # Assign pass_id to instance variable pass
    @pass_id = pass_id
  end

  def revoke_pass!
    # Make pass_id nil
    @pass_id = nil
  end
end
