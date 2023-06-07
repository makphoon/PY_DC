<%@ Control Language="VB" AutoEventWireup="false" CodeFile="news.ascx.vb" Inherits="news" %>
<%@ Register assembly="DevExpress.Web.v22.2, Version=22.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<dx:ASPxGridView ID="gv_news" runat="server" AutoGenerateColumns="False" Width="100%" Theme="Office2010Blue">
    <SettingsPager PageSize="30" EnableAdaptivity="True" AlwaysShowPager="True" SEOFriendly="CrawlerOnly">
                                    <PageSizeItemSettings Items="30, 60, 90, 120" ShowAllItem="True" Visible="True">
                                    </PageSizeItemSettings>
                                </SettingsPager>
                                <SettingsEditing Mode="PopupEditForm">
                                </SettingsEditing>
                                <SettingsBehavior ConfirmDelete="True" />
                                <SettingsCommandButton>
                                    <NewButton ButtonType="Image" RenderMode="Image">
                                        <Image IconID="actions_add_32x32">
                                        </Image>
                                    </NewButton>
                                    <UpdateButton ButtonType="Image" RenderMode="Image">
                                        <Image IconID="actions_apply_32x32">
                                        </Image>
                                    </UpdateButton>
                                    <CancelButton ButtonType="Image" RenderMode="Image">
                                        <Image IconID="actions_cancel_32x32">
                                        </Image>
                                    </CancelButton>
                                    <EditButton ButtonType="Image" RenderMode="Image">
                                        <Image IconID="actions_apply_32x32">
                                        </Image>
                                    </EditButton>
                                    <DeleteButton ButtonType="Image" RenderMode="Image">
                                        <Image IconID="actions_trash_32x32">
                                        </Image>
                                    </DeleteButton>
                                </SettingsCommandButton>

<SettingsPopup>
<FilterControl AutoUpdatePosition="False"></FilterControl>
</SettingsPopup>
    <Columns>
        <dx:GridViewCommandColumn Caption="Action" ShowEditButton="True" VisibleIndex="3">
        </dx:GridViewCommandColumn>
        <dx:GridViewDataTextColumn Caption="ลำดับที่" VisibleIndex="0" Width="5%">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="รายการ" VisibleIndex="1" Width="90%">
        </dx:GridViewDataTextColumn>
    </Columns>
    <Styles>
        <Header Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle">
        </Header>
    </Styles>
</dx:ASPxGridView>

