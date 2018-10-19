require 'model'
require 'view'

class Controller

  def initialize
    @view = View.new
  end

  def create_gossip
    params = @view.create_gossip
    gossip = Gossip.new(params)
    gossip.save
  end

  def index_gossip()
    params = Gossip.index
    @view.view_gossips(params)
  end

  def delete
    param = @view.delete_gossip
    gossip = Gossip.new(param)
    gossip.delete
  end

end
