<%@ Control Language="VB" AutoEventWireup="false" CodeFile="personalinfo.ascx.vb" Inherits="personalinfo" %>
<%@ Register assembly="DevExpress.Web.v22.2, Version=22.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.Bootstrap.v22.2, Version=22.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.Bootstrap" tagprefix="dx" %>

<div class="container-fluid">
    <div class="row justify-content-md-center">
        <div class="col" style="text-align:center">
            <asp:Image ID="emp_pic" runat="server" Width="150px" Height="150px" />
        </div>
        <div class="col">
            <dx:BootstrapTextBox ID="emp_code" runat="server" Caption="รหัสพนักงาน" Width="200px" ReadOnly="True">
                <CssClasses Caption="txt_caption" />
            </dx:BootstrapTextBox>
        </div>
        <div class="col">
            <dx:BootstrapTextBox ID="id_card" runat="server" Caption="เลขบัตรประจำตัวประชาชน" Width="200px" ReadOnly="True">
                <CssClasses Caption="txt_caption" />
                <MaskSettings Mask="0-0000-00000-00-0" />
            </dx:BootstrapTextBox>
        </div>
        <div class="col">
            <dx:BootstrapTextBox ID="key_card" runat="server" Caption="รหัสบัตรพนักงาน" Width="200px" ReadOnly="True" NullText="-">
                <CssClasses Caption="txt_caption" />
            </dx:BootstrapTextBox>
        </div>
    </div> 
    <div class="row justify-content-md-center">
        <div class="col">
            <dx:BootstrapTextBox ID="txt_name" runat="server" Caption="ชื่อ" Width="200px" ReadOnly="True" NullText="-">
                <CssClasses Caption="txt_caption" />
            </dx:BootstrapTextBox>
        </div>
        <div class="col">
            <dx:BootstrapTextBox ID="txt_surname" runat="server" Caption="นามสกุล" Width="200px" ReadOnly="True" NullText="-">
                <CssClasses Caption="txt_caption" />
            </dx:BootstrapTextBox>
        </div>
        <div class="col">
            <dx:BootstrapTextBox ID="txt_nickname" runat="server" Caption="ชื่อเล่น" Width="200px" ReadOnly="True" NullText="-">
                <CssClasses Caption="txt_caption" />
            </dx:BootstrapTextBox>
        </div>
        <div class="col">
            <dx:BootstrapComboBox ID="sel_sex" runat="server" Caption="เพศ" ReadOnly="True" Width="200px" EnableCallbackMode="True" TextField="description" ValueField="gender_code">
                <CssClasses Caption="txt_caption" />
            </dx:BootstrapComboBox>
        </div>
    </div>
    <div class="row justify-content-md-center">
            <div class="col">
                <dx:BootstrapTextBox ID="txt_name_eng" runat="server" Caption="Name" Width="200px" ReadOnly="True" NullText="-">
                    <CssClasses Caption="txt_caption" />
                </dx:BootstrapTextBox>
            </div>
            <div class="col">
                <dx:BootstrapTextBox ID="txt_surname_eng" runat="server" Caption="Lastname" Width="200px" ReadOnly="True" NullText="-">
                    <CssClasses Caption="txt_caption" />
                </dx:BootstrapTextBox>
            </div>
            <div class="col">
                <dx:BootstrapTextBox ID="txt_shortname" runat="server" Caption="ชื่อย่อ" Width="200px" ReadOnly="True" NullText="-">
                    <CssClasses Caption="txt_caption" />
                </dx:BootstrapTextBox>
            </div>
            <div class="col">
            <dx:BootstrapComboBox ID="sel_state" runat="server" Caption="สถานะ" ReadOnly="True" Width="200px" EnableCallbackMode="True" TextField="description" ValueField="state_code">
                <CssClasses Caption="txt_caption" />
            </dx:BootstrapComboBox>
            </div>
        </div>
    <div class="row justify-content-md-center">
        <div class="col">
            <dx:BootstrapDateEdit ID="txt_birthday" runat="server" Caption="วันเกิด" Width="200px" ReadOnly="True" NullText="-" DisplayFormatString="dd-MMMM-yyyy">
                <CssClasses Caption="txt_caption" />
            </dx:BootstrapDateEdit>
        </div>
        <div class="col">
            <dx:BootstrapTextBox ID="txt_age" runat="server" Caption="อายุ" Width="200px" ReadOnly="True" NullText="-">
                <CssClasses Caption="txt_caption" />
            </dx:BootstrapTextBox>
        </div>
        <div class="col">
            <dx:BootstrapTextBox ID="txt_tel" runat="server" Caption="เบอร์โทร" Width="200px" ReadOnly="True" NullText="-" DisplayFormatString="000-0000000">
                <CssClasses Caption="txt_caption" />
            </dx:BootstrapTextBox>
        </div>
                <div class="col">
            <dx:BootstrapTextBox ID="txt_car" runat="server" Caption="ทะเบียนรถ" Width="200px" ReadOnly="True" NullText="-">
                <CssClasses Caption="txt_caption" />
            </dx:BootstrapTextBox>
        </div>
    </div>
