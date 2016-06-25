class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :confirmable

  validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/, :multiline => true
end
