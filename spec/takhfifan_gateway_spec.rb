require 'takhfifan_gateway'

describe TakhfifanGateway do
  describe '#session_key' do
    it 'successfully gets a session' do
      expect(TakhfifanGateway.new.session_key.size).to eql(32)
    end
  end

  context 'having valid session' do
    before do
      @gw = TakhfifanGateway.new
      @gw.session_key
    end

    describe '#deals' do
      it 'returns some deals' do
        expect(@gw.deals.count).to be > 1
      end
    end

    describe '#deals_prices' do
      it 'returns poices' do
      expect(@gw.deals_prices.first.is_a? Numeric).to eql(true)
    end
    end
  end
end
