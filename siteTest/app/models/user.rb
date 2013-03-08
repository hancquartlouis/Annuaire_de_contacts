class User < ActiveRecord::Base
	validates :prenom, :presence => true , :length => { :minimum => 3, :maximum => 150}
	validates :nom, :presence => true , :length => { :minimum => 3, :maximum => 150}
	validates_format_of :email, :with => /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i
end
