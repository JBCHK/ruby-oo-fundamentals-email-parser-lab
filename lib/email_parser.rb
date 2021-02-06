# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    attr_accessor :email_addresses, :parse
    def initialize(email_addresses)
        @email_addresses = email_addresses
        @parse
    end
    
    def parse
        in_puts = @email_addresses.scan(/[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}/i)
        indiv_emails = in_puts.uniq
        return indiv_emails
    end

end



