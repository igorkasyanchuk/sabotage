# Sabotage

[![RailsJazz](https://github.com/igorkasyanchuk/rails_time_travel/blob/main/docs/my_other.svg?raw=true)](https://www.railsjazz.com)
[![https://www.patreon.com/igorkasyanchuk](https://github.com/igorkasyanchuk/rails_time_travel/blob/main/docs/patron.svg?raw=true)](https://www.patreon.com/igorkasyanchuk)

Coding & debugging must be fun. Make life a bit harder for your colleagues :)

Just try to put this code without code review into your app and start watching reactions of your colleagues.

Code from this gem is changing logs and randomizing log output. It's impacting output like:

```
  Post Load (0.1ms)  SELECT "posts".* FROM "posts" ORDER BY "posts"."id" DESC LIMIT ?  [["LIMIT", 1]
  ↳ app/views/posts/index.html.erb:7
  Post Load (0.2ms)  SELECT "posts".* FROM "posts"
  ↳ app/views/posts/index.html.erb:25
```

It will change numbers in `[["LIMIT", 1]` to random `[["LIMIT", 2]` or `[["LIMIT", 5]`.
Or `app/views/posts/index.html.erb:7` to `app/views/posts/index.html.erb:17` or to `app/views/posts/index.html.erb:5`

[![Sample](https://raw.githubusercontent.com/igorkasyanchuk/sabotage/master/docs/sabotage.png)](https://raw.githubusercontent.com/igorkasyanchuk/sabotage/master/docs/sabotage.png)

## Usage

There are 2 options how you can make a sabotage on your project.

- add as gem into Gemfile
- without adding a gem, just put code below into some existing `config/initializers/*`

```ruby
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
```

(if you like to see source - you can do it here: https://www.base64decode.org/)


## Installation as Gem

```ruby
gem 'sabotage'
```

or

add into initializers, or application.rb at the bottom of the file.

## Contributing

You are welcome to contribute :)

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

[<img src="https://github.com/igorkasyanchuk/rails_time_travel/blob/main/docs/more_gems.png?raw=true"
/>](https://www.railsjazz.com/?utm_source=github&utm_medium=bottom&utm_campaign=sabotage)
