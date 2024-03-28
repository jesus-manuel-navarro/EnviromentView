//
// Created by Jesus on 28/3/24.
//
import SwiftUI

class MiClase : ObservableObject{
@Published var nombre = "Pepe"
@Published var edad = 44
}

struct ContentView: View {
    
    @StateObject  var miObjeto = MiClase()
    @State private var variable: Int?
    
    var body: some View {
        
NavigationView{
    
VStack{

    Text("estoy en la uno")
        
    Button("Incrementar edad"){
        miObjeto.edad = miObjeto.edad * 1
    }
    Text("Edad es \(miObjeto.edad)")
    
    NavigationLink (destination: BindingView(), tag: 1, selection: $variable){
        
        Button("ir a vista 2"){
            variable=1
        }
        
   
}
}
.navigationTitle("ContentView")
    
}.environmentObject(miObjeto)
        
    }
    
}


struct ContentView_Previews: PreviewProvider {
static var previews: some View {
    ContentView().environmentObject(MiClase())
}

}

