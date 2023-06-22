<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewProjects.aspx.cs" Inherits="TaskManagement.ViewProjects" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--Search:&nbsp;&nbsp;--%>
    <div  style=" line-height: 30px; margin-left: 0px;  width: 100%; border-radius: 5px; color: White; padding:1%; overflow-y:scroll;overflow-x:hidden">

       <div class="row " style="border-color:blue; padding:4px;line-height: 30px; margin-left: 0px;  color:grey;">
            <div class="col-lg-10">
                <div class="row">
                    <div class="col-lg-2">
                        <label>
                            Project Title
                        </label>
                        <asp:TextBox ID="txt_ticketNo" runat="server" CssClass="form-control" placeholder="Project Title" />
                    </div>
                    <div class="col-lg-2">
                        <label>
                            Team Assigned
                        </label>
                        <asp:DropDownList ID="ddl_techStaff" CssClass="form-control"  runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddl_staff_SelectedIndexChanged"></asp:DropDownList>
                    </div>
                    <div class="col-lg-2">
                        <label>
                            Status</label>
                        <asp:DropDownList runat="server" ID="ddl_status" CssClass="form-control">
                        </asp:DropDownList>
                    </div>
                     <div class="col-lg-2">
                        <label>
                            Project Manager
                        </label>
                        <asp:DropDownList runat="server" ID="ddl_manager" CssClass="form-control">
                        </asp:DropDownList>
                    </div>

                    <div class="col-lg-2">
                        <label id="dev" runat="server" >
                            Assigned Developer</label>
                        <%--<asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Enter text" />--%>
                        <asp:DropDownList runat="server" ID="ddl_developer" CssClass="form-control">
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

        <div class="row" style="height: 50px"></div>
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
                        <%--<asp:ListItem Value="Pdf">Pdf</asp:ListItem>--%>
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
    
        <div class="row" style="width: 96%; margin-right: 2%; margin-left: 2%">

        <asp:GridView ID="dataGridResults2" runat="server" AutoGenerateColumns="false" Width="100%"
            DataKeyNames="ProjectNumber" AllowPaging="true" PageSize="30" Font-Size="98%" ForeColor="Black"
            GridLines="Horizontal" CssClass="Table" AlternatingRowStyle-CssClass="alt"
            PagerStyle-CssClass="pgr" Style="width: 100%;" OnPageIndexChanging="dataGridResults2_PageIndexChangingProjects" OnRowCommand="dataGridResults2_RowCommand" OnRowDataBound="GridView2_RowDataBound">
            <FooterStyle BackColor="InactiveCaption" Font-Bold="False" ForeColor="White" CssClass="csspager" />
            <PagerStyle BackColor="#A2cad2" ForeColor="White" HorizontalAlign="Center" Font-Bold="False"
                Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>

<%--                <asp:BoundField DataField="ProjectNumber" HeaderText="Project No." HeaderStyle-CssClass=" hidden-sm hidden-xs" ItemStyle-CssClass="hidden-sm hidden-xs">
                    <ItemStyle Width="12%" HorizontalAlign="Left" />
                    <HeaderStyle Width="12%" HorizontalAlign="Left" />
                </asp:BoundField>--%>

                <asp:BoundField DataField="Title" HeaderText="Title">
                    <ItemStyle Width="20%" HorizontalAlign="Left" CssClass="gridHeaderRightAlign" />
                    <HeaderStyle Width="20%" HorizontalAlign="Left" CssClass="gridHeaderRightAlign" />
                </asp:BoundField>

                <asp:BoundField DataField="ClientName" HeaderText="Client">
                    <ItemStyle Width="8%" HorizontalAlign="Left" CssClass="gridHeaderRightAlign" />
                    <HeaderStyle Width="8%" HorizontalAlign="Left" CssClass="gridHeaderRightAlign" />
                </asp:BoundField>

                <asp:BoundField DataField="Status" HeaderText="Status">
                    <ItemStyle Width="6%" HorizontalAlign="Left" CssClass="gridHeaderRightAlign" />
                    <HeaderStyle Width="6%" HorizontalAlign="Left" CssClass="gridHeaderRightAlign" />
                </asp:BoundField>

                <asp:BoundField DataField="Priority" HeaderText="Priority" HeaderStyle-CssClass=" hidden-sm hidden-xs" ItemStyle-CssClass="hidden-sm hidden-xs">
                    <ItemStyle Width="6%" HorizontalAlign="Left"  />
                    <HeaderStyle Width="6%" HorizontalAlign="Left"  />
                </asp:BoundField>

                <asp:BoundField DataField="EndDate" HeaderText="Due Date">
                    <ItemStyle Width="6%" />
                    <HeaderStyle Width="6%" />
                </asp:BoundField>

                <asp:BoundField DataField="Team" HeaderText="Team" HeaderStyle-CssClass=" hidden-sm hidden-xs" ItemStyle-CssClass="hidden-sm hidden-xs">
                    <ItemStyle Width="8%" HorizontalAlign="Left"  />
                    <HeaderStyle Width="8%" HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="AssignedDeveloper" HeaderText="DEVELOPER" HeaderStyle-CssClass=" hidden-sm hidden-xs" ItemStyle-CssClass="hidden-sm hidden-xs">
                    <ItemStyle Width="8%" />
                    <HeaderStyle Width="8%" />
                </asp:BoundField>
                    <asp:BoundField DataField="Manager" HeaderText="Project Manager" HeaderStyle-CssClass=" hidden-sm hidden-xs" ItemStyle-CssClass="hidden-sm hidden-xs">
                    <ItemStyle Width="8%" />
                    <HeaderStyle Width="8%" />
                </asp:BoundField>
                <asp:ButtonField CommandName="viewProject"
                    Text="View Project">
                    <ItemStyle Width="8%" HorizontalAlign="Right" />
                    <HeaderStyle Width="8%" HorizontalAlign="Right" />
                </asp:ButtonField>
                
            </Columns>
            <HeaderStyle BackColor="#035fc6" Font-Bold="True" ForeColor="white" Font-Italic="False"
                Font-Overline="False" Font-Strikeout="False" Font-Underline="False" Height="30px" />
        </asp:GridView>

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


