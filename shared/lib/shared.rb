require 'json'
require 'digest'

module Shared

  class Person
    def initialize(name)
      @name = name
    end

    def name
      @name
    end

    def digest
      @digest ||= Digest::SHA256.base64digest(self.name)
    end

    def to_json
      @json ||= {
        name: self.name,
        digest: self.digest,
        from_shared: true
      }.to_json
    end

    def self.find_parent(name)
      data = DB[:parents].where {|query| query.name =~ name }.first!
      self.new(data[:name])
    end
  end

end
