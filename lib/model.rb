require 'csv'


class Gossip
  attr_reader :author, :content

  def initialize(hash)
  @hash = hash
  end

  def save
    CSV.open('db/gossip.csv', 'a') do | csv |
        @hash.each do | key, value |
            csv << [ key, value ]
        end
    end
  end

  def self.index
    arr = []
    t = CSV.table('db/gossip.csv')
    return t[:content]
  end

  def delete
    t = CSV.read('db/gossip.csv')
    CSV.open('db/gossip.csv', 'wb') do | csv |
      t.each_with_index do |row,index|
        if index == @hash
          csv << [nil,nil]
        else
          csv << [row[0],row[1]]
        end
      end
    end
  end
end
