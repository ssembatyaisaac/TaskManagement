<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TaskManagement.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <link href="CSS/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.js"></script>
    <title></title>

    <style type="text/css">
        body, html {
            height: 100%;
            background-repeat: no-repeat;
        }

        .card-container.card {
            max-width: 350px;
            padding: 40px 40px;
        }

        .btn {
            font-weight: 700;
            height: 36px;
            -moz-user-select: none;
            -webkit-user-select: none;
            user-select: none;
            cursor: pointer;
            top: 1px;
            left: -1px;
            width: 172px;
        }

        .card {
            background-color: white;
            padding: 20px 25px 30px;
            margin: 0 auto 25px;
            margin-top: 50px;
            -moz-border-radius: 2px;
            -webkit-border-radius: 2px;
            border-radius: 2px;
            -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
            -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
            box-shadow: 0px 30px 30px rgba(0, 0, 0, 0.3);
        }

        .profile-img-card {
            width: 96px;
            height: 96px;
            margin: 0 auto 10px;
            display: block;
            -moz-border-radius: 50%;
            -webkit-border-radius: 50%;
            border-radius: 50%;
            background-color: white;
        }

        .profile-name-card {
            font-size: 16px;
            font-weight: bold;
            text-align: center;
            margin: 10px 0 0;
            min-height: 1em;
        }

        .reauth-email {
            display: block;
            color: #404040;
            line-height: 2;
            margin-bottom: 10px;
            font-size: 14px;
            text-align: center;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            -moz-box-sizing: border-box;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
        }

        .form-signin #inputEmail,
        .form-signin #inputPassword {
            direction: ltr;
            font-size: 16px;
        }

        .form-signin input[type=email],
        .form-signin input[type=password],
        .form-signin input[type=text],
        .form-signin button {
            width: 100%;
            display: block;
            z-index: 1;
            position: relative;
            -moz-box-sizing: border-box;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
        }

        .form-signin .form-control:focus {
            border-color: rgb(104, 145, 162);
            outline: 0;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgb(104, 145, 162);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgb(104, 145, 162);
        }

        .btn.btn-signin {
            background-color: rgb(104, 145, 162);
            padding: 0px;
            font-weight: 700;
            font-size: 14px;
            height: 36px;
            -moz-border-radius: 3px;
            -webkit-border-radius: 3px;
            border-radius: 3px;
            border: none;
            -o-transition: all 0.218s;
            -moz-transition: all 0.218s;
            -webkit-transition: all 0.218s;
            transition: all 0.218s;
        }

            .btn.btn-signin:hover,
            .btn.btn-signin:active,
            .btn.btn-signin:focus {
                background-color: rgb(12, 97, 33);
            }

        .forgot-password {
            color: rgb(104, 145, 162);
        }

            .forgot-password:hover,
            .forgot-password:active,
            .forgot-password:focus {
                color: rgb(12, 97, 33);
            }
        .auto-style1 {
            display: block;
            width: 100%;
            font-size: 1rem;
            line-height: 1.25;
            color: #464a4c;
            background-color: #fff;
            background-image: none;
            -webkit-background-clip: padding-box;
            background-clip: padding-box;
            border-radius: 0.25rem;
            -webkit-transition: border-color ease-in-out 0.15s, -webkit-box-shadow ease-in-out 0.15s;
            transition: border-color ease-in-out 0.15s, -webkit-box-shadow ease-in-out 0.15s;
            -o-transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s;
            transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s;
            transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s, -webkit-box-shadow ease-in-out 0.15s;
            left: -2px;
            top: 0px;
        }
    </style>



