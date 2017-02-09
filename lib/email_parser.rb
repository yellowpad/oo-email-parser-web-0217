# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :email

  def initialize(email)
    @email = email
  end


  def parse
    email_list = email.split(" ")
    email_list.uniq
    final_list = []
    email_list.map do |email|
      email = email.gsub(',', '')
      final_list << email
    end
    return final_list.uniq
  end
end
