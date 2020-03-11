class EmailAddressParser

    def parse
        @email_addresses.delete(',').split.uniq
    end
    
    def initialize(email_addresses)
        @email_addresses = email_addresses
    end

end


# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
