Strict

Private

Import bono

Public

Class MathHelperTest Extends TestCase
    Method TestRoundUp:Void()
       AssertEquals(1, MathHelper.Round(0.6))
       AssertEquals(1, MathHelper.Round(0.7))
       AssertEquals(1, MathHelper.Round(0.8))
       AssertEquals(1, MathHelper.Round(0.9))
    End

    Method TestRoundDown:Void()
       AssertEquals(0, MathHelper.Round(0.4))
       AssertEquals(0, MathHelper.Round(0.3))
       AssertEquals(0, MathHelper.Round(0.2))
       AssertEquals(0, MathHelper.Round(0.1))
    End

    Method TestRoundAlreadyRounded:Void()
        AssertEquals(1, MathHelper.Round(1))
    End

    Method TestHextToInt:Void()
        AssertEquals(0, MathHelper.HexToInt("0"))
        AssertEquals(1, MathHelper.HexToInt("1"))
        AssertEquals(2, MathHelper.HexToInt("2"))
        AssertEquals(3, MathHelper.HexToInt("3"))
        AssertEquals(4, MathHelper.HexToInt("4"))
        AssertEquals(5, MathHelper.HexToInt("5"))
        AssertEquals(6, MathHelper.HexToInt("6"))
        AssertEquals(7, MathHelper.HexToInt("7"))
        AssertEquals(8, MathHelper.HexToInt("8"))
        AssertEquals(9, MathHelper.HexToInt("9"))
        AssertEquals(10, MathHelper.HexToInt("A"))
        AssertEquals(11, MathHelper.HexToInt("B"))
        AssertEquals(12, MathHelper.HexToInt("C"))
        AssertEquals(13, MathHelper.HexToInt("D"))
        AssertEquals(14, MathHelper.HexToInt("E"))
        AssertEquals(15, MathHelper.HexToInt("F"))
        AssertEquals(48879, MathHelper.HexToInt("BEEF"))
    End

    Method TestIntToHex:Void()
        AssertEquals("0", MathHelper.IntToHex(0))
        AssertEquals("1", MathHelper.IntToHex(1))
        AssertEquals("2", MathHelper.IntToHex(2))
        AssertEquals("3", MathHelper.IntToHex(3))
        AssertEquals("4", MathHelper.IntToHex(4))
        AssertEquals("5", MathHelper.IntToHex(5))
        AssertEquals("6", MathHelper.IntToHex(6))
        AssertEquals("7", MathHelper.IntToHex(7))
        AssertEquals("8", MathHelper.IntToHex(8))
        AssertEquals("9", MathHelper.IntToHex(9))
        AssertEquals("A", MathHelper.IntToHex(10))
        AssertEquals("B", MathHelper.IntToHex(11))
        AssertEquals("C", MathHelper.IntToHex(12))
        AssertEquals("D", MathHelper.IntToHex(13))
        AssertEquals("E", MathHelper.IntToHex(14))
        AssertEquals("F", MathHelper.IntToHex(15))
        AssertEquals("A2DE", MathHelper.IntToHex(41694))
    End
End