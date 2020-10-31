#Models

##Ride---join table
belongs_to :attraction
belongs_to :user

        :user_id => integer
        :attraction_id => integer

##User
has_many :rides
has_many :attractions, through: rides

      :name => string
      :password_digest => string,
      :nausea => integer,
      :happiness => integer,
      :tickets => integer,
      :height => integer
      :admin => boolean, default to false

##Attraction
has_many :rides
has_many :users, through: :rides

        :name => string
        :tickets => integer
        :nausea_rating => integer
        :happiness_rating => integer
        :min_height => integer
