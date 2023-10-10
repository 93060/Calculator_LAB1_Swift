//
//  ContentView.swift
//  Calculator
//
//  Created by student on 03/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State var number = ""
    @State var firstNumber = -1
    @State var secondNumber = -1
    @State var operation = ""
    
    func Calculator(calc : String, firstNumber : Int, secondNumber : Int) -> Double?
    {
        var number = -1.0
        switch calc
        {
        case "plus":
            number = Operations().Add(first: firstNumber, second: secondNumber)
        case "minus":
            number = Operations().Sub(first: firstNumber, second: secondNumber)
        case "multiply":
            number = Operations().Multiply(first: firstNumber, second: secondNumber)
        case "divide":
            number = Operations().Divide(first: firstNumber, second: secondNumber)!
        case "sin":
            number = Operations().Sin(first: Double(firstNumber))
        default:
            number = -1
        }
        return number
    }
    var body: some View {
        VStack {
            Text("KALKULATOR").font(.largeTitle)
            Spacer().frame(height: 100)
            Text(number).padding().frame(width: 315.0, height: 60.0).border(Color.black, width: 2.0)
            HStack {
                ButtonView(text: "1", width: 100.0, height: 60.0).onTapGesture {
                    number += "1"
                }
                ButtonView(text: "2", width: 100.0, height: 60.0).onTapGesture {
                    number += "2"
                }
                ButtonView(text: "3", width: 100.0, height: 60.0).onTapGesture {
                    number += "3"
                }
            }
            HStack {
                ButtonView(text: "4", width: 100.0, height: 60.0).onTapGesture {
                    number += "4"
                }
                ButtonView(text: "5", width: 100.0, height: 60.0).onTapGesture {
                    number += "5"
                }
                ButtonView(text: "6", width: 100.0, height: 60.0).onTapGesture {
                    number += "6"
                }
            }
            HStack {
                ButtonView(text: "7", width: 100.0, height: 60.0).onTapGesture {
                    number += "7"
                }
                ButtonView(text: "8", width: 100.0, height: 60.0).onTapGesture {
                    number += "8"
                }
                ButtonView(text: "9", width: 100.0, height: 60.0).onTapGesture {
                    number += "9"
                }
            }
            HStack {
                ButtonView(text: "0", width: 100.0, height: 60.0).onTapGesture {
                    if(number != ""){
                        number += "0"
                    }else{
                        number = "0"
                    }
                }
                ButtonView(text: "+", width: 100.0, height: 60.0).onTapGesture {
                    if (firstNumber == -1){
                        firstNumber = Int(number) ?? -1
                        operation = "plus"
                        number = ""
                    }
                }
                ButtonView(text: "-", width: 100.0, height: 60.0).onTapGesture {
                    if (firstNumber == -1){
                        firstNumber = Int(number) ?? -1
                        operation = "minus"
                        number = ""
                    }
                }
            }
            
            HStack {
                ButtonView(text: "*", width: 100.0, height: 60.0).onTapGesture {
                    if (firstNumber == -1) {
                        firstNumber = Int(number) ?? -1
                        operation = "multiply"
                        number = ""
                    }
                }
                ButtonView(text: "/", width: 100.0, height: 60.0).onTapGesture {
                    if(secondNumber != 0){
                        if (firstNumber == -1){
                            firstNumber = Int(number) ?? -1
                            operation = "divide"
                            number = ""
                        }}else {number = "Blad"}
                }
                ButtonView(text: "sin", width: 100.0, height: 60.0).onTapGesture {
                    if (firstNumber == -1){
                        firstNumber = Int(number) ?? -1
                        operation = "sin"
                        number = ""
                    }
                }
            }
                
                ButtonView(text: "Oblicz", width: 315.0, height: 60.0).onTapGesture {
                    if (firstNumber == -1){
                        number = ""
                    } else
                    {
                        if((secondNumber == 0 || secondNumber == -1 ) && operation == "divide"){
                            number = "Blad"
                            firstNumber = -1
                        }else{
                            secondNumber = Int(number) ?? -1
                                number = String(Double(Calculator(calc: operation, firstNumber: firstNumber, secondNumber: secondNumber)!))
                                firstNumber = -1
                            }
                    }
                }
                
            }
        }
    }
                    

//#Preview {
//    ContentView()
//}
