class User < ApplicationRecord
  t.string :name
  t.string :email
  t.string :password_digest
end
