// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

let arguments = CommandLine.arguments
if(arguments.count < 2){
    print("Usage: "+arguments[0]+" [file path]")
    exit(1)
}

let filePath = arguments[1]
do {
    let content = try String(contentsOfFile: filePath)
    let d = Day1(data: content);
    print(d.Solve());
}
catch{
    print("Error processing file "+filePath);
    exit(1)
}
