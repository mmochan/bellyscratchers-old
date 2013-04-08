 FactoryGirl.define do
	 factory :customer do
		 email                 "mmochan@me.com"
		 name									 "Mike Mochan"
		 password              "changeit"
		 password_confirmation "changeit"
		 created_at           Time.now
	 end 
	 factory :reservation do
		 checkin                2013-04-23
		 checkout								2013-04-30
		 guests              		["Harley", "Ernie"]
		 collection_required 		1
	 end 		
 end