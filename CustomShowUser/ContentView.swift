//
//  ContentView.swift
//  CustomShowUser
//
//  Created by Gabriel Paschoal on 20/03/23.
//

import SwiftUI

struct ContentView: View {
    @State var reserveHasEnabled: Bool = false
    var body: some View {
        VStack {
            UserField(name: "Paula Maria Fernanda", image: "mengao")
                .padding(.top, 14)
            
            UserReserve(room: "Babbies", date: "| 12/02/23", hours: "| 09h00", prefix: "Reservado para")
            ButtonReserve(title: reserveHasEnabled ? "Reservar": "Cancelar reserva") {
                reserveHasEnabled.toggle()
            }.padding(.vertical, 14)
        }
        .padding(.horizontal, 16)
        .background(Color.white)
        .cornerRadius(5)
        
    }
}

struct UserField: View {
    let name: String?
    let image: String?
    
    var body: some View {
        HStack {
            Image(image ?? "mengao")
                .resizable()
                .scaledToFill()
                .frame(width: 24, height: 24)
                .cornerRadius(24)
                
            
            Text(name ?? "User dont have name...")
            Spacer()
        }
    }
}

struct UserReserve: View {
    let room: String?
    let date: String?
    let hours: String?
    let prefix: String?
    
    var body: some View {
        HStack {
            Spacer()
            Text("\(prefix ?? ""): \(room ?? "")  \(date ?? "")  \(hours ?? "")")
            Spacer()
        }
        .padding(.vertical, 8)
        .background(Color(#colorLiteral(red: 0.961, green: 0.969, blue: 0.98, alpha: 1)))
        .cornerRadius(5)
        .shadow(color: .gray, radius: 0.7)
    }
}

struct ButtonReserve: View {
    let title: String?
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Text(title ?? "this button dont have title...")
        }

    }
}
