# REGEX Foundation Notes

## Extract Digits
Regex:
```regex
[0-9]
```

Matches any single digit from 0 to 9.

---

## Extract Alphabets
Regex:
```regex
[A-Za-z]
```

Matches uppercase and lowercase alphabets.

---

## Start of String (^)
Regex:
```regex
^[0-9]
```

Checks whether the string starts with a digit.

---

## End of String ($)
Regex:
```regex
[0-9]$
```

Checks whether the string ends with a digit.

---

## Exact Character Matching
Regex:
```regex
[0-9]{2}
```

Extracts exactly two digits.

---

## One or More Characters (+)
Regex:
```regex
[0-9]+
```

Extracts continuous numeric characters.

---

## REGEX Continuity

Regex always matches continuous characters only.

Example:
```text
123abc567
```

Regex:
```regex
[0-9]+
```

Output:
```text
123
```

---

## Extract Everything
Regex:
```regex
[0-9A-Za-z]+
```

Extracts digits and alphabets together.

---

## Email Domain Extraction
Regex:
```regex
@[a-zA-Z.]+
```

Extracts domain part from email.

---

## Top-Level Domain Extraction
Regex:
```regex
\.[a-zA-Z]+$
```

Extracts extension like:
- .com
- .org
- .ai

---

## Reserved Characters

Reserved regex characters:
- +
- .
- ^
- $

Use escape character:
```regex
\
```

---

## Phone Number Example
Regex:
```regex
\+91-[0-9]{10}
```

Matches Indian phone number format.

---

## Email Validation Regex

```regex
[a-zA-Z0-9._-]+@[a-zA-Z0-9]+\.[a-zA-Z]{2,3}
```

Validates standard email structure.
