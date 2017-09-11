class Contact < ActiveRecord::Base
    #emailへの空の値の入力を禁止
    validates :email,  presence: true
    #contentへの空の値の入力を禁止
    validates :content,  presence: true
end
