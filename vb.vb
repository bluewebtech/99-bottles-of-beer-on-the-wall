Class Bottles
    '''
    ''' The current bottle(s) on the wall.
    '''
    ''' @var {Integer}
    '''
    Private bottles As Integer

    '''
    ''' Check if there are any bottles siting on the wall.
    '''
    ''' @param {Integer} total
    ''' @return {Void}
    '''
    Public Sub setBottles(ByVal total As Integer)
        bottles = total
    End Sub

    '''
    ''' Check if there are any bottles siting on the wall.
    '''
    ''' @return {Boolean}
    '''
    Private Function hasBottles() As Boolean
        Return (bottles > 0)
    End Function

    '''
    ''' Get the pluralized string of the current bottle on the wall.
    '''
    ''' @param {Integer} bottle
    ''' @return {String}
    '''
    Private Function pluralize(bottle As Integer) As String
        Return ("bottle" + If((bottle > 1 or bottle = 0), "s", ""))
    End Function

    '''
    ''' Sing the song.
    '''
    ''' @return {Void}
    '''
    Public Sub sing()
        If hasBottles() Then
            For bottle as Integer = bottles to 1 step -1
                verse1(bottle)
                verse2(bottle)
                verse3()
                verse4(bottle)
            Next bottle
        Else
            Console.WriteLine("There are currently no bottles on the wall.")
        End If
    End Sub

    '''
    ''' Get the first verse of the song.
    '''
    ''' @param {Integer} bottle
    ''' @return {Void}
    '''
    Private Sub verse1(bottle As Integer)
        Console.WriteLine(CStr(bottle) + " " + pluralize(bottle) + " of beer on the wall")
    End Sub

    '''
    ''' Get the second verse of the song.
    '''
    ''' @param {Integer} bottle
    ''' @return {Void}
    '''
    Private Sub verse2(bottle As Integer)
        Console.WriteLine(CStr(bottle) + " " + pluralize(bottle) + " of beer")
    End Sub

    '''
    ''' Get the third verse of the song.
    '''
    ''' @return {Void}
    '''
    Private Sub verse3()
        Console.WriteLine("Take 1 down and pass it around")
    End Sub

    '''
    ''' Get the fourth verse of the song.
    '''
    ''' @param {Integer} bottle
    ''' @return {Void}
    '''
    Private Sub verse4(bottle As Integer)
        Console.WriteLine(CStr(bottle - 1) + " " + pluralize(bottle - 1) + " of beer on the wall" + vbCrLf)
    End Sub

    '''
    ''' The main method.
    '''
    ''' @param {String[]} args
    ''' @return {Void}
    '''
    Shared Sub Main()
        Dim bottles As Bottles = New Bottles()
        bottles.setBottles(99)
        bottles.sing()
    End Sub
End Class
