module BERT
  def self.encode(ruby)
    Encoder.encode(ruby)
  end

  def self.decode(bert, force_to_encoding=nil)
    Decoder.decode(bert, force_to_encoding)
  end

  def self.ebin(str)
    bytes = []
    str.each_byte { |b| bytes << b.to_s }
    "<<" + bytes.join(',') + ">>"
  end

  def self.force_encoding(str, force_to_encoding=nil)
    if force_to_encoding && str.respond_to?(:force_encoding)
      str.force_encoding(force_to_encoding)
    else
      str
    end
  end

  class Tuple < Array
    def inspect
      "t#{super}"
    end
  end
end
