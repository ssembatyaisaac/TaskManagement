<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Notification.aspx.cs" Inherits="TaskManagement.Notification" %>


<%@ Import Namespace="System.Threading" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--Search:&nbsp;&nbsp;--%>
    <div class="col-lg-12 col-sm-12">
        <div style="line-height: 30px; margin-left: 0px; width: 100%; color: White; padding: 1%; overflow-y: scroll; overflow-x: hidden">
            <div class="row" style="border-color: blue; padding: 4px; line-height: 30px; margin-left: 0px; color: grey;">
                <div class="col-lg-10">
                    <div class="row">
                        <div class="col-lg-2">
                            <label>
                                Ticket No
                            </label>
                            <asp:TextBox ID="txt_ticketNo" runat="server" CssClass="form-control" placeholder="Ticket No." />
                        </div>
                        <div class="col-lg-2">
                            <label>
                                Staff</label>
                            <asp:DropDownList runat="server" ID="ddl_techStaff" CssClass="form-control">
                            </asp:DropDownList>
                        </div>
                        <div class="col-lg-2">
                            <label>
                                Status</label>
                            <asp:DropDownList runat="server" ID="ddl_status" CssClass="form-control">
                            </asp:DropDownList>
                        </div>
                        <div class="col-lg-2">
                            <label>
                                Clients</label>
                            <%--<asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Enter text" />--%>
                            <asp:DropDownList runat="server" ID="ddl_client" CssClass="form-control">
                            </asp:DropDownList>
                        </div>
                        <div class="col-lg-2">
                            <label>
                                Start Date</label>
                            <asp:TextBox ID="txt_startdatae" runat="server" CssClass="form-control" placeholder="Start Date" />
                        </div>
                        <div class="col-lg-2">
                            <label>
                                End Date</label>
                            <asp:TextBox ID="txt_enddate" runat="server" CssClass="form-control" placeholder="End Date" />
                        </div>
                    </div>
                </div>
                <div class="col-lg-2">
                    <label>
                        Search</label><br />
                    <asp:Button runat="server" CssClass="btn btn-primary" ID="btnSubmit" Text="Search"
                        OnClick="btnSearch_Click" />
                </div>
            </div>

            <div class="row" style="margin-left: 3%; color: black">
            </div>


            <div class="row" style="width: 80%; min-width: 20%; margin-left: 5%; margin-right: 10%;" runat="server" id="div_reportDiv">
                <div class="row">
                    <center>
                        <label style="color:black; font-size:large; align-content:center">
                                Generate Report
                        </label>
                        </center>
                </div>
                <div class="row">
                    <div class="col-sm-2 col-xs-2">
                    </div>

                    <div class=" col-sm-6 col-xs-6" style="padding: 2%; margin: 0%">
                        <asp:DropDownList runat="server" ID="ddl_reportGen" CssClass="form-control" Width="60%">
                            <asp:ListItem Value="Pdf">Pdf</asp:ListItem>
                            <asp:ListItem Value="Excel">Excel</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-sm-4 col-xs-4" style="padding: 2%">
                        <%-- <label style="margin-top: 12px;">
                            </label>--%>
                        <asp:Button runat="server" CssClass="btn btn-primary" ID="Button1" Text="Generate Report"
                            OnClick="btngenerateReport_Click" />
                    </div>
                </div>
            </div>

            <div class="row" style="width: 100%; padding: 2%">
                <div class="col-lg-12 ">

                    <div class="table-responsive">
                         <asp:GridView ID="dataGridResults" runat="server" AutoGenerateColumns="false" Width="100%"
                            DataKeyNames="TicketNumber" AllowPaging="true" PageSize="40" Font-Size="13px" ForeColor="Black"
                            GridLines="Horizontal" CssClass="Table " AlternatingRowStyle-CssClass="alt" HorizontalAlign="Center"
                            PagerStyle-CssClass="pgr" Style="width: 100%;" OnPageIndexChanging="dataGridResults_PageIndexChanging" OnRowCommand="dataGridResults_RowCommand" OnRowDataBound="GridView1_RowDataBound">
                            <FooterStyle BackColor="InactiveCaption" Font-Bold="False" ForeColor="White" CssClass="csspager" />
                            <PagerStyle BackColor="#A2cad2" ForeColor="White" HorizontalAlign="Center" Font-Bold="False"
                                Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False"  />
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <HeaderStyle CssClass="grid-header" HorizontalAlign="Center" Font-Size="108%" />
                            <Columns>

                                <asp:BoundField DataField="Category" HeaderText="Ticket Category" HeaderStyle-CssClass=" hidden-sm hidden-xs" ItemStyle-CssClass="hidden-sm hidden-xs">
                                    <ItemStyle Width="12%" HorizontalAlign="Center" />
                                    <HeaderStyle Width="12%" HorizontalAlign="Center" />
                                </asp:BoundField>
                                <%--<asp:BoundField DataField="TicketSubject" HeaderText="Subject" HeaderStyle-CssClass=" hidden-sm hidden-xs" ItemStyle-CssClass="hidden-sm hidden-xs">
                                    <ItemStyle Width="12%" HorizontalAlign="Left" />
                                    <HeaderStyle Width="12%" HorizontalAlign="Center" />
                                </asp:BoundField>--%>
                                <asp:BoundField DataField="Status" HeaderText="Status" HeaderStyle-CssClass=" visible-lg visible-md hidden-xs" ItemStyle-CssClass="visible-lg visible-md hidden-xs">
                                    <ItemStyle Width="7%" HorizontalAlign="Left" />
                                    <HeaderStyle Width="7%" HorizontalAlign="Left" />
                                </asp:BoundField>

                                <asp:BoundField DataField="Priority" HeaderText="Priority " HeaderStyle-CssClass=" visible-lg visible-md visible-sm hidden-xs" ItemStyle-CssClass=" visible-lg visible-md visible-sm hidden-xs">
                                    <ItemStyle Width="7%" HorizontalAlign="Left" />
                                    <HeaderStyle Width="7%" HorizontalAlign="Left" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Vendor" HeaderText="Vendor" HeaderStyle-CssClass="visible-lg hidden-xs" ItemStyle-CssClass="visible-lg hidden-xs">
                                    <ItemStyle Width="10%" HorizontalAlign="Left" />
                                    <HeaderStyle Width="10%" HorizontalAlign="Left" />
                                </asp:BoundField>
                                <asp:BoundField DataField="FullName" HeaderText="Assigned To" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg">
                                    <ItemStyle Width="13%" />
                                    <HeaderStyle Width="13%" />
                                </asp:BoundField>

                                <asp:BoundField DataField="Duration" HeaderText="Duration" HeaderStyle-CssClass="visible-lg hidden-sm hidden-xs" ItemStyle-CssClass="visible-lg">
                                    <ItemStyle Width="8%" HorizontalAlign="Center" />
                                    <HeaderStyle Width="8%" />
                                </asp:BoundField>
                                <asp:BoundField DataField="DurationUnit" HeaderText="Unit" HeaderStyle-CssClass="visible-lg hidden-sm hidden-xs" ItemStyle-CssClass="visible-lg">
                                    <ItemStyle Width="6%" HorizontalAlign="Left" />
                                    <HeaderStyle Width="6%" />
                                </asp:BoundField>
                                <asp:BoundField DataField="DueDateTime" HeaderText="Due Date" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg">
                                    <ItemStyle Width="10%" HorizontalAlign="Left" />
                                    <HeaderStyle Width="10%" />
                                </asp:BoundField>
                                <asp:BoundField DataField="CreatedBy" HeaderText="Assigned By" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg">
                                    <ItemStyle Width="10%" HorizontalAlign="Left" />
                                    <HeaderStyle Width="10%" />
                                </asp:BoundField>
                      <%--            <asp:BoundField DataField="ConfirmationMessage" HeaderText="Closing Remarks" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg">
                                    <ItemStyle Width="10%" HorizontalAlign="Left" />
                                    <HeaderStyle Width="10%" />
                                </asp:BoundField>
                                  <asp:BoundField DataField="ConfirmationDate" HeaderText="Closing Date" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg">
                                    <ItemStyle Width="10%" HorizontalAlign="Left" />
                                    <HeaderStyle Width="10%" />
                                </asp:BoundField>--%>
                             
                                <asp:ButtonField CommandName="btn_ack"
                                    Text="Acknowledge">
                                    <ItemStyle Width="10%" HorizontalAlign="Center" />
                                    <HeaderStyle Width="10%" HorizontalAlign="Center" />
                                </asp:ButtonField>
                                <asp:ButtonField CommandName="viewTicket"
                                    Text="viewTicket" >
                                    <ItemStyle Width="10%" />
                                    <HeaderStyle Width="10%" />
                                </asp:ButtonField>
                                
                      
                            </Columns>
                            <HeaderStyle BackColor="#035fc6" Font-Bold="True" ForeColor="white" Font-Italic="False"
                                Font-Overline="False" Font-Strikeout="False" Font-Underline="False" Height="30px" />
                        </asp:GridView>
                    </div>
                </div>

            </div>
        </div>


    </div>
    <script type="text/javascript">
        $(function () {
            $('#<%=txt_startdatae.ClientID%>').datepicker({ dateFormat: 'yy-mm-dd' });

        });
    </script>
    <script type="text/javascript">
        $(function () {
            $('#<%=txt_enddate.ClientID%>').datepicker({ dateFormat: 'yy-mm-dd' });

        });
    </script>

</asp:Content>
