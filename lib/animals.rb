class Animals

  SCIENCE={
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
  }

  def self.types
    SCIENCE.keys.map{ |key| key.to_s }
  end

  def self.relationships(x)
    SCIENCE[:humans][:relationships]
      .map { |relationship| relationship[:type] }
  end

  def self.describe_relationship(x)
    SCIENCE[:humans][:relationships]
      .select { |relationship| relationship[:type] == x }[0][:description]
  end

  def self.teamwork_relationship
    SCIENCE[:humans][:relationships]
      .select { |relationship| relationship[:good_for_teamwork] == true }[0][:type]
  end

  def self.science
    SCIENCE
  end


end