</head>
<body>



    <div class='container'>
        <div class='card card-container'>

            <h4 style='color: blue;' align='center'>
                <img src="Images/pegasus1.png" height="50" /></h4>
            <img id='profile-img' class='profile-img-card' src='Images/profilePic.png' />

            <p id='profile-name' class='profile-name-card'></p>
            <form class='form-signin' runat="server">
                <span id='reauth-email' class='reauth-email'></span>
                <div>
                    <center><asp:Label runat="server" Text="." ID="lbl_response"></asp:Label></center>
                </div>
                <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">

                <asp:View ID="View1" runat="server">
                <div class='form-group'>
                    <div class='input-group margin-bottom-sm'>
                        <span class='input-group-addon'><span class='glyphicon glyphicon-envelope' style="font-size: 16px;"></span>
                        </span>

                        <asp:TextBox ID="txt_username" CssClass="form-control" placeholder="User Name" runat="server" />
                    </div>
                </div>
                <br/>

                <div class='input-group'>
                    <span class='input-group-addon'><i class="fa fa-key"></i></span>
                    <asp:TextBox TextMode="password" ID="txt_password" CssClass="form-control" placeholder="Password" runat="server" />
                </div>



                <div id='remember' class='checkbox' style="visibility:hidden;">
                    <label>
                        <input type='checkbox' value='remember-me'/>
                        Remember me
                    </label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
                    <div class='input-group'>
				<table class="" >			
                    <tr>
                        <th>
					<asp:Button ID="btn_login" CssClass="btn btn-success col-md-7" runat="server" Text="LOGIN" onclick="btn_loginClick" />
                            </th>
                        <th>
                    <asp:Button ID="ButtonForgotPassword" CssClass="btn btn-primary col-9" runat="server" Text="Forgot Password"  onclick="BtnForgotPassword_Click" Font-Size="Smaller" />
						</th>
                            </tr>
                        </table>	       
						        </div>
                <%--<div class="input-group">
                   <div style="text-align:match-parent"; width:50%;> <asp:Button runat="server" CssClass= "btn btn-success col-md-8"  ID="btn_login" OnClick="btn_loginClick" Text="Login"></asp:Button></div><div id='error'></div>
                </div>
                    <div class="input-group">
                      <div style="text-align:match-parent"; width:50%;><asp:Button ID="ButtonForgotPassword" CssClass="btn btn-primary col-md-5 pull-right" runat="server" Text="Forgot Password"  onclick="BtnForgotPassword_Click" Font-Size="Smaller" Font-Bold="True" Font-Italic="False" /></div>
                        </div>--%>
                    </asp:View>
                    
                        <asp:View ID="View2" runat="server">
                            <div class="modal-body">
                                <center><h4>RESET PASSWORD</h4></center>
                                <br />
								<label>Username:</label>
                                <div class="form-group input-group">
									<span class="input-group-addon"><i class="fa fa-user"  ></i></span>
									<asp:TextBox ID="TextBoxUsername" runat="server" CssClass="form-control" onblur="Change(this, event)" onfocus="Change(this, event)"></asp:TextBox>
								</div><br/>
								<%--<label>Email:</label>--%>
					<%--			<div class="form-group input-group">
									<span class="input-group-addon"><i class="fa fa-envelope"  ></i></span>
									<asp:TextBox ID="TextBoxEmail" CssClass="form-control" runat="server" onblur="Change(this, event)" onfocus="Change(this, event)"></asp:TextBox>
                                </div>--%>
                            </div>
                           <div class="input-group">			
					<div style="text-align:match-parent"; width:50%;> <asp:Button runat="server" CssClass= "btn btn-success col-md-8"  ID="Button1" OnClick="btnCancel_Click" Text="Cancel"></asp:Button></div><div id='error'></div>
                  <div style="text-align:match-parent"; width:50%;><asp:Button ID="Button2" CssClass="btn btn-primary col-md-8" runat="server" Text="Reset"  onclick="BtnResetUserPassword_Click" /></div>
 <%--                               <asp:Button ID="Button1Cancel" runat="server" CssClass="btn btn-danger" OnClick="btnCancel_Click" Text="Cancel" />
							   <asp:Button ID="Button1289" runat="server" CssClass="btn btn-success pull-right" OnClick="BtnResetUserPassword_Click" Text="Reset" />--%>					
                                <asp:Label ID="Label3" runat="server" Text="0" Visible="False"></asp:Label>
						        <asp:Label ID="Label4" runat="server" Text="0" Visible="False"></asp:Label>
						    </div>

                        </asp:View>
                               <asp:View ID="View3" runat="server">
                            <div class="modal-body">
                                <center><h4>RESET PASSWORD</h4></center>
                                      <br />
								<label>Old Password</label>
                                <div class="form-group input-group">
									<span class="input-group-addon"><i class="fa fa-envelope"  ></i></span>
									  <asp:TextBox ID="txtOldPassword" runat="server" CssClass="form-control"
                                                TextMode="Password" onKeyDown="return DisableControlKey(event)" onMouseDown="return DisableControlKey(event)"></asp:TextBox>
								</div>
                                <br />
								<label>New Password</label>
                                <div class="form-group input-group">
									<span class="input-group-addon"><i class="fa fa-envelope"  ></i></span>
									  <asp:TextBox ID="txtNewPassword" runat="server" CssClass="form-control"
                                                TextMode="Password" onKeyDown="return DisableControlKey(event)" onMouseDown="return DisableControlKey(event)"></asp:TextBox>
								</div>
                                <br/>
								<label>Confirm Password</label>
								<div class="form-group input-group">
									<span class="input-group-addon"><i class="fa fa-envelope"  ></i></span>
									  <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control"
                                          TextMode="Password" onKeyDown="return DisableControlKey(event)" onMouseDown="return DisableControlKey(event)"></asp:TextBox>
                                </div>
                            </div>
                           <div class="input-group">			
					<div style="text-align:match-parent"; width:50%;> <asp:Button runat="server" CssClass= "btn btn-success col-md-8"  ID="Button3" OnClick="btnCancel_Click" Text="CANCEL"></asp:Button></div><div id='error'></div>
                  <div style="text-align:match-parent"; width:50%;><asp:Button ID="Button4" CssClass="btn btn-primary col-md-8" runat="server" Text="RESET"  onclick="BtnSave_Click" /></div>
 <%--                               <asp:Button ID="Button1Cancel" runat="server" CssClass="btn btn-danger" OnClick="btnCancel_Click" Text="Cancel" />
							   <asp:Button ID="Button1289" runat="server" CssClass="btn btn-success pull-right" OnClick="BtnResetUserPassword_Click" Text="Reset" />--%>					
                                <asp:Label ID="Label1" runat="server" Text="0" Visible="False"></asp:Label>
						        <asp:Label ID="Label2" runat="server" Text="0" Visible="False"></asp:Label>
						    </div>

                        </asp:View>
                     </asp:MultiView>
                <%--<a href='#' class='forgot-password' onclick='password_help();'>Forgot the password?
                </a>--%>
            </form>
        </div>
    </div>




</body>
</html>
