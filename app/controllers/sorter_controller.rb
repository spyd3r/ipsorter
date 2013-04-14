class SorterController < ApplicationController
  def index

  end

  def sort
  	# puts params[:source]
  	@result = params[:source]
  	@btn_type = params[:commit]
  	# puts @result.nil?
  	if @result.nil? ==false
  		@match = @result.scan(/\b(?:\d{1,3}\.){3}\d{1,3}\b/)
  	end
  end

  def compare
  	@result1 = params[:source1]
  	# puts @result1.nil?
  	@result2 = params[:source2]
  	# puts @result2.nil?
  	if @result1.nil? == false
  		@match1 = @result1.scan(/\b(?:\d{1,3}\.){3}\d{1,3}\b/)
  	end
  	if @result2.nil? == false
  		@match2 = @result2.scan(/\b(?:\d{1,3}\.){3}\d{1,3}\b/)
  	end

  	@comp_res = []
  	if @match1.nil? == false && @match2.nil? == false
  		
  		@match1.each do |a|
  			if @match2.include?(a)
  				@comp_res.push(a)
  			end
  		end

  		@match2.each do |a|
  			if @match1.include?(a)
  				@comp_res.push(a)
  			end
  		end

  		# puts @match1.inspect
  		# puts @match2.inspect
  		# puts @comp_res.uniq.inspect
  	end
  end

  def format
  	@result = params[:source]
  	if @result.nil? == false
  		@match = @result.scan(/\b(?:\d{1,3}\.){3}\d{1,3}\b/)
  	end
  end

end
