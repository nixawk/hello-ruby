
# A character class is a set of characters between brackets: [ characters ]
# matches any single character between the brackets.
# [aeiou] will match a vowel,
# [,.:;!?] matches punctuation, and so on.
# The significance of the special regular expression
# characters---.|()[{+^$*?--- is turnned off inside the brackets. However,
# normal string substitution still occurs, so (for example) \b represents a
# backspace character and \n a newline.


# \d      [0-9]             Digit character
# \D      [^0-9]            Nondigit
# \s      [\s\t\r\n\f]      Whitespace character
# \S      [^\s\t\t\n\f]     Nonwhitespace character
# \w      [A-Za-z0-9_]      Word character
# \W      [^A-Za-z0-9_]     Nonword character
