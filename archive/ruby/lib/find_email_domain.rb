# frozen_string_literal: true

# An email address such as "John.Smith@example.com" is made up of a local part ("John.Smith"), an "@" symbol, then a
# domain part ("example.com").

# The domain name part of an email address may only consist of letters, digits, hyphens and dots. The local part,
# however, also allows a lot of different special characters. Here you can look at several examples of correct and
# incorrect email addresses.

# Given a valid email address, find its domain part.

def find_email_domain(str)
  str.split('@')[-1]
end

# Alternative solution using regular expressions:

# def find_email_domain(str)
#   str.reverse[/^[^@]*/].reverse
# end
