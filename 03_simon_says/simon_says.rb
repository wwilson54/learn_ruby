#write your code here
def echo str
    str
end
def shout str
    str.upcase()
end
def repeat str, times=1
    new_str = str + ' ' + str
    while times > 2
        new_str += (' ' + str)
        times -= 1
    end
    new_str
end
def start_of_word str, length
    str.slice(0,length)
end
def first_word str
    str.split(' ')[0]
end
def titleize str
    little_words = ['the','and','or','over']
    newStr = ''
    words = str.split(' ')
    words.each.with_index {|x, index|
        if (index > 0 && (little_words.include? x.downcase))
            newStr << x.downcase + ' '
        else
            newStr << x.capitalize + ' '
        end}
    newStr = newStr.rstrip
    puts(newStr)
    newStr
end