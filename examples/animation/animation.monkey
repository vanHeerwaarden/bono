Strict

Import mojo.graphics
Import bono

Function Main:Int()
    Local director:Director = New Director(640, 480)
    Local pool:FanOut = New FanOut()

    Local font:Font = New Font("angel_verdana")
    font.text = "Hello World"

    Local fontAnim:Animation = New Animation(0.5, 3.5, 5000)
    fontAnim.effect = New FaderScale()
    fontAnim.transition = New TransitionInBounce()
    fontAnim.Add(font)

    Local logo:Sprite = New Sprite("monkey64.png")
    logo.pos = director.size.Copy().Sub(logo.size)

    Local logoAnim:Animation = New Animation(0, 1, 5500)
    logoAnim.effect = New FaderAlpha()
    logoAnim.transition = New TransitionInOutQuad()
    logoAnim.Add(logo)

    pool.Add(fontAnim)
    pool.Add(logoAnim)
    director.Run(pool)

    Return 0
End
