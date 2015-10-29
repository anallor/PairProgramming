require "pry"

class Srt
	def initialize(file)
		@file = IO.read(file)
		@subtitles = []
	end

	def parse_srt
		a = @file.split(/\n?^\d+\n/)
binding.pry
		a.each do |line|
			line.split(\d+:+\d+:\d++,+\d++).each do |times|
				@subtitles << {time1: times[0], time2: times[1]}
		end
	end
end

c = Srt.new("subtitulos.srt")
c.parse_srt

