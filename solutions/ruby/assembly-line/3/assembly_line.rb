class AssemblyLine
  HOURLY_PRODUCTION = 221
  def initialize(speed)
    @speed = speed
  end

  def succ_rate
    # Checking the production speed return a percentage of success
    if @speed == 10
      return 0.77
    elsif @speed == 9
      return 0.80
    elsif @speed >= 5
      return 0.90
    elsif @speed >= 1
      return 1
    end
  end
  
  def production_rate_per_hour
    # Multiply the hourly production rate by the speed and then the success rate
    (HOURLY_PRODUCTION * @speed) * succ_rate
  end

  def working_items_per_minute
    # Convert production per hour into minutes and change float to an integer
    (production_rate_per_hour/60).to_i
  end
end
