class Book
  attr_accessor :title
	def title
  small_words = ['and','the','or','it', 'in', 'of', 'a', 'an']
		result = ''
		phrase = @title.split(' ')
		phrase.each_with_index do |word, idx|
			if idx==0  or idx==phrase.length-1
				word = word.capitalize
			end
			unless small_words.include? word
				word = word.capitalize
			end
			result += ' ' + word
		end
		result.strip
	end
end
