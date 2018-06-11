# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  def initialize(emails)
    @emails = emails
  end

  def parse
    string_array = @emails.split(/[\s,]/)
    string_array.delete("")
    string_array.uniq
  end
end
