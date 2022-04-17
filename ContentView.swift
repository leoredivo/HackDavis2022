//
//  ContentView.swift
//  Hackdavis22
//
//  Created by Leonardo Redivo on 4/16/22.
//

import SwiftUI

struct ResultView: View {
    var choice: String
    var choice2: String
    
    var body: some View{
        DCWebView(url: URL(string:"\(choice)")!).navigationTitle("\(choice2)")
        
    }
}

struct MapResultView: View {
    var choice: String
    var choice2: String
    
    var body: some View{
        MapWebView(url: URL(string:"\(choice)")!).navigationTitle("\(choice2)")
        
    }
}


struct NewResultView: View{
    var body: some View{
        VStack(){
            NavigationLink(destination: ResultView(choice: "https://housing.ucdavis.edu/dining/menus/dining-commons/segundo/", choice2: "Segundo")){
                Text("Segundo").fontWeight(.bold)
                    .font(.title)
                    .padding(20)
                    .background(Color.yellow)
                    .cornerRadius(40)
                    .foregroundColor(Color(hue: 0.663, saturation: 1.0, brightness: 1.0))
                    .padding(5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(Color.yellow, lineWidth: 5)
                    )
            }.padding()
            NavigationLink(destination: ResultView(choice: "https://housing.ucdavis.edu/dining/menus/dining-commons/tercero/",choice2: "Tercero")){
                Text("Tercero").fontWeight(.bold)
                    .font(.title)
                    .padding(20)
                    .background(Color.yellow)
                    .cornerRadius(40)
                    .foregroundColor(Color(hue: 0.663, saturation: 1.0, brightness: 1.0))
                    .padding(5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(Color.yellow, lineWidth: 5)
                    )
            }.padding()
            
            NavigationLink(destination: ResultView(choice: "https://housing.ucdavis.edu/dining/menus/dining-commons/cuarto/",choice2: "Cuarto")){
                Text("Cuarto").fontWeight(.bold)
                    .font(.title)
                    .padding(20)
                    .background(Color.yellow)
                    .cornerRadius(40)
                    .foregroundColor(Color(hue: 0.663, saturation: 1.0, brightness: 1.0))
                    .padding(5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(Color.yellow, lineWidth: 5)
                    )
            }.padding()
            NavigationLink(destination: ResultView(choice: "https://housing.ucdavis.edu/dining/menus/dining-commons/latitude/",choice2: "Latitude")){
                Text("Latitude").fontWeight(.bold)
                    .font(.title)
                    .padding(20)
                    .background(Color.yellow)
                    .cornerRadius(40)
                    .foregroundColor(Color(hue: 0.663, saturation: 1.0, brightness: 1.0))
                    .padding(5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(Color.yellow, lineWidth: 5)
                    )
            }.padding()
            NavigationLink(destination: ResultView(choice: "https://housing.ucdavis.edu/dining/food-trucks/",choice2: "Food Trucks")){
                Text("Food Trucks").fontWeight(.bold)
                    .font(.title)
                    .padding(20)
                    .background(Color.yellow)
                    .cornerRadius(40)
                    .foregroundColor(Color(hue: 0.663, saturation: 1.0, brightness: 1.0))
                    .padding(5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(Color.yellow, lineWidth: 5)
                    )
            }.padding()
            NavigationLink(destination: ResultView(choice: "https://thepantry.ucdavis.edu/",choice2: "Free Food!")){
                Text("Pantry").fontWeight(.bold)
                    .font(.title)
                    .padding(20)
                    .background(Color.yellow)
                    .cornerRadius(40)
                    .foregroundColor(Color(hue: 0.663, saturation: 1.0, brightness: 1.0))
                    .padding(5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(Color.yellow, lineWidth: 5)
                    )
            }.padding()
        }
        .navigationTitle("Food Options")
    }
}

struct ContentView: View {
    init() {
      let coloredAppearance = UINavigationBarAppearance()
      coloredAppearance.configureWithOpaqueBackground()
        coloredAppearance.backgroundColor = .blue
      coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
      coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
      
      UINavigationBar.appearance().standardAppearance = coloredAppearance
      UINavigationBar.appearance().compactAppearance = coloredAppearance
      UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
      
      UINavigationBar.appearance().tintColor = .white
    }
    var body: some View {
        NavigationView{
            VStack(){
                ScrollView(.vertical, showsIndicators: false){
                NavigationLink(destination: NewResultView()){
                    Image("food3").resizable().padding().frame(width: UIScreen.main.bounds.size.width/1.5, height: UIScreen.main.bounds.size.height/3).clipShape(Circle()).overlay(Circle().stroke(Color.blue, lineWidth: 3))
                        
                }.padding(.top, 10.0)
                NavigationLink(destination: MapResultView(choice: "https://www.google.com/maps/d/edit?mid=1BFEVW3jcgTPUHDAQt00HRWKZMCmTgFGo&usp=sharing",choice2: "Map")){
                    Image("map3").resizable().padding().frame(width: UIScreen.main.bounds.size.width/1.5, height: UIScreen.main.bounds.size.height/3).clipShape(Circle()).overlay(Circle().stroke(Color.blue, lineWidth: 3))
                }.padding(.top, 10.0)
                NavigationLink(destination: ResultView(choice: "https://unitrans.ucdavis.edu/routes/",choice2: "Bus")){
                    Image("bus2").resizable().padding().frame(width: UIScreen.main.bounds.size.width/1.5, height: UIScreen.main.bounds.size.height/3).clipShape(Circle()).overlay(Circle().stroke(Color.blue, lineWidth: 3))
                }.padding()
                NavigationLink(destination: ResultView(choice: "https://aggielife.ucdavis.edu/events",choice2: "Events")){
                    Image("events2").resizable().padding().frame(width: UIScreen.main.bounds.size.width/1.5, height: UIScreen.main.bounds.size.height/3).clipShape(Circle()).overlay(Circle().stroke(Color.blue, lineWidth: 3))
                }.padding()
                
                NavigationLink(destination: ResultView(choice: "https://docs.google.com/spreadsheets/d/11c-N0s3URalEwhaHn-2Hb7w5Tk9kbxFLhu2mHbvApgw/edit?usp=sharing",choice2: "Library")){
                    Image("clubs2").resizable().padding().frame(width: UIScreen.main.bounds.size.width/1.5, height: UIScreen.main.bounds.size.height/3).clipShape(Circle()).overlay(Circle().stroke(Color.blue, lineWidth: 3))
                }.padding()
                
            }
            
            }.navigationBarTitle(
                Text("")
                , displayMode: .inline)
                .navigationBarItems(leading:
                    HStack {
                        Image("title")
                            .resizable()
                            .foregroundColor(.blue)
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 200, height: 50, alignment: .center)
                        .padding(UIScreen.main.bounds.size.width/4+30)
                    }
            )
        }.background(Color.blue)
            
    }
    
    }





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13")
            
    }
}
