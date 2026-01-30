class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    # Split at [ERROR], [WARNING], or [INFO] and strip whitespace => ('Invalid operation')
    @line.split(':')[1].strip
    # message is now the message attached to the Log
  end

  def log_level
    # Split at [ERROR], [WARNING], or [INFO] substitute '[]' with '' and downcase to log_level
    @line.split(':')[0].gsub(/[\[\]]/, '').downcase
    # log_level is now 'error', 'warning', or 'info'
  end

  def reformat
    # Put message first and append log_level
     "#{message} (#{log_level})"
    # e.g. "Invalid operation (error)"
  end
end
