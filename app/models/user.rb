class User < ApplicationRecord
    has_many :article
    has_many :contents
end
