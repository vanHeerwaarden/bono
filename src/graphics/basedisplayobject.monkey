Strict

Private

Import bono.src.utils
Import bono.src.kernel
Import color
Import colorable
Import positionable
Import sizeable

Public

Class BaseDisplayObject Implements Colorable, Positionable, Sizeable, AppObserver Abstract
    Private

    Field color:Color
    Field pos:Vector2D
    Field size:Vector2D
    Field center:Vector2D

    Public

    Method Collide:Bool(checkPos:Vector2D)
        If checkPos.x < GetPosition().x Or checkPos.x > GetPosition().x + GetSize().x Then Return False
        If checkPos.y < GetPosition().y Or checkPos.y > GetPosition().y + GetSize().y Then Return False
        Return True
    End

    ' --- AppObserver
    Method OnLoading:Void()
    End

    Method OnUpdate:Void(deltatimer:DeltaTimer)
    End

    Method OnRender:Void()
    End

    Method OnResume:Void()
    End

    Method OnSuspend:Void()
    End

    ' --- Colorable
    Method SetColor:Void(newColor:Color)
        color = newColor
    End

    Method GetColor:Color()
        If Not color Then color = New Color()
        Return color
    End

    ' --- Positionable
    Method GetPosition:Vector2D()
        If pos = Null Then pos = New Vector2D(0, 0)
        Return pos
    End

    Method SetPosition:Void(newPos:Vector2D)
        pos = newPos
    End

    ' --- Sizeable
    Method GetSize:Vector2D()
        If size = Null Then Error("Size not set yet.")
        Return size
    End

    Method SetSize:Void(newSize:Vector2D)
        size = newSize
        center = newSize.Copy().Div(2)
    End

    Method GetCenter:Vector2D()
        If center = Null Then Error("No size set and center therefore unset.")
        Return center
    End
End