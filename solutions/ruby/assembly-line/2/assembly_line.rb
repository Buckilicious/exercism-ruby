class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    # Working incrementally upwards, use the upper limit per % group with if, elsif, and else statements
    if @speed == 0
      # If off it can't produce anything
      0
    elsif @speed <= 4
      # 100% success rate
      @speed*221.to_i
    elsif @speed <=8
      # 90% sucess rate
      (@speed*221)*0.90
    elsif @speed == 9
      # 80% success rate
      (@speed*221)*0.80
    else
      # 77% success rate
      (@speed*221)*0.77
    end
  end

  def working_items_per_minute
    # Convert production per hour into minutes and change float to an integer
    (production_rate_per_hour/60).to_i
  end
end
