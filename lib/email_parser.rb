# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'Pry'

class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    # if self.emails.include?(", ")
    #   self.emails.split(", ")
    # else
    #   self.emails.split(" ").insert(", ")
    # end
    res = self.emails.split(/[\s|,]/) - [""]
    res.uniq
    # binding.pry
  end
end
