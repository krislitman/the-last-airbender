require 'rails_helper'

RSpec.describe Member do
  describe 'Attributes' do
    it 'Can be created' do
      attributes = 
      {
        "_id": "5cf5679a915ecad153ab6906",
        "allies": [
            "Ty Lee"
        ],
        "enemies": [
            "Appa"
        ],
        "photoUrl": "https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819",
        "name": "Circus master",
        "affiliation": "Fire Nation circus"
      }
      new = Member.new(attributes)
      
      expect(new).to be_an_instance_of Member
      expect(new.allies.length).to eq 1 
      expect(new.enemies.length).to eq 1
      expect(new.photo).to eq("https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819")
      expect(new.name).to eq("Circus master")
      expect(new.affiliation).to eq("Fire Nation circus")
    end
  end
end