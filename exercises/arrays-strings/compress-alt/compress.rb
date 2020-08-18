class Compress
  def self.compress_string(str)
  return '' if str == ''
    el = str[0]
    count = 0
    last = 0
    f_str = ''
    length = str.length - 1
    (0..length).each do
      count = 0
      el = str[last]
      (last..length).each do |i|
        count += 1 if el == str[i]
        last = i
        break if el != str[i]
      end
      f_str +=  if count > 2
                  el + count.to_s
                elsif count == 2
                  el + el
                else
                  el
                end
      f_str += str[length] if str[length] != str[length - 1] && last == length
      return str if f_str.length - 1 == length
      return f_str if last == length
    end
  end

  p compress_string("AAAAABBB")
  p compress_string('')
end
