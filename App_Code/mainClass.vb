Imports System.Data
Imports Microsoft.VisualBasic
Imports System.Data.SqlClient

Public Class mainClass
    Public Shared connDB As String = System.Configuration.ConfigurationManager.ConnectionStrings("DBConnection").ConnectionString
    Public Shared Function login(uname As String, pass As String) As DataTable
        Dim dt As New DataTable
        Dim connDB As New SqlConnection(mainClass.connDB)
        Dim cmd As New SqlCommand("sys_login ", connDB)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.AddWithValue("@uname", uname)
        cmd.Parameters.AddWithValue("@pass", pass)
        cmd.CommandTimeout = 60
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(dt)
        Return dt
    End Function
    Public Shared Function chk_dbnull(val As Object) As Object
        Dim r_val As Object
        If IsDBNull(val) = True Then
            r_val = "-"
        Else
            r_val = val
        End If
        Return r_val
    End Function
    Public Shared Function get_gender() As DataTable
        Dim dt As New DataTable
        Dim connDB As New SqlConnection(mainClass.connDB)
        Dim cmd As New SqlCommand("Gender_Select ", connDB)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandTimeout = 60
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(dt)
        Return dt
    End Function

    Public Shared Function get_State() As DataTable
        Dim dt As New DataTable
        Dim connDB As New SqlConnection(mainClass.connDB)
        Dim cmd As New SqlCommand("State_Select ", connDB)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandTimeout = 60
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(dt)
        Return dt
    End Function
    Public Shared Function get_Country() As DataTable
        Dim dt As New DataTable
        Dim connDB As New SqlConnection(mainClass.connDB)
        Dim cmd As New SqlCommand("Country_Select ", connDB)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandTimeout = 60
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(dt)
        Return dt
    End Function
    Public Shared Function get_City(country_code As Integer) As DataTable
        Dim dt As New DataTable
        Dim connDB As New SqlConnection(mainClass.connDB)
        Dim cmd As New SqlCommand("City_Select ", connDB)
        cmd.Parameters.AddWithValue("@country_code", country_code)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandTimeout = 60
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(dt)
        Return dt
    End Function
    Public Shared Function get_District(city_code As Integer) As DataTable
        Dim dt As New DataTable
        Dim connDB As New SqlConnection(mainClass.connDB)
        Dim cmd As New SqlCommand("District_Select ", connDB)
        cmd.Parameters.AddWithValue("@city_code", city_code)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandTimeout = 60
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(dt)
        Return dt
    End Function
    Public Shared Function get_Subdistrict(Dis_code As Integer) As DataTable
        Dim dt As New DataTable
        Dim connDB As New SqlConnection(mainClass.connDB)
        Dim cmd As New SqlCommand("SubDis_Select", connDB)
        cmd.Parameters.AddWithValue("@dis_code", Dis_code)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandTimeout = 60
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(dt)
        Return dt
    End Function

    Public Shared Function get_BU(com_code As String) As DataTable
        Dim dt As New DataTable
        Dim connDB As New SqlConnection(mainClass.connDB)
        Dim cmd As New SqlCommand("BU_Select", connDB)
        cmd.Parameters.AddWithValue("@com_code", com_code)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandTimeout = 60
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(dt)
        Return dt
    End Function
    Public Shared Function get_Division(bu_code As String) As DataTable
        Dim dt As New DataTable
        Dim connDB As New SqlConnection(mainClass.connDB)
        Dim cmd As New SqlCommand("Division_Select", connDB)
        cmd.Parameters.AddWithValue("@bu_code", bu_code)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandTimeout = 60
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(dt)
        Return dt
    End Function
    Public Shared Function get_EmpType() As DataTable
        Dim dt As New DataTable
        Dim connDB As New SqlConnection(mainClass.connDB)
        Dim cmd As New SqlCommand("EmployType_Select", connDB)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandTimeout = 60
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(dt)
        Return dt
    End Function
    Public Shared Function get_EmpStatus() As DataTable
        Dim dt As New DataTable
        Dim connDB As New SqlConnection(mainClass.connDB)
        Dim cmd As New SqlCommand("EmployStatus_Select", connDB)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandTimeout = 60
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(dt)
        Return dt
    End Function
    Public Shared Function get_Hiring() As DataTable
        Dim dt As New DataTable
        Dim connDB As New SqlConnection(mainClass.connDB)
        Dim cmd As New SqlCommand("Hiring_Select", connDB)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandTimeout = 60
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(dt)
        Return dt
    End Function

    Public Shared Function get_Welfare() As DataTable
        Dim dt As New DataTable
        Dim connDB As New SqlConnection(mainClass.connDB)
        Dim cmd As New SqlCommand("WelfareGroup_Select", connDB)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandTimeout = 60
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(dt)
        Return dt
    End Function
    Public Shared Function cal_WorkAge(begin_date As Object, end_date As Object) As Object
        Dim workage As String
        Dim y, m, d As Integer

        Dim monthDay As Integer() = New Integer(11) {31, -1, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31}
        Dim carryFlag As Integer = 0

        If Day(CDate(begin_date)) > Day(CDate(end_date)) Then
            carryFlag = monthDay(Month(CDate(begin_date)) - 1)
        End If

        If carryFlag = -1 Then
            If CheckedLeapYear(CDate(begin_date)) = True Then
                carryFlag = 29
            Else
                carryFlag = 28
            End If
        End If
        '----------- Day Check------------------
        If carryFlag <> 0 Then
            d = Day(CDate(end_date)) + carryFlag - Day(CDate(begin_date))
            carryFlag = 1
        Else
            d = Day(end_date) - Day(CDate(begin_date))
        End If

        '--------Month Check------------------------
        If (Month(CDate(begin_date)) + carryFlag) > Month(CDate(end_date)) Then
            m = (Month(CDate(end_date)) + 12) - (Month(CDate(begin_date)) + carryFlag)
            carryFlag = 1
        Else
            m = Month(CDate(end_date)) - Month(CDate(begin_date))
            carryFlag = 0
        End If
        '--------------Year------------------------
        y = Year(CDate(end_date)) - (Year(CDate(begin_date)) + carryFlag)

        workage = y & " ปี " & m & " เดือน " & d & " วัน"
        Return workage
    End Function

    Public Shared Function CheckedLeapYear(checkedDate As DateTime) As Boolean
        Dim myYear As Integer = checkedDate.Year
        Return (((myYear Mod 4) = 0) AndAlso ((myYear Mod 100) <> 0) OrElse ((myYear Mod 400) = 0))
    End Function
End Class
