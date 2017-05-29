class Timer
  #write your code here
  attr_accessor :seconds
  def initialize
  	@seconds = 0
  end

  def time_string
  	result = ''
  	if @seconds == 0
  		result = '00:00:00'
  	elsif @seconds>60
  		if @seconds>3600
  			hours = padded(@seconds/3600)
  			seconds = padded(@seconds%60)
  			minutes = padded(@seconds/60 - 60)
  			result = hours.to_s + ':' + minutes.to_s + ':' + seconds.to_s
  		else
  			seconds = padded(@seconds%60)
  			minutes = padded(@seconds/60)
  			result = '00:'+minutes.to_s + ':' + seconds.to_s
  		end
  	else
  		result = '00:00:' + @seconds.to_s
  	end
  end

  def padded number
  	result = ''
  	if number<10
  		result = '0' + number.to_s
  	else
  		result = number.to_s
  	end
  	result
  end
end
