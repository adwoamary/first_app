class Word < ActiveRecord::Base
	def initial
    # find a number at the start of the string if it exists
    m = self.name.match(/^\d+/)
    return m[0] if m
    # or return the first letter upcased otherwise
    return self.name.slice( 0, 1 ).upcase
  end
end
