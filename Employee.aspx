<%@ Page Title="" Language="VB" MasterPageFile="~/Main.master" AutoEventWireup="false" CodeFile="Employee.aspx.vb" Inherits="Employee" %>

<%@ Register Assembly="DevExpress.Web.v22.2, Version=22.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.Bootstrap.v22.2, Version=22.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.Bootstrap" tagprefix="dx" %>
<%@ Register Src="~/personalinfo.ascx" TagPrefix="uc1" TagName="personalinfo" %>


<asp:Content ID="Content1" ContentPlaceHolderID="Content" Runat="Server">
    <form id="form1" runat="server">
    <div class="col">
        <div class="card shadow mb-4">
            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                <h6 class="m-0 font-weight-bold text-primary fas fa-user-tag"> สำหรับพนักงาน</h6>
            </div>
            <div class="card-body">
                <dx:BootstrapPageControl ID="tab_pg1" runat="server" ActiveTabIndex="0" Width="100%">
                    <CssClasses Tab="nav-item" />
                    <TabPages>
                        <dx:BootstrapTabPage Text="ข้อมูลส่วนตัว" TabIconCssClass="fas fa-solid fa-user">
                            <ContentCollection>
                                <dx:ContentControl runat="server">
                                    <uc1:personalinfo runat="server" ID="personalinfo" />
                                </dx:ContentControl>
                            </ContentCollection>
                        </dx:BootstrapTabPage>
                        <dx:BootstrapTabPage Text="ข้อมูลการศึกษา" TabIconCssClass="fas fa-user-graduate">
                            <ContentCollection>
                                <dx:ContentControl runat="server">
                                    yyyyyyyyyyyyyy
                                </dx:ContentControl>
                            </ContentCollection>
                        </dx:BootstrapTabPage>
                        <dx:BootstrapTabPage Text="ข้อมูลประสบการณ์ทำงาน" TabIconCssClass="fas fa-address-card">
                            <ContentCollection>
                                <dx:ContentControl runat="server">
                                    ttttttttttttttt
                                </dx:ContentControl>
                            </ContentCollection>
                        </dx:BootstrapTabPage>
                        <dx:BootstrapTabPage Text="ข้อมูลการฝึกอบรม" TabIconCssClass="fas fa-school">
                            <ContentCollection>
                                <dx:ContentControl runat="server">
                                    ggggggggggggggggggg
                                </dx:ContentControl>
                            </ContentCollection>
                        </dx:BootstrapTabPage>
                        <dx:BootstrapTabPage Text="ข้อมูลสวัสดิการประกันสังคม" TabIconCssClass="fas fa-notes-medical">
                            <ContentCollection>
                                <dx:ContentControl runat="server">
                                    bbbbbbbbbbbbbbbb
                                </dx:ContentControl>
                            </ContentCollection>
                        </dx:BootstrapTabPage>
                        <dx:BootstrapTabPage Text="ข้อมูลสวัสดิการกองทุนสำรองเลี้ยงชีพ" TabIconCssClass="fas fa-user-shield">
                            <ContentCollection>
                                <dx:ContentControl runat="server">
                                    cccccccccccccccc
                                </dx:ContentControl>
                            </ContentCollection>
                        </dx:BootstrapTabPage>
                        <dx:BootstrapTabPage Text="ข้อมูลสวัสดิการค่ารักษาพยาบาล" TabIconCssClass="fas fa-book-medical">
                            <ContentCollection>
                                <dx:ContentControl runat="server">
                                    zzzzzzzzzzzzzzzz
                                </dx:ContentControl>
                            </ContentCollection>
                        </dx:BootstrapTabPage>
                        <dx:BootstrapTabPage Text="ข้อมูลการลา" TabIconCssClass="fas fa-bed">
                            <ContentCollection>
                                <dx:ContentControl runat="server">
                                    vvvvvvvvvvvvvvvvv
                                </dx:ContentControl>
                            </ContentCollection>
                        </dx:BootstrapTabPage>
                    </TabPages>
                </dx:BootstrapPageControl>
            </div>
        </div>
    </div>
        </form>
</asp:Content>