</div>
<hr />
<div class="contain card shadow mb-4">
    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
        <span class="m-0 font-weight-bold text-primary">ที่อยู่ตามภูมิลำเนา</span>
    </div>
    <div class="card-body">
        <div class="row justify-content-md-center">
            <div class="col">
                <dx:BootstrapTextBox ID="hous_number" runat="server" Caption="บ้านเลขที่" Width="200px" ReadOnly="True" NullText="-">
                    <CssClasses Caption="txt_caption" />
                </dx:BootstrapTextBox>
            </div>
            <div class="col">
                <dx:BootstrapTextBox ID="building" runat="server" Caption="อาคาร" Width="200px" ReadOnly="True" NullText="-">
                    <CssClasses Caption="txt_caption" />
                </dx:BootstrapTextBox>
            </div>
            <div class="col">
                <dx:BootstrapTextBox ID="village" runat="server" Caption="หมู่บ้าน" Width="200px" ReadOnly="True" NullText="-">
                    <CssClasses Caption="txt_caption" />
                </dx:BootstrapTextBox>
            </div>
            <div class="col">
                <dx:BootstrapTextBox ID="road" runat="server" Caption="ถนน" Width="200px" ReadOnly="True" NullText="-">
                    <CssClasses Caption="txt_caption" />
                </dx:BootstrapTextBox>
            </div>
        </div>
        <div class="row justify-content-md-center">
           <div class="col">
            <dx:BootstrapComboBox ID="sel_country" runat="server" Caption="ประเทศ" ReadOnly="True" Width="200px" EnableCallbackMode="True" TextField="name" ValueField="country_code" AutoPostBack="True" CallbackPageSize="10000">
                <CssClasses Caption="txt_caption" />
            </dx:BootstrapComboBox>
            </div>
           <div class="col">
            <dx:BootstrapComboBox ID="sel_province" runat="server" Caption="จังหวัด" ReadOnly="True" Width="200px" EnableCallbackMode="True" TextField="name" ValueField="city_code" AutoPostBack="True" CallbackPageSize="10000">
                <CssClasses Caption="txt_caption" />
            </dx:BootstrapComboBox>
            </div>
           <div class="col">
            <dx:BootstrapComboBox ID="sel_ampure" runat="server" Caption="อำเภอ" ReadOnly="True" Width="200px" EnableCallbackMode="True" TextField="name" ValueField="dis_code" AutoPostBack="True" CallbackPageSize="10000">
                <CssClasses Caption="txt_caption" />
            </dx:BootstrapComboBox>
            </div>
        <div class="col">
            <dx:BootstrapComboBox ID="sel_tambon" runat="server" Caption="ตำบล" ReadOnly="True" Width="200px" EnableCallbackMode="True" TextField="name" ValueField="sub_dis_code" AutoPostBack="True" CallbackPageSize="10000">
                <CssClasses Caption="txt_caption" />
            </dx:BootstrapComboBox>
            </div>
        </div>
        <div class="row justify-content-md-center">
            <div class="col">
                <dx:BootstrapTextBox ID="txt_postcode" runat="server" Caption="รหัสไปรษณีย์" Width="200px" ReadOnly="True" NullText="-">
                    <CssClasses Caption="txt_caption" />
                </dx:BootstrapTextBox>
            </div>
        </div>
    </div>
</div>
<div class="contain card shadow mb-4">
    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
        <span class="m-0 font-weight-bold text-primary">ที่อยู่ปัจจุบัน</span>
    </div>
    <div class="card-body">
        <div class="row justify-content-md-center">
            <div class="col">
                <dx:BootstrapTextBox ID="hous_number2" runat="server" Caption="บ้านเลขที่" Width="200px" ReadOnly="True" NullText="-">
                    <CssClasses Caption="txt_caption" />
                </dx:BootstrapTextBox>
            </div>
            <div class="col">
                <dx:BootstrapTextBox ID="building2" runat="server" Caption="อาคาร" Width="200px" ReadOnly="True" NullText="-">
                    <CssClasses Caption="txt_caption" />
                </dx:BootstrapTextBox>
            </div>
            <div class="col">
                <dx:BootstrapTextBox ID="village2" runat="server" Caption="หมู่บ้าน" Width="200px" ReadOnly="True" NullText="-">
                    <CssClasses Caption="txt_caption" />
                </dx:BootstrapTextBox>
            </div>
            <div class="col">
                <dx:BootstrapTextBox ID="road2" runat="server" Caption="ถนน" Width="200px" ReadOnly="True" NullText="-">
                    <CssClasses Caption="txt_caption" />
                </dx:BootstrapTextBox>
            </div>
        </div>
        <div class="row justify-content-md-center">
           <div class="col">
            <dx:BootstrapComboBox ID="sel_country2" runat="server" Caption="ประเทศ" ReadOnly="True" Width="200px" EnableCallbackMode="True" TextField="name" ValueField="country_code" AutoPostBack="True" CallbackPageSize="10000">
                <CssClasses Caption="txt_caption" />
            </dx:BootstrapComboBox>
            </div>
           <div class="col">
            <dx:BootstrapComboBox ID="sel_province2" runat="server" Caption="จังหวัด" ReadOnly="True" Width="200px" EnableCallbackMode="True" TextField="name" ValueField="city_code" AutoPostBack="True" CallbackPageSize="10000">
                <CssClasses Caption="txt_caption" />
            </dx:BootstrapComboBox>
            </div>
           <div class="col">
            <dx:BootstrapComboBox ID="sel_ampure2" runat="server" Caption="อำเภอ" ReadOnly="True" Width="200px" EnableCallbackMode="True" TextField="name" ValueField="dis_code" AutoPostBack="True" CallbackPageSize="10000">
                <CssClasses Caption="txt_caption" />
            </dx:BootstrapComboBox>
            </div>
        <div class="col">
            <dx:BootstrapComboBox ID="sel_tambon2" runat="server" Caption="ตำบล" ReadOnly="True" Width="200px" EnableCallbackMode="True" TextField="name" ValueField="sub_dis_code" AutoPostBack="True" CallbackPageSize="10000">
                <CssClasses Caption="txt_caption" />
            </dx:BootstrapComboBox>
            </div>
        </div>
        <div class="row justify-content-md-center">
            <div class="col">
                <dx:BootstrapTextBox ID="txt_postcode2" runat="server" Caption="รหัสไปรษณีย์" Width="200px" ReadOnly="True" NullText="-">
                    <CssClasses Caption="txt_caption" />
                </dx:BootstrapTextBox>
            </div>
        </div>
    </div>
