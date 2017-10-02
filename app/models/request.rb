class Request < ApplicationRecord

		validates_presence_of :name
		validates_presence_of :company_name
		validates_presence_of :email
		validates_presence_of :descriotion
		validates_presence_of :timeline
		validates_presence_of :reference
		validates_presence_of :other
end

