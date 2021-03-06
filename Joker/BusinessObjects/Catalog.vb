Imports System.Data.SqlClient

Public Class Catalog
    Public Shared Function GetDepartments() As SqlDataReader
        ' Create the connection object
        Dim connection As New SqlConnection(connectionString)
        ' Create and initialize the command object；调用下边的方法
        Dim command As New SqlCommand("GetDepartments", connection)
        command.CommandType = CommandType.StoredProcedure
        ' Open the connection
        connection.Open()
        ' Return a SqlDataReader to the calling function
        Return command.ExecuteReader(CommandBehavior.CloseConnection)
    End Function

    Private Shared ReadOnly Property connectionString() As String
        Get
            Return ConfigurationSettings.AppSettings("ConnectionString")
            '连接字符串
        End Get
    End Property
End Class
