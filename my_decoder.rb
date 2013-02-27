class Decoder

  # This will act as the Decoder and return a String
  # @param [Fixnum] cyl
  # @param [Fixnum] start
  # @param [String] text
  def initialize(cyl, start, text)
    @text = to_text(text)
    @in_put = [85, 106, 108, 119, 110, 121, 104, 124, 110, 130, 127, 131, 118, 130, 119, 113, 125, 129, 135, 131, 123, 138, 124, 144, 141, 123, 111, 102, 76, 108, 116, 118, 108, 113, 125, 113, 122, 113, 128, 123, 126, 130, 118, 134, 123, 121, 131, 138, 127, 129, 139, 142, 122, 101, 107, 101, 119, 121, 104, 110, 125, 111, 125, 117, 129, 128, 116, 125, 128, 136, 120, 135, 137, 126, 124, 139, 137, 123, 100, 103, 118]
    @start = start
    @cyl = cyl
    @out_put = decode

  end
           3%
  #
  # @param [String] text
  # @return [String]
  def to_text(text)
    @text = text.downcase.gsub(/[^0-9A-Za-z]/, '')

  end

  # @return [String]
  def to_s
    @text
  end

  def decode
    #Todo
  end
end