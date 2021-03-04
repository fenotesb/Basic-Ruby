file_path = File.join(File.dirname(__FILE__),'Counting_word.txt')
story_contents= File.read(file_path)

#downcase all text
downcased_text = story_contents.downcase
#strip punctuation
stripped_text = downcased_text.gsub(",","").gsub(".","").gsub("/"," ")

#build data structure that keeps track of word frequencies

words = stripped_text.split(" ")

word_count = {}

words.each do |word|
  if word_count[word].nil?
    word_count[word] = 0
  end
  word_count[word] +=1

end
count_of_word_map = {}
word_count.each do |word, count|
  if count_of_word_map[count].nil?
    count_of_word_map[count] = []
  end
  count_of_word_map[count].push(word)
end
puts count_of_word_map.sort.reverse.inspect

count_of_words = 0
#returns the top words used

puts "List of top used words \n----------------------"
sorted_list_of_words = count_of_word_map.sort.reverse
sorted_list_of_words.each do |count|
  if count_of_words <=2

    count[1].each do |word|
      puts word
      count_of_words +=1
    end
  end
end
