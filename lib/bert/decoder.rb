module BERT
  class Decoder
    # Decode a BERT into a Ruby object.
    #   +bert+ is the BERT String
    #
    # Returns a Ruby object
    def self.decode(bert, force_to_encoding=nil)
      Decode.decode(bert, force_to_encoding)
    end
  end
end