</div>
<div class="contain card shadow mb-4">
    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
        <span class="m-0 font-weight-bold text-primary">เกี่ยวกับการทำงาน</span>
    </div>
    <div class="card-body">
        <div class="row justify-content-md-center">
           <div class="col">
            <dx:BootstrapComboBox ID="sel_bu" runat="server" Caption="สังกัด" ReadOnly="True" Width="200px" CallbackPageSize="10000" TextField="name" ValueField="bu_code" ValueType="System.String">
                <CssClasses Caption="txt_caption" />
            </dx:BootstrapComboBox>
            </div>
           <div class="col">
            <dx:BootstrapComboBox ID="sel_div" runat="server" Caption="แผนก" ReadOnly="True" Width="200px" CallbackPageSize="10000" TextField="F_Name" ValueField="division_code" ValueType="System.String">
                <CssClasses Caption="txt_caption" />
            </dx:BootstrapComboBox>
            </div>
            <div class="col">
                <dx:BootstrapTextBox ID="txt_position" runat="server" Caption="ตำแหน่ง" Width="200px" ReadOnly="True" NullText="-">
                    <CssClasses Caption="txt_caption" />
                </dx:BootstrapTextBox>
            </div>
           <div class="col">
            <dx:BootstrapComboBox ID="sel_Emptype" runat="server" Caption="ประเภทพนักงาน" ReadOnly="True" Width="200px" CallbackPageSize="10000" TextField="description" ValueField="type_code"  ValueType="System.Int32">
                <CssClasses Caption="txt_caption" />
            </dx:BootstrapComboBox>
            </div>
        </div>
        <div class="row justify-content-md-center">
             <div class="col">
                <dx:BootstrapComboBox ID="sel_hiring" runat="server" Textfield="description" ValueField="hiring_code" ValueType="System.Int32" Caption="ประเภทการจ้าง" ReadOnly="True" Width="200px" CallbackPageSize="10000">
                    <CssClasses Caption="txt_caption" />
                </dx:BootstrapComboBox>
            </div>
            <div class="col">
            <dx:BootstrapDateEdit ID="hiring_start" runat="server" Caption="วันที่เริ่มงาน" Width="200px" ReadOnly="True" NullText="-" DisplayFormatString="dd-MMMM-yyyy">
                <CssClasses Caption="txt_caption" />
            </dx:BootstrapDateEdit>
            </div>
            <div class="col">
            <dx:BootstrapDateEdit ID="permanent_date" runat="server" Caption="สิ้นสุดวันที่ทดลองงาน" Width="200px" ReadOnly="True" NullText="-" DisplayFormatString="dd-MMMM-yyyy">
                <CssClasses Caption="txt_caption" />
            </dx:BootstrapDateEdit>
            </div>
             <div class="col">
            <dx:BootstrapDateEdit ID="retire_date" runat="server" Caption="วันที่เกษียณอายุงาน" Width="200px" ReadOnly="True" NullText="-" DisplayFormatString="dd-MMMM-yyyy">
                <CssClasses Caption="txt_caption" />
            </dx:BootstrapDateEdit>
            </div>
        </div>
        <div class="row justify-content-md-center">
            <div class="col">
                <dx:BootstrapDateEdit ID="finish_date" runat="server" Caption="วันที่สิ้นสุดสัญญา/ลาออก" Width="200px" ReadOnly="True" NullText="-" DisplayFormatString="dd-MMMM-yyyy">
                    <CssClasses Caption="txt_caption" />
                </dx:BootstrapDateEdit>
            </div>
            <div class="col">
                <dx:BootstrapTextBox ID="txt_hiringAge" runat="server" Caption="อายุงาน" Width="200px" ReadOnly="True">
                    <CssClasses Caption="txt_caption" />
                </dx:BootstrapTextBox>
            </div>
            <div class="col">
                <dx:BootstrapComboBox ID="sel_welfare" runat="server" TextField="group_name" ValueField="group_code" ValueType="System.String" Caption="กลุ่มสวัสดิการ" ReadOnly="True" Width="200px" CallbackPageSize="10000">
                    <CssClasses Caption="txt_caption" />
                </dx:BootstrapComboBox>
            </div>
            <div class="col">
                <dx:BootstrapComboBox ID="emp_status" runat="server" TextField="description" ValueField="status_code" ValueType="System.String" Caption="สถานะการทำงาน" ReadOnly="True" Width="200px" CallbackPageSize="10000">
                    <CssClasses Caption="txt_caption" />
                </dx:BootstrapComboBox>
            </div>
        </div>
        <div class="row justify-content-md-center">
            <div class="col">
                <dx:BootstrapTextBox ID="txt_bankAcc" runat="server" Caption="เลขบัญชีธนาคาร" Width="200px" ReadOnly="True">
                    <CssClasses Caption="txt_caption" />
                </dx:BootstrapTextBox>
            </div>
            <div class="col">
                <dx:BootstrapTextBox ID="txt_bank_brance" runat="server" Caption="สาขาธนาคาร" Width="200px" ReadOnly="True">
                    <CssClasses Caption="txt_caption" />
                </dx:BootstrapTextBox>
            </div>
        </div>

    </div>
</div>