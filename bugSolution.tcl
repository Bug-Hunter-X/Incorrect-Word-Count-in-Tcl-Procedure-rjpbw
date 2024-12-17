proc count_words {text} {
    set words 0
    foreach {word} [regexp -all -inline {[^\s]+ } $text] {
        incr words
    }
    return $words
}

puts [count_words "This is a test sentence."] ; # Output: 5
puts [count_words {This is a test sentence with multiple spaces.}] ; # Output: 8
puts [count_words {This is a test sentence
with multiple lines.}] ; #Output: 7