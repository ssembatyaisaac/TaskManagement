<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateProject.aspx.cs" Inherits="TaskManagement.CreateProject" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <asp:MultiView ID="MultiView2" runat="server">
            <asp:View ID="View2" runat="server">

                <div class="container" style="width: 70%; margin-left: 15%; margin-right: 15%">
                    <div class="row" style="padding-top: 10px;">

                        <div class="col-sm-6">
                            <div class="form-group">
                                <label>Project Number</label>
                                <asp:TextBox ID="prj_no" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Project Name</label>
                                <asp:TextBox ID="prj_nm" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label>Priority</label>
                                <asp:DropDownList ID="ddl_priority" CssClass="form-control" runat="server"></asp:DropDownList>
                            </div>
                               <div class="form-group" id="div_assignOperation" runat="server">
                                <label>Project Manager Assigned</label>
                                <asp:DropDownList ID="ddl_managers" CssClass="form-control"  runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddl_staff_SelectedIndexChanged"></asp:DropDownList>
                            </div>

                            <div class="form-group" id="div_assignProject" runat="server">
                                <label>Team Assigned</label>

                                <asp:DropDownList ID="ddl_staff" CssClass="form-control"  runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddl_staff_SelectedIndexChanged"></asp:DropDownList>
                            </div>
                            <div class="form-group" id="div1" runat="server">
                                <label>Developer Assigned</label>

                                <asp:DropDownList ID="ddl_developer" CssClass="form-control" runat="server"></asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <label>Description</label>
                                <asp:TextBox ID="txtDecription" CssClass="form-control" Rows="3" Columns="50" TextMode="MultiLine" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group" id="div2" runat="server">
                                <label>Suspend status</label>

                                <asp:DropDownList ID="ddl_suspend" CssClass="form-control"  runat="server" AppendDataBoundItems="true">
                                    <asp:ListItem Text="--- Select ----" Value="0" />
                                    <asp:ListItem Text="SUSPEND" Value="SUSPENDED" />
                                    <asp:ListItem Text="RETRIEVE" Value="OPENED" />
                                </asp:DropDownList>
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <div class="form-group">
                                <label>Client</label>
                                <asp:DropDownList ID="ddl_complaint" CssClass="form-control" runat="server"></asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <label>Start Date</label>
                                <asp:TextBox ID="txt_startDate" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>End Date</label>
                                <asp:TextBox ID="txt_closingDate" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>



                            <div class="form-group" id="div_status" runat="server">
                                <label>Project Status</label>
                                <asp:TextBox ID="txt_status" CssClass="form-control" runat="server" Enabled="false"></asp:TextBox>
                            </div>
                            <div class="form-group" id="div7" runat="server">
                                UPLOAD DOCUMENT:&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />
                                                                                               
                            </div>

                            <div class="form-group" id="div8" runat="server">
                                <asp:Label ID="Label1" runat="server" Visible="true">DESCRIBE THE DOCUMENT</asp:Label>
                                <asp:TextBox ID="docText" runat="server" Rows="3" Columns="40"></asp:TextBox>
                                                                                               
                            </div>

                        </div>

                    </div>
                    <div id="div_projectreview" runat="server" visible="false" class="row" style="padding-top: 10px;">
                        <div class="form-group" style="padding: 5px">
                            <label>Progress Review</label>
                            <asp:TextBox ID="txt_projectreview" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>

                            <label>Action Points</label>
                            <asp:TextBox ID="txt_acionpoints" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                            <asp:Button ID="Btn_save" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="Btn_save_Click" />
                            <asp:Button ID="Btn_exit" runat="server" Text="Exit" CssClass="btn btn-primary" OnClick="Btn_exit_Click" />
                        </div>
                    </div>
                </div>
            </asp:View>
            <asp:View ID="View3" runat="server">
                <div class="container">
                    <div>
                        <div class="form-group">
                            <asp:Label ID="lbl_projectName" runat="server" Text=""></asp:Label>
                            <asp:TextBox runat="server" ID="txt_projectNumba"></asp:TextBox>
                        </div>
                    </div>

                    <asp:MultiView ID="MultiView1" runat="server">
                        <asp:View ID="View1" runat="server">
                            <asp:GridView ID="dataGridResults" runat="server" AutoGenerateColumns="false" Width="100%"
                                DataKeyNames="TaskNumber" AllowPaging="true" PageSize="40" Font-Size="13px"
                                GridLines="Horizontal" CssClass="Grid csspager" AlternatingRowStyle-CssClass="alt"
                                PagerStyle-CssClass="pgr" Style="width: 100%;" OnPageIndexChanging="dataGridResults2_PageIndexChangingProjects"   OnRowCommand="dataGridResults2_RowCommand"  OnRowDataBound="GridView2_RowDataBound">
                                <FooterStyle BackColor="InactiveCaption" Font-Bold="False" ForeColor="White" CssClass="csspager" />
                                <PagerStyle BackColor="#A2cad2" ForeColor="White" HorizontalAlign="Center" Font-Bold="False"
                                    Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>

                                    <asp:BoundField DataField="TaskName" HeaderText="Task Name">
                                        <ItemStyle Width="20%" HorizontalAlign="Left" CssClass="gridHeaderRightAlign" />
                                        <HeaderStyle Width="20%" HorizontalAlign="Left" CssClass="gridHeaderRightAlign" />
                                    </asp:BoundField>

                                    <asp:BoundField DataField="AssignedTo" HeaderText="Assigned To">
                                        <ItemStyle Width="15%" HorizontalAlign="Left" CssClass="gridHeaderRightAlign" />
                                        <HeaderStyle Width="15%" HorizontalAlign="Left" CssClass="gridHeaderRightAlign" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Status" HeaderText="Status">
                                        <ItemStyle Width="6%" />
                                        <HeaderStyle Width="6%" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="StartDate" HeaderText="Start Date">
                                        <ItemStyle Width="13%" HorizontalAlign="Left" CssClass="gridHeaderRightAlign" />
                                        <HeaderStyle Width="13%" HorizontalAlign="Left" CssClass="gridHeaderRightAlign" />
                                    </asp:BoundField>

                                    <asp:BoundField DataField="EndDate" HeaderText="End Date">
                                        <ItemStyle Width="13%" HorizontalAlign="Left" CssClass="gridHeaderRightAlign" />
                                        <HeaderStyle Width="13%" HorizontalAlign="Left" CssClass="gridHeaderRightAlign" />
                                    </asp:BoundField>

                                    <asp:BoundField DataField="Createdby" HeaderText="Created By">
                                        <ItemStyle Width="13%" />
                                        <HeaderStyle Width="13%" />
                                    </asp:BoundField>
                                   <%-- <asp:ButtonField CommandName="viewAttachment"
                                        Text="View Attachment">
                                        <ItemStyle Width="10%" />
                                        <HeaderStyle Width="10%" />
                                    </asp:ButtonField>--%>
                                    <asp:ButtonField CommandName="viewTask"
                                        Text="View Task">
                                        <ItemStyle Width="10%" />
                                        <HeaderStyle Width="10%" />
                                    </asp:ButtonField>
                                </Columns>
                                <HeaderStyle BackColor="#035fc6" Font-Bold="True" ForeColor="white" Font-Italic="False"
                                    Font-Overline="False" Font-Strikeout="False" Font-Underline="False" Height="30px" />
                            </asp:GridView>

                            <div style="width: 70%; margin-left: 15%; margin-right: 15%; padding: 10px">
                                <div class="row" style="margin-left: 30%; margin-right: 35%; margin-left: 35%">
                                    <table class="table">
                                        <tbody>
                                            <tr>

                                                <td>
                                                    <%--<asp:Button ID="Btn_TasksResoved" runat="server" Text="Tasks Resoved" CssClass="btn btn-primary"  />--%>
                                                </td>

                                                <td>
                                                    <%--  <asp:Button ID="Button4" runat="server" Text="Update Project" CssClass="btn btn-primary"  />--%>
                                                </td>

                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </asp:View>
                    </asp:MultiView>

                </div>
            </asp:View>
            <asp:View ID="View4" runat="server">
                <div class="container">

                    <div class="form-group" style="margin: 0 auto; width: 28%; font: 800; font-size: large">

                        <asp:Label ID="lbl_project_review" runat="server"></asp:Label>
                        <asp:TextBox runat="server" ID="txt_project_review"></asp:TextBox>

                    </div>
                    <div class="container" style="width: 80%; margin-left: 15%; margin-right: 15%">
                        <div class="row" style="width: 95%">

                            <div class="table-responsive">
                                <asp:DataGrid ID="Datagrid1" runat="server" AutoGenerateColumns="true" GridLines="Both" CssClass=" table " Width="85%" Font-Size="90%"
                                    PageSize="10" HeaderStyle-BackColor="#3c8dbc" HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="White">
                                    <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                                </asp:DataGrid>
                            </div>
                        </div>
                    </div>


                </div>
            </asp:View>

        </asp:MultiView>
    </div>


    <div style="width: 40%; margin-left: 9%; margin-right: 10%; padding: 4px">
        <div class="row" style="margin-left:15%; margin-right: 15%;">
            <table class="table">
                <tbody>
                    <tr>
                         <td>
                            <asp:Button ID="Btn_update" runat="server" Text="Update Project" CssClass="btn btn-primary" OnClick="update_Btn_Click" />
                        </td>
                        <td>
                            <asp:Button ID="Btn_addProjectreview" runat="server" Text="Add Review " CssClass="btn btn-primary" OnClick="Btn_addProjectreview_Click" />
                        </td>
                        <td>
                            <asp:Button ID="Btn_create_pj" runat="server" Text="Create Project" CssClass="btn btn-primary" OnClick="Button1_Click" />
                        </td>
                        <td>
                            <asp:Button ID="Btn_createtask" runat="server" Text="Create Task" CssClass="btn btn-primary" OnClick="create_taskBtn_Click" />
                        </td>
                        <td>
                            <asp:Button ID="Btn_viewTask" runat="server" Text="View Tasks" CssClass="btn btn-primary" OnClick="viewTask_Click" />
                        </td>

                        <td>
                            <asp:Button ID="Btn_ViewProjectReviews" runat="server" Text="View Reviews" CssClass="btn btn-primary" OnClick="Btn_ViewProjectReviews_Click" />
                        </td>
                        <td>
                            <asp:Button ID="Btn_viewdocs" runat="server" Text="View Documents" CssClass="btn btn-primary" OnClick="Btn_Viewdocuments_Click" />
                        </td>
                        <td>
                            <asp:Button ID="Btn_closeProjectV" runat="server" Text="Close Project" OnClick="Btn_close_Click" CssClass="btn btn-primary" />
                        </td>
                             <td>
                                      <asp:Button ID="Btn_CloseProject" runat="server" Text="Close Project" OnClick="Btn_close_Click" CssClass="btn btn-primary" />
                                </td>
                         <td>          
                                   <asp:Button ID="Btn_return" runat="server" Text="Return"   CssClass="btn btn-primary" OnClick="Btn_return_Click" />
                            </td>    
                            <td>          
                                   <asp:Button ID="Button4" runat="server" Text="BACK"   CssClass="btn btn-primary" OnClick="Btn_return_Click1" />
                            </td>    

                    </tr>
                </tbody>
            </table>
        </div>
    </div>

    <script type="text/javascript">
        $(function () {
            $('#<%=txt_startDate.ClientID%>').datepicker({ dateFormat: 'yy-mm-dd' });
            $('#<%=txt_closingDate.ClientID%>').datepicker({ dateFormat: 'yy-mm-dd' });
        });
    </script>
</asp:Content>
