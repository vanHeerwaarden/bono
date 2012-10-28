Strict

Private

Import bono.utils
Import sizeable

Public

Class Align Abstract
    Const TOP:Int = 0
    Const BOTTOM:Int = 1
    Const LEFT:Int = 2
    Const RIGHT:Int = 3
    Const CENTER:Int = 4

    Function AdjustHorizontal:Void(pos:Vector2D, object:Sizeable, mode:Int)
        Select mode
        Case LEFT
            ' Default alignment - nothing to do here
        Case RIGHT
            pos.x -= object.GetSize().x
        Case CENTER
            pos.x -= object.GetSize().x / 2
        Default
            Error("Invalid alignment mode (" + mode + ") given")
        End
    End

    Function AdjustVertical:Void(pos:Vector2D, object:Sizeable, mode:Int)
        Select mode
        Case TOP
            ' Default alignment - nothing to do here
        Case BOTTOM
            pos.y -= object.GetSize().y
        Case CENTER
            pos.y -= object.GetSize().y / 2
        Default
            Error("Invalid alignment mode (" + mode + ") given")
        End
    End
End
