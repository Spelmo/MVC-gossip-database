

class View

  def initialize
  end

  def create_gossip
    puts "quel est votre nom ?"
    name = gets.chomp
    puts "quel est votre gossip ?"
    gossip = gets.chomp
    params = {}
    params[name] = gossip
    return params
  end

  def view_gossips(arr)
    puts "#{arr}"
  end

  def delete_gossip
    puts "quel potin voulez-vous supprimer ? (numéro de ligne)"
    return gets.chomp.to_i
    puts "Ligne supprimée !"
  end

end
