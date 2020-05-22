//
//  ContentView.swift
//  DetailView
//
//  Created by Martin Lasek on 14.06.19.
//  Copyright © 2019 Martin Lasek. All rights reserved.
//

import SwiftUI

struct Pokemon: Identifiable {
  let id: Int
  let name: String
  let type: String
  let color: Color
}

struct ListView: View {
  @State var pokemonList = [
    Pokemon(id: 0, name: "Charmander", type: "Fire", color: .red),
    Pokemon(id: 1, name: "Squirtle", type: "Water", color: .blue),
    Pokemon(id: 2, name: "Bulbasaur", type: "Grass", color: .green),
    Pokemon(id: 3, name: "Pikachu", type: "Electric", color: .yellow),
  ]
  
  @State var showDetails = true
  
  var body: some View {
    NavigationView {
      List(pokemonList) { pokemon in
        
        NavigationLink(destination: DetailView(pokemon: pokemon)) {
          HStack {
            Text(pokemon.name)
            if self.showDetails {
              Text(pokemon.type).foregroundColor(pokemon.color)
            }
          }
        }
      }
        .navigationBarTitle(Text("Pokedex"))
        .navigationBarItems(
          leading: ToggleTextButton(isOn: $showDetails),
          trailing: Button(
            action: addPokemon,
            label: { Text("Add") }
          )
      )
    }
  }
  
  func addPokemon() {
    if let randomPokemon = pokemonList.randomElement() {
      pokemonList.append(randomPokemon)
    }
  }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
  static var previews: some View {
    ListView()
  }
}
#endif
