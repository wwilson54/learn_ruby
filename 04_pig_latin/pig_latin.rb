#write your code here
def translate str
    vowels = 'aeiou'
    words = str.split(' ')
    words.map! do |x| 
        if vowels.include?(x[0].downcase)
            x = x + 'ay'
        else
            first_vowel = find_vowel_index(x)
            x = x.slice(first_vowel,x.length-first_vowel) + x.slice(0,first_vowel) + 'ay'
        end
    end
    result = array_to_string words
end
def array_to_string arr1
    newStr = ''
    arr1.each {|x| newStr += x + ' '}
    newStr = newStr.rstrip
end
def find_vowel_index str
    index = str.downcase.index(/[aeiou]/)
    index2 = 0
    if (str[index - 1] == 'q' && str[index] == 'u')
        index2 = find_vowel_index(str.slice(index + 1, str.length - index - 1))
        index = index + index2 + 1
    end
    index
end

