import Cocoa
//Question 1
//-在 Playground 中创建类ImageStorage，包含如下内容：
//-常量imagesKey，值为"images"
//-只读数组变量images，类型为Data数组
//-无参数的构造函数
//-函数savelmage，接受一个Data类型的参数，内容为空
//-函数deletelmage，接受一个Data类型的参数，内容为空
//-私有函数haslmage，接受一个Data类型的参数，返回值为Bool类型，内容为空
class ImageStorage {
    static let imagesKey = "images"
    
    private(set) var images: [Data] = []
    
    init() {
        // 在这里初始化 images 数组
    }
    
    func saveImage(_ image: Data) {
        // 在这里实现保存图片的逻辑
    }
    
    func deleteImage(_ image: Data) {
        // 在这里实现删除图片的逻辑
    }
    
    private func hasImage(_ image: Data) -> Bool {
        // 在这里实现检查图片是否存在的逻辑
        return false
    }
}

let storage = ImageStorage()
storage.saveImage(Data())
storage.deleteImage(Data())


//Question 2
//在 Playground 中创建Enum类型NetworkError，包含如下内容：
//String类型常量networkError，值为"NetworkError"
//String类型常量otherError，值为"OtherError"
//两个case connection和other
//只读String类型变量message
//其返回值为上述定义的定义常量
enum NetworkError {
    static let networkError = "NetworkError"
    static let otherError = "OtherError"
    
    case connection
    case other
    
    var message: String {
        switch self {
        case .connection:
            return NetworkError.networkError
        case .other:
            return NetworkError.otherError
        }
    }
}
let error = NetworkError.connection
print(error.message)  // 输出 "NetworkError"



//Question3
//在 Playground 中创建类RandomlmageGenerator，包含如下内容：
//String类型常量endpoint，值为"https://picsum.photos" 函数generateRandomlmage，接受如下参数，内容为空 o 一个Int类型的参数width
//    一个Int类型的参数height
//    一个仅接受Data输入类型的 Block
//    一个仅接受NetworkError输入类型的 Block
//接受一个Int类型参数的构造函数，该参数的默认值是0
class RandomImageGenerator{
    let endpoint = "https://picsum.phtots"
    func generateRandomImage(width: Int, height: Int, success: ((Data) -> Void)?, failure: ((NetworkError) -> Void)?) {
           // 在这里实现生成随机图片的逻辑
       }
    init(maxTries: Int = 0) {
        // 在这里初始化对象
        
        
    }
}
