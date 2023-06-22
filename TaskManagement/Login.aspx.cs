using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Security;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaskManagement
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_loginClick(object sender, EventArgs e)
        {
            
        }
        public void Page_PreRender(object sender, EventArgs e)
        {
            
        }
        private void ShowMessage(string Message, bool Error)
        {
            
        }

        private bool RemoteCertValidation(Object sender, X509Certificate certificate, X509Chain chain, SslPolicyErrors sslPolicyErrors)
        {
            return true;
        }

        protected void BtnForgotPassword_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            
        }
        public bool CheckStrength(string password)
        {
            return true;
        }
        protected void BtnSave_Click(object sender, EventArgs e)
        {
            
        }
        private void SavePassword()
        {
            
        }
        protected void BtnResetUserPassword_Click(object sender, EventArgs e)
        {
            
        }
    }
}