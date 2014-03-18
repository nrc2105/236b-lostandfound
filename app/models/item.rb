class Item < ActiveRecord::Base
	belongs_to :type

	#Searches for the list of matching items based on query inputs
	def self.search(title, connector1, description, connector2, owner, type)
		if(type != "")
			self.where("title LIKE ? #{connector1} description LIKE ? #{connector2} owner LIKE ? AND type_id = ?",
			 title, description, owner, type).to_a unless title == "" and description == "" and owner == ""
			self.where("type_id = ?", type) unless title != "" or description != "" or owner != ""
		else
			self.where("title LIKE ? #{connector1} description LIKE ? #{connector2} owner LIKE ?", title, description, owner).to_a
		end
	end
end
