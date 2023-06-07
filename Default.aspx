<%@ Page Title="" Language="VB" MasterPageFile="~/Main.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v22.2, Version=22.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<%@ Register src="notify.ascx" tagname="notify" tagprefix="uc1" %>

<%@ Register src="news.ascx" tagname="news" tagprefix="uc2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">
    <form id="form1" runat="server">
        <div class="col-xl-12 col-lg-12">
            <div class="card shadow mb-4">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    <h6 class="m-0 font-weight-bold text-primary fas fa-bell"> ข้อมูลแจ้งเตือน</h6>
                </div>
                <div class="card-body">
                    <uc1:notify ID="notify1" runat="server" />
                </div>
            </div>
        </div>
        <div class="col-xl-12 col-lg-12">
            <div class="card shadow mb-4">
                <div
                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    
                    <h6 class="m-0 font-weight-bold text-primary fas fa-newspaper"> ข่าวสารบ้านเรา</h6>
                </div>
                <div class="card-body">
                    
                    <uc2:news ID="news1" runat="server" />
                    
                </div>
            </div>
        </div>
    </form>
</asp:Content>

