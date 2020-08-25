# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailAddressParser 

    attr_accessor :email_address_array
    
    def initialize(emails) 

        @email_unformatted = emails

    end

    def parse 

        email_holder = @email_unformatted.split()
        email_address_array = email_holder.map do |emails_var|
            if emails_var[-1] == ","
                emails_var[-1] = ""
            end
        end

        email_holder.uniq

    end
    

end