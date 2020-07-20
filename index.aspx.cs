using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Youtube_View_Time_Calci
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected float Calculate_ViewTime(int speedControl)
        {
            float length_of_the_video = 100 *float.Parse(txtbxDuration.Text.Trim());
            length_of_the_video = length_of_the_video / speedControl;
            return length_of_the_video;
        }
        protected void btnCalculateViewTime_Click(object sender, EventArgs e)
        {
            int speedcontrol = drpSpeedControls.SelectedIndex;
            float speedvalue;
            float savedminutes;
            if (speedcontrol == 0)
            {
                string msg = "Please select speed control";
                ScriptManager.RegisterStartupScript(this, GetType(), msg, "alertMessage("+msg+");", true);

            }else if (speedcontrol == 1)
            {
                // ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alertMessage();", true);
                speedvalue=Calculate_ViewTime(100);
               savedminutes = float.Parse(txtbxDuration.Text.Trim()) - speedvalue;
                ScriptManager.RegisterStartupScript(this, GetType(),savedminutes.ToString(), "alertMessage("+savedminutes.ToString() + ");", true);
            }
            else if (speedcontrol == 2)
            {
                speedvalue = Calculate_ViewTime(125);
                savedminutes = float.Parse(txtbxDuration.Text.Trim()) - speedvalue;
                ScriptManager.RegisterStartupScript(this, GetType(), savedminutes.ToString(), "alertMessage(" + savedminutes.ToString() + ");", true);
            }
            if (speedcontrol == 3)
            {
                speedvalue = Calculate_ViewTime(150);
                savedminutes = float.Parse(txtbxDuration.Text.Trim()) - speedvalue;
                ScriptManager.RegisterStartupScript(this, GetType(), savedminutes.ToString(), "alertMessage(" + savedminutes.ToString() + ");", true);

            }
            if (speedcontrol == 4)
            {
                speedvalue = Calculate_ViewTime(175);
                savedminutes = float.Parse(txtbxDuration.Text.Trim()) - speedvalue;
                ScriptManager.RegisterStartupScript(this, GetType(), savedminutes.ToString(), "alertMessage(" + savedminutes.ToString() + ");", true);

            }
            if (speedcontrol == 5)
            {
                speedvalue = Calculate_ViewTime(200);
                savedminutes = float.Parse(txtbxDuration.Text.Trim()) - speedvalue;
                ScriptManager.RegisterStartupScript(this, GetType(), savedminutes.ToString(), "alertMessage(" + savedminutes.ToString() + ");", true);

            }
        }
    }
}