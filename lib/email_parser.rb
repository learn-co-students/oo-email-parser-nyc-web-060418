# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  attr_accessor :email_string, :unformatted

  def initialize(email_string)
    @unformatted = email_string
  end

  def parse
    @unformatted.split.map do |email|
      email.split(",")
    end.flatten.uniq
  end

end
