//
//  ContentView.swift
//  BMI
//
//  Created by GALIAH ALAJMI on 21/01/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State var weigth = ""
    @State var hight = ""
    @State var result = 0.0
    @State var health = ""
    var body: some View {
        VStack{
        Image("pic1")
                .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                .padding(0.3)
                .frame(width: 103.0, height: 102.0)
            Text(" ادخل الطول و الوزن ")
                .font(.title)
                .fontWeight(.heavy)
              
            
        TextField("weigth", text: $weigth)
        TextField("height", text: $hight)
            Button {
                result = bmiCalc(w:  Double (weigth) ?? 0.0, h: Double( hight) ?? 0.0)
                if result <= 20{
                    health = "ضعيف"
                } else if result >= 20 && result <= 25{
                    health = "جيد"
                } else {
                        health = "سمين "
                        }
            } label: {
                Text("احسب")
                    .font(.body)
                    .fontWeight(.bold)
                    .foregroundColor(Color.blue)
                    .multilineTextAlignment(.center)
                    .background(.black.opacity(0.2))
            }
     Text("BMI = \(result)")
            Text("الحاله= \(health)")
        }
    }
    func bmiCalc(w:Double,h:Double)-> Double{
        return w/( h * h)
    }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
