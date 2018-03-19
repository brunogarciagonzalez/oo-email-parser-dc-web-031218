# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"

class EmailParser
  attr_reader :str_unfrmt_emails
  def initialize(str_unfrmt_emails)
    @str_unfrmt_emails = str_unfrmt_emails
    # binding.pry
  end

  def parse
    # [splitter(str_unfrmt_emails)[0], splitter(str_unfrmt_emails)[1]]

    splitter(str_unfrmt_emails)
  end

  def splitter(string)
    if string.include?(", ") && string.include?(" ")
      output = string.split(", ")
      output_2 = output.collect do |element|
        element.split(" ")
      end
      output_2.flatten.uniq
    elsif string.include?(", ")
      output = string.split(", ").uniq
    else
      output = string.split(" ").uniq
    end
  end
end
