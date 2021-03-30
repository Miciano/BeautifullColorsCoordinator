enum RedFactory {
    static func makeRed() -> FinishController {
        RedViewController()
    }
    
    static func makeMagenta() -> FinishController {
        MagentaViewController()
    }
}
