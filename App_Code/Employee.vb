Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient
Public Class Employee
    Public Shared Function get_EmpData(emp_id As String) As DataTable
        Dim dt As New DataTable
        Dim connDB As New SqlConnection(mainClass.connDB)
        Dim cmd As New SqlCommand("EmpInfo_Select", connDB)
        cmd.Parameters.AddWithValue("@emp_id", emp_id)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandTimeout = 60
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(dt)
        Return dt
    End Function
    Public Shared Function get_Address(emp_id As String) As DataTable
        Dim dt As New DataTable
        Dim connDB As New SqlConnection(mainClass.connDB)
        Dim cmd As New SqlCommand("Address_Select", connDB)
        cmd.Parameters.AddWithValue("@emp_id", emp_id)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandTimeout = 60
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(dt)
        Return dt
    End Function

End Class
