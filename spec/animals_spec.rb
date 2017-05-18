require 'animals'

describe Animals do
  describe '.types' do
    it('returns all types') do
      expect(Animals.types).to eql(['humans', 'non_humans'])
    end
  end

  describe '.relationships' do
    it('returns all types of relationships between humans') do
      expect(
        Animals.relationships('humans')
      ).to eql(['dominance', 'communality', 'reciprocity'])
    end
  end

  describe '.describe_relationship' do
    it("describes dominance as: Don't mess with me.") do
      expect(
        Animals.describe_relationship('dominance')
      ).to eql('Don\'t mess with me.')
    end

    it("describes communality as: What's mine is thine; what's thine is mine.") do
      expect(
        Animals.describe_relationship('communality')
      ).to eql('What\'s mine is thine; what\'s thine is mine.')
    end

    it("describe reciprocity as: You scratch my back; I'll scratch yours.") do
      expect(
        Animals.describe_relationship('reciprocity')
      ).to eql('You scratch my back; I\'ll scratch yours.')
    end
  end

  describe '.teamwork_relationship' do
    it('returns reciprocity') do
      expect(Animals.teamwork_relationship).to eql('reciprocity')
    end
  end

  describe '.science' do
    it('returns all above') do
      expect(
        Animals.science
      ).to eql({
                 humans: {
                   relationships: [
                     {
                       type: 'dominance',
                       description: 'Don\'t mess with me.',
                       good_for_teamwork: false
                     },
                     {
                       type: 'communality',
                       description: 'What\'s mine is thine; what\'s thine is mine.',
                       good_for_teamwork: false
                     },
                     {
                       type: 'reciprocity',
                       description: 'You scratch my back; I\'ll scratch yours.',
                       good_for_teamwork: true
                     }
                   ]
                 },
                 non_humans: {
                   relationships: []
                 }
               })
    end
  end
end
