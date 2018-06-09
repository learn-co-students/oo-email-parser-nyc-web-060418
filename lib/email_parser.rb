require 'pry'
# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    #emails = emails.strip
    emails_arr = emails.split
    emails_arr.collect do |email|
      email.strip
      if email.end_with?(",")
        email.chop
      else
        email
      end
    end.uniq
  end

end
