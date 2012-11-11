Strict

Import configvaluenotfoundexception

Public

Class Config<T> Abstract
    Private

    Global store:StringMap<T> = New StringMap<T>()

    Public

    Function Get:T(key:String)
        If store.Contains(key) Then Return store.Get(key)
        Throw New ConfigValueNotFoundException()
    End

    Function Get:T(key:String, fallback:T)
        Try
            Return Get(key)
        Catch ex:ConfigValueNotFoundException
            ' Nothing special to do here ... simply return the given default
        End
        Return fallback
    End

    Function Keys:MapKeys<String,T>()
        Return store.Keys()
    End

    Function Set:Void(key:String, value:T)
        store.Set(key, value)
    End

    Function Clear:Void(key:String)
        store.Remove(key)
    End

    Function ClearAll:Void()
        store.Clear()
    End
End
