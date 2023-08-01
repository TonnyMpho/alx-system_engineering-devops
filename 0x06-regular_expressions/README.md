## 0x06. Regular expression

#### Background Context

For this project, you have to build your regular expression using Oniguruma, a regular expression library that which is used by Ruby by default. Note that other regular expression libraries sometimes have different properties.

Because the focus of this exercise is to play with regular expressions (regex), here is the Ruby code that you should use, just replace the regexp part, meaning the code in between the //:

```ruby
#!/usr/bin/env ruby
puts ARGV[0].scan(/127.0.0.[0-9]/).join
```

#### Resources
##### Read or watch:

- [Regular expressions - basics](https://www.slideshare.net/neha_jain/introducing-regular-expressions)
- [Regular expressions - advanced](https://www.slideshare.net/neha_jain/advanced-regular-expressions-80296518)
- [Rubular is your best friend](https://rubular.com/)
- [Use a regular expression against a problem: now you have 2 problems](https://blog.codinghorror.com/regular-expressions-now-you-have-two-problems/)
- [Learn Regular Expressions with simple, interactive exercises](https://regexone.com/)

###Tasks

### 0. Simply matching School

##### Requirements:

* The regular expression must match School
* instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method

### 1. Repetition Token #0

hbttn
hbtttn
hbttttn
hbtttttn

##### Requirements:

* Find the regular expression that will match the above cases

### 2. Repetition Token #1

htn
hbtn

##### Requirements:

* Find the regular expression that will match the above cases

### 3. Repetition Token #2

hbtn
hbttn
hbtttn
hbttttn

##### Requirements:

* Find the regular expression that will match the above cases

### 4. Repetition Token #3

##### Requirements:

hbn
hbtn
hbttn
hbtttn
hbttttn

* Find the regular expression that will match the above cases
* project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method
* Regex should not contain square brackets

### 5. Not quite HBTN yet

##### Requirements:

* The regular expression must be exactly matching a string that starts with h ends with n and can have any single character in between
* Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method

### 6. Call me maybe

This task is brought to you by a professional advisor [Neha Jain](https://twitter.com/i/flow/login?redirect_after_login=%2F_nehajain), Senior Software Engineer at LinkedIn.

##### Requirement:

* The regular expression must match a 10 digit phone number

### 7. OMG WHY ARE YOU SHOUTING?

##### Requirement:

* The regular expression must be only matching: capital letters
