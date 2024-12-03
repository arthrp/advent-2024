class Day1 {
    var data: String
    var arr1: [Int] = []
    var arr2: [Int] = []

    init(data: String){
        self.data = data
    }

    func Solve() -> Int {
        Parse()

        var acc = 0
        for i in 0...self.arr1.count-1 {
            let dif = abs(arr1[i] - arr2[i])
            acc += dif
        }
        return acc
    }

    func Parse(){
        let lines = self.data.split(separator: "\n")

        for line in lines {
            let arr = line.split(separator: " ", omittingEmptySubsequences: true)

            self.arr1.append(Int(arr[0])!)
            self.arr2.append(Int(arr[1])!)
        }

        self.arr1.sort()
        self.arr2.sort()
    }
}