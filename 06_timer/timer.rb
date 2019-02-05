class Timer
  #write your code here
  def initialize
    @seconds = 0
  end
  def seconds
    @seconds
  end
  def seconds= int
    @seconds = int
  end
  def time_string
    hours = @seconds / 3600
    minutes = (@seconds - (hours * 3600)) / 60
    remaining_seconds = @seconds - (hours * 3600) - (minutes * 60)
    @time_string = pad(hours.to_s) + ':' + pad(minutes.to_s) + ":" + pad(remaining_seconds.to_s)
  end
  def pad str
    if str.length == 1
      new_str = '0' + str
    else
      new_str = str
    end
    new_str
  end
end
