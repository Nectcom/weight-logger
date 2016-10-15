require "spec_helper"


describe Weight do
    let!(:user) { User.create(name: "nect", password: "test", height: 165) }
    
    it "is valid with weight and date" do
        timestanp = Time.new.to_s(:db)
        weight = Weight.new(weight: 67, date: Time.now)
        
        expect(weight).to be_valid
    end
        
    context "user has many weight records" do
        it "parent.children.create" do
            weight = user.weights.create(weight: 67, date: Time.now)
            
            expect(user.weights).to eq [weight]
            expect(weight).to be_persisted  #DBに存在する
        end
    end
end