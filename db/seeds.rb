cleandatabase = true

if cleandatabase
  BurgerPlace.delete_all
end

BurgerPlace.create(address:"24 Alameda Santos, Brasil", name: "A Chapa", rating: 5)
BurgerPlace.create(address:"Rua Bandeira Paulista, 164 Brasil", name: "Butchers Market",rating: 4)
