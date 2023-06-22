<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateTask.aspx.cs" Inherits="TaskManagement.CreateTask" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="width: 70%; margin-left: 15%; margin-right: 15%">
        <div class="row" style="padding-top: 10px;">
            <div class="col-sm-6">
                <h4>Task Details</h4>
                <div class="form-group">
                    <label>Project Name</label>
                    <asp:TextBox ID="txt_projectName" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Task Name</label>
                    <asp:TextBox ID="txt_taskName" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Task Description</label>
                    <asp:TextBox ID="txt_taskdescription" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                </div>
                <div class="form-group">
                   <label>Assigned To</label>
                   <asp:DropDownList ID="ddl_stuffassignedto" CssClass="form-control" runat="server"></asp:DropDownList>
                </div>
                <div class="form-group">
                   <label>Assigned By</label>
                   <asp:DropDownList ID="ddl_stuffassignedby" CssClass="form-control" runat="server"></asp:DropDownList>
                </div>
            </div>

            
            <div class="col-sm-6">
                <h4>Task Duration</h4>
                <div class="form-group">
                    <label>Start Date  </label>     
                    <asp:TextBox ID="txt_startDate" CssClass="form-control" runat="server" type="date"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Closing Date</label>
                    <asp:TextBox ID="txt_closingDate" CssClass="form-control" runat="server" type="date"></asp:TextBox>
                </div>
            </div>
        </div>
        
        <div class="row" style="padding-top: 10px;">
            <div class="col-sm-6">
                <h4>Project Contact Details</h4>
                <div class="form-group">
                    <label>Project Contact Name</label>
                    <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                 <div class="form-group">
                    <label>Contact Phone</label>
                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" type="tel"></asp:TextBox>
                </div>
                 <div class="form-group">
                    <label>Contact Email</label>
                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" type="email"></asp:TextBox>
                </div>
            </div>
            <div class="col-sm-6">
                <h4>Additional Details</h4>
                <div class="form-group">
                    <label>Priority Level</label>
                    <asp:DropDownList ID="priority_level" CssClass="form-control" runat="server"></asp:DropDownList>
                </div>
                 <div class="form-group">
                    <label>File Attachment</label>
                    <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" type="tel"></asp:TextBox>
                </div>
                <div class="form-group" id="div7" runat="server">
                     UPLOAD DOCUMENT:&nbsp;<asp:FileUpload ID="TaskUploads" runat="server" />
                 </div>
            </div>
        </div>

        <div>
            <div>
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View2" runat="server">
                        <div>
                            <div class="form-group ">
                                <label>Description</label>
                                <asp:TextBox ID="txtDecription" CssClass="form-control" Rows="3" Columns="50" TextMode="MultiLine" runat="server"></asp:TextBox>
                            </div>
                            


                            <div class="row" style="margin-left: 30%">
                               
                               
                                <div class="col-sm-3" style="padding: 5px">
                                    <asp:Button ID="saveTask" runat="server" CssClass="btn btn-primary" OnClick="saveTaskClick" Text="Save Task" />

                                </div>
                                <div class="col-sm-3" style="padding: 5px">
                                   
                                    <asp:Button ID="Btn_closetask" runat="server" CssClass="btn btn-primary" OnClick="CloseTasks_Click" Text="Close Task"/>

                                </div>
                               <%-- <div class="col-sm-3" style="padding: 5px">
                                   
                                    <asp:Button ID="Button1_Update" runat="server" CssClass="btn btn-primary"  Text="Update Task"/>

                                </div>--%>
                                <div class="col-sm-3" style="padding: 5px">
                                   
                                    <asp:Button ID="Button1_delete" runat="server" CssClass="btn btn-primary"  Text="Delete Task" OnClick="Button1_delete_Click"/>

                                </div>

                                <div class="col-sm-3" style="padding: 5px">
                                   
                                   <asp:Button ID="Btn_return" runat="server" Text="Return"   CssClass="btn btn-primary" OnClick="Btn_return_Click" />
                                </div>
                                
                            </div>
                        </div>
                    </asp:View>
                    <asp:View ID="View1" runat="server">
                        <div class="row">
                            <asp:Label ID="lbl_reason" runat="server" Text="."></asp:Label>

                        </div>
                        <div class="row">
                            <asp:TextBox ID="txt_reason" runat="server" Columns="50" CssClass="form-control" Rows="3" TextMode="MultiLine"></asp:TextBox>

                        </div>
                        <div class="row">
                            <asp:Button ID="btn_submit" runat="server" CssClass="btn btn-primary" OnClick="submitUpdate_Click" Text="Submit" />

                        </div>
                    </asp:View>
                </asp:MultiView>

            </div>


        </div>

    </div>
    <script type="text/javascript">
        $(function () {
            $('#<%=txt_closingDate.ClientID%>').datepicker({ dateFormat: 'yy-mm-dd' });

        });
        $(function () {
            $('#<%=txt_startDate.ClientID%>').datepicker({ dateFormat: 'yy-mm-dd' });

        });
        
    </script>
</asp:Content>


