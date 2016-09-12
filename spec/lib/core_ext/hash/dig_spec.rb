require 'rails_helper'

describe Hash do
  subject(:hash) { { foo: { bar: { baz: 1 } } } }

  describe '#dig' do
    context 'without arguments' do
      it 'raises error' do
        expect { hash.dig }.to raise_error ArgumentError, 'wrong number of arguments (given 0, expected 1+)'
      end
    end

    context 'nested hashes' do
      it 'returns deep value' do
        expect(hash.dig(:foo, :bar, :baz)).to eq(1)
      end
    end

    context 'mixed values' do
      subject(:hash) { { foo: [10, 11, 12] } }

      it 'returns array value too' do
        expect(hash.dig(:foo, 1)).to eq(11)
      end

      it 'raises error if incorrect key type' do
        expect { hash.dig(:foo, :bar) }.to raise_error TypeError, 'no implicit conversion of Symbol into Integer'
      end
    end
  end
end
