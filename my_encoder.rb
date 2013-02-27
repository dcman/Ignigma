class Encoder
  # This will act as the encoder and return a String
  # @param [Fixnum] cyl
  # @param [Fixnum] start
  # @param [String] text
  #puts 'a'.ord.chr
  #puts "z".ord.chr

  def initialize(cyl, start, text)
    @cyl = cyl
    @start = start
    @pre_encode = ''
    @out_put = ''
    @text = text
  end

  # @param [String] text
  # @return [String]
  # Preparers text for encoding: removes spaces and special chars
  def pre_encode(text)
    @pre_encode = text.gsub(/[^0-9A-Za-z]/, '')

  end

  # @return [String]
  def to_s
    @out_put.to_s

  end

  def encode
    a = Array.new
    b = Array.new

    pre_encode(@text)

    @pre_encode.each_char do |c|
      a.push(c.ord)
    end


    a.each do |a|
      b.push(a + @start)
      @start >= 26 ? @start = (@start % 26) + 1 : @start += 1
    end
     b

  end

  #def to_char (ary)
  #  ary.each { |b| @s += b.chr }
  #end

end