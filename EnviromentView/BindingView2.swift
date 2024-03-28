//
//  BindingView2.swift
//  EnviromentView
//
//  Created by Jesus on 28/3/24.
//

import SwiftUI

struct BindingView2: View {
    @State private var variable: Int?
    var body: some View {
        Text("pantalla 3")
        NavigationView{
            
        VStack{

            Text("estoy en la tres")
                
            
            NavigationLink (destination: ContentView(), tag: 1, selection: $variable){
                Button("ir a vista 1"){
                    variable=1
                }
                
           
        }
        }
        .navigationTitle("Vista 3")
            
        }    }
}

struct BindingView2_Previews: PreviewProvider {
    static var previews: some View {
        BindingView2().environmentObject(MiClase())
        
    }
}
