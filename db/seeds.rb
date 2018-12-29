cleandatabase = true

if cleandatabase
  BurgerPlace.delete_all
end

BurgerPlace.create(address:"24 Alameda Santos, Brasil", name: "A Chapa", rating: 5, price: 40)
BurgerPlace.create(address:"Rua Bandeira Paulista, 164 Brasil", name: "Butchers Market",rating: 4, price: 60)
BurgerPlace.create(address:"Rua Manuel Guedes 135 Brasil", name: "El Burgo",rating: 4, price: 25)
