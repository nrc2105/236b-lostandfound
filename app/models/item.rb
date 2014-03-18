class Item < ActiveRecord::Base
	belongs_to :type

	#Searches for the list of matching items based on query inputs
	def self.search(title, connector1, description, connector2, owner, connector3, type)
			if title != "" and description != ""
				self.where("title LIKE ? #{connector1} description LIKE ? #{connector2} owner LIKE ? #{connector3} type_id = ?",
				 '%'+title+'%', '%'+description+'%', owner, type).to_a
			elsif title != ""
				self.where("title LIKE ? #{connector2} owner LIKE ? #{connector3} type_id = ?",
				 '%'+title+'%', owner, type).to_a
			else
				self.where("description LIKE ? #{connector2} owner LIKE ? #{connector3} type_id = ?",
				 '%'+description+'%', owner, type).to_a
			end
	end
end
