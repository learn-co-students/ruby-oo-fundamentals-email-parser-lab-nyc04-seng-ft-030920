require 'pry'

# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

###########################################
# pass in a list of email addresses, which will be a single string
# use the attr_accessor macro to rewrite the email addresses
# write a `parse` method that returns an array of unique email addresses

class EmailAddressParser
    attr_accessor :email_addresses

    def initialize(email_addresses)
        @email_addresses = email_addresses
    end

    def parse
        @email_addresses = @email_addresses.delete(",")
        @email_addresses = @email_addresses.split
        @email_addresses = @email_addresses.uniq
    end 
end 

parser = EmailAddressParser.new("avi@test.com, arel@test.com test@avi.com, test@arel.com")
