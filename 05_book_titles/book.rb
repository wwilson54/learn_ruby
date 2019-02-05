class Book
# write your code here
    def title
        @title
    end
    def title=(new_title)
        little_words = ['the','and','of','on','in','to','a','an']
        @title = ''
        temp_title = new_title.split(' ')
        temp_title.each_with_index do |x,i|
            if (i == 0 || !(little_words.include?(x)))
                @title += x.capitalize + ' '
            else
                @title += x.downcase + ' '
            end
        end
        @title = @title.rstrip
    end
end
