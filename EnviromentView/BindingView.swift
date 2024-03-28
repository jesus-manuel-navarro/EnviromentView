//
//  BindingView.swift
//  EnviromentView
//
//  Created by Jesus on 28/3/24.
//

//
// BindingView.swift


import SwiftUI
struct BindingView: View {
   
    @State private var variable: Int?
    
    @EnvironmentObject var miObjeto : MiClase
    
    var body: some View
    {

    NavigationView{
         
    VStack{

        Text("estoy en la dos")
            
        Button("Incrementar edad"){
            miObjeto.edad = miObjeto.edad + 1
            
        }
        Text("Edad es \(miObjeto.edad)")
        
        NavigationLink (destination: BindingView2(), tag: 1, selection: $variable){
            Button("ir a vista 3"){
                variable=1
            }
            
       
    }
    }
    }
    .navigationTitle("Vista 2")
        
    }
}
struct BindingView_Previews: PreviewProvider{
//ponemos cualquier valor pero esto es para preparara a vis

static var previews: some View {
    BindingView().environmentObject(MiClase())
}
}
