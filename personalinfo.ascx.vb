Imports System.Data
Partial Class personalinfo
    Inherits System.Web.UI.UserControl
    Dim tbl_Emp, tbl_gender, tbl_State, tbl_country, tbl_city, tbl_district, tbl_subdistrict, tbl_bu, tbl_depart, tbl_EmployType As DataTable
    Dim tbl_hiring, tbl_walfare, Tbl_Address, tbl_empStatus As DataTable
    Private Sub personalinfo_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            get_EmpInfo("000001")

            sel_sex.DataSource = tbl_gender
            sel_sex.DataBind()

            sel_country.DataSource = tbl_country
            sel_country.DataBind()

            sel_state.DataSource = tbl_State
            sel_state.DataBind()

            sel_province.DataSource = tbl_city
            sel_province.DataBind()

            sel_ampure.DataSource = tbl_district
            sel_ampure.DataBind()

            sel_tambon.DataSource = tbl_subdistrict
            sel_tambon.DataBind()

            sel_bu.DataSource = tbl_bu
            sel_bu.DataBind()

            sel_div.DataSource = tbl_depart
            sel_div.DataBind()

            sel_Emptype.DataSource = tbl_EmployType
            sel_Emptype.DataBind()

            sel_hiring.DataSource = tbl_hiring
            sel_hiring.DataBind()

            sel_welfare.DataSource = tbl_walfare
            sel_welfare.DataBind()

            If tbl_Emp.Rows.Count > 0 Then
                emp_pic.ImageUrl = "Pictures/" & tbl_Emp.Rows(0)("emp_id") & ".jpg"
                emp_code.Text = tbl_Emp.Rows(0)("emp_id")
                id_card.Text = tbl_Emp.Rows(0)("id_card_number")
                key_card.Text = IIf(IsDBNull(tbl_Emp.Rows(0)("keycard")), "-", tbl_Emp.Rows(0)("keycard"))
                txt_name.Text = tbl_Emp.Rows(0)("name")
                txt_surname.Text = tbl_Emp.Rows(0)("lname")
                txt_nickname.Text = tbl_Emp.Rows(0)("nickname")
                txt_shortname.Text = tbl_Emp.Rows(0)("initial")
                txt_name_eng.Text = tbl_Emp.Rows(0)("name_en")
                txt_surname_eng.Text = tbl_Emp.Rows(0)("lname_en")

                sel_sex.Text = tbl_Emp.Rows(0)("gender")
                sel_state.Text = tbl_Emp.Rows(0)("state")
                txt_birthday.Text = mainClass.chk_dbnull(tbl_Emp.Rows(0)("birthday"))
                txt_age.Text = mainClass.cal_WorkAge(tbl_Emp.Rows(0)("birthday"), Today())
                txt_tel.Text = mainClass.chk_dbnull(tbl_Emp.Rows(0)("tel"))
                txt_car.Text = mainClass.chk_dbnull(tbl_Emp.Rows(0)("plate"))

                '------ที่อยู่ตามทะเบียนบ้าน---------------
                If Tbl_Address.Rows.Count > 0 Then
                    Dim home_row As DataRow() = Tbl_Address.Select("type_code=1")
                    If home_row.Count > 0 Then
                        hous_number.Text = mainClass.chk_dbnull(home_row(0)("house_number"))
                        building.Text = mainClass.chk_dbnull(home_row(0)("building"))
                        road.Text = mainClass.chk_dbnull(home_row(0)("road"))
                        village.Text = mainClass.chk_dbnull(home_row(0)("village"))

                        Dim discode As Integer = home_row(0)("sub_dis_code")
                        sel_country.SelectedIndex = 0

                        Dim prov_row As DataRow() = tbl_city.Select("city_code=" & Left(discode, 2).ToString())
                        sel_province.Text = prov_row(0)("name")

                        Dim dis_row As DataRow() = tbl_district.Select("dis_code=" & Left(discode, 4).ToString())
                        sel_ampure.Text = dis_row(0)("name")

                        Dim sub_dis_name As DataRow() = tbl_subdistrict.Select("sub_dis_code=" & discode.ToString())
                        sel_tambon.Text = sub_dis_name(0)("name")

                        txt_postcode.Text = mainClass.chk_dbnull(home_row(0)("post_code"))
                    Else
                        hous_number.Text = ""
                        building.Text = ""
                        road.Text = ""
                        village.Text = ""
                        sel_country.SelectedIndex = -1
                        sel_province.Text = ""
                        sel_ampure.Text = ""
                        sel_tambon.Text = ""
                        txt_postcode.Text = ""
                    End If
                    '---------ที่อยู่ปัจจุบัน-----------------------------------------
                    Dim home_row2 As DataRow() = Tbl_Address.Select("type_code=2")
                    If home_row2.Count > 0 Then
                        hous_number2.Text = mainClass.chk_dbnull(home_row2(0)("house_number"))
                        building2.Text = mainClass.chk_dbnull(home_row2(0)("building"))
                        road2.Text = mainClass.chk_dbnull(home_row2(0)("road"))
                        village2.Text = mainClass.chk_dbnull(home_row2(0)("village"))

                        Dim discode As Integer = home_row2(0)("sub_dis_code")
                        sel_country2.SelectedIndex = 0

                        Dim prov_row As DataRow() = tbl_city.Select("city_code=" & Left(discode, 2).ToString())
                        sel_province2.Text = prov_row(0)("name")

                        Dim dis_row As DataRow() = tbl_district.Select("dis_code=" & Left(discode, 4).ToString())
                        sel_ampure2.Text = dis_row(0)("name")

                        Dim sub_dis_name As DataRow() = tbl_subdistrict.Select("sub_dis_code=" & discode.ToString())
                        sel_tambon2.Text = sub_dis_name(0)("name")

                        txt_postcode2.Text = mainClass.chk_dbnull(home_row2(0)("post_code"))
                    Else
                        hous_number2.Text = ""
                        building2.Text = ""
                        road2.Text = ""
                        village2.Text = ""
                        sel_country2.SelectedIndex = -1
                        sel_province2.Text = ""
                        sel_ampure2.Text = ""
                        sel_tambon2.Text = ""
                        txt_postcode2.Text = ""
                    End If

                Else
                    hous_number.Text = ""
                    building.Text = ""
                    road.Text = ""
                    village.Text = ""
                    sel_country.SelectedIndex = -1
                    sel_province.Text = ""
                    sel_ampure.Text = ""
                    sel_tambon.Text = ""
                    txt_postcode.Text = ""

                    hous_number2.Text = ""
                    building2.Text = ""
                    road2.Text = ""
                    village2.Text = ""
                    sel_country2.SelectedIndex = -1
                    sel_province2.Text = ""
                    sel_ampure2.Text = ""
                    sel_tambon2.Text = ""
                    txt_postcode2.Text = ""
                End If


                Dim emp_type As DataRow() = tbl_EmployType.Select("type_code=" & tbl_Emp.Rows(0)("Emp_Type").ToString())
                sel_Emptype.Text = emp_type(0)("description")

                Dim bu As DataRow() = tbl_bu.Select("bu_code='" & tbl_Emp.Rows(0)("BU").ToString() & "'")
                sel_bu.Text = bu(0)("name")
                Dim div As DataRow() = tbl_depart.Select("division_code='" & tbl_Emp.Rows(0)("Div_Code").ToString() & "'")
                sel_div.Text = div(0)("F_Name")

                Dim hr_row As DataRow() = tbl_hiring.Select("hiring_code=" & tbl_Emp.Rows(0)("hiring").ToString())
                sel_hiring.Text = hr_row(0)("description")

                Dim welfare_row As DataRow() = tbl_walfare.Select("group_code=" & tbl_Emp.Rows(0)("welfare_group_code").ToString())
                sel_welfare.Text = welfare_row(0)("group_name")

                txt_position.Text = tbl_Emp.Rows(0)("position")
                txt_bankAcc.Text = tbl_Emp.Rows(0)("bank_acc")
                txt_bank_brance.Text = tbl_Emp.Rows(0)("bank_brance")

                hiring_start.Text = mainClass.chk_dbnull(tbl_Emp.Rows(0)("start_date"))
                finish_date.Text = mainClass.chk_dbnull(tbl_Emp.Rows(0)("finish_date"))
                retire_date.Text = mainClass.chk_dbnull(tbl_Emp.Rows(0)("retire_date"))

                Dim end_date As Date
                If Not tbl_Emp.Rows(0)("retire_date").Equals(DBNull.Value) Then
                    end_date = tbl_Emp.Rows(0)("retire_date")
                Else
                    end_date = Today()
                End If

                txt_hiringAge.Text = mainClass.cal_WorkAge(tbl_Emp.Rows(0)("start_date"), end_date)


                Dim emp_st As DataRow() = tbl_empStatus.Select("status_code=" & tbl_Emp.Rows(0)("Emp_Status").ToString())
                emp_status.DataSource = tbl_empStatus
                emp_status.DataBind()
                emp_status.Text = emp_st(0)("description")
            End If
        End If
    End Sub
    Private Sub get_EmpInfo(em_code As String)
        tbl_Emp = Employee.get_EmpData(em_code)
        Tbl_Address = Employee.get_Address(em_code)
        tbl_gender = mainClass.get_gender()
        tbl_State = mainClass.get_State()
        tbl_country = mainClass.get_Country
        tbl_city = mainClass.get_City(0)
        tbl_district = mainClass.get_District(0)
        tbl_subdistrict = mainClass.get_Subdistrict(0)
        tbl_bu = mainClass.get_BU("PY")
        tbl_depart = mainClass.get_Division("")
        tbl_EmployType = mainClass.get_EmpType()
        tbl_hiring = mainClass.get_Hiring()
        tbl_walfare = mainClass.get_Welfare()
        tbl_empStatus = mainClass.get_EmpStatus()

    End Sub
End Class
