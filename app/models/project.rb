class Project < ApplicationRecord
    has_one_attached :image1
    has_one_attached :image2 
    has_one_attached :image3
    has_one_attached :image4
    before_save :default_values
    
    def default_values
      if self.new_record?
        # values will be available for new record forms.
         self.title ||= 'P'
        self.description ||= 'P'
        self.summaryOfChallenge||= 'P' 
        self.summaryOfSolution||= 'P' 
        self.summaryOfOutcome||= 'P' 
        self.challenge||= 'P' 
        self.solution||= 'P' 
        self.outcome||= 'P' 
        self.comment||= 'P' 
        self.order||= 'P' 
        self.category||= 'P'
      end
    end
end
