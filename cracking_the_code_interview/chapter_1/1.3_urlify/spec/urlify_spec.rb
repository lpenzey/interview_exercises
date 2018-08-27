# frozen_string_literal: true

require 'urlify'

describe URLify do
  let (:foo) { URLify.new }

  describe '.make_url' do
    it 'does not replace anything for sentence with no spaces' do
      result = foo.make_url('happy')

      expect(result).to eq 'happy'
    end

    it 'replaces one space with %20' do
      result = foo.make_url('happy day')

      expect(result).to eq 'happy%20day'
    end

    it 'replaces two spaces with %20' do
      result = foo.make_url('happy day friend')

      expect(result).to eq 'happy%20day%20friend'
    end

    it 'replaces three spaces with %20' do
      result = foo.make_url('happy day friend of')

      expect(result).to eq 'happy%20day%20friend%20of'
    end

    it 'replaces four spaces with %20' do
      result = foo.make_url('happy day friend of mine')

      expect(result).to eq 'happy%20day%20friend%20of%20mine'
    end
  end
end
