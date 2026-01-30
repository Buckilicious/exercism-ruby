class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    if @speed == 0
      @speed*221.to_i
    elsif @speed <= 4
      @speed*221.to_i
    elsif @speed <=8
      (@speed*221)*0.90
    elsif @speed == 9
      (@speed*221)*0.80
    else
      (@speed*221)*0.77
    end
  end

  def working_items_per_minute
    item_per_minute = production_rate_per_hour/60
    item_per_minute.to_i
  end
end
