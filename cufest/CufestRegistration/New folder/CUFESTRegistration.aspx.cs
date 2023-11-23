using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CUFESTRegistration : System.Web.UI.Page
{
    OnlineConferenceactCUFEST obj = new OnlineConferenceactCUFEST();
    protected void Page_Load(object sender, EventArgs e)
    {
        DisplayCategory();
    }
    public void DisplayCategory()
    {
        OnlineConferenceactCUFEST objCategory = new OnlineConferenceactCUFEST();
        DataSet ds = objCategory.DisplayCufestCategory();
        gvCufestCategory.DataSource = ds;
        gvCufestCategory.DataBind();

        foreach (GridViewRow row in gvCufestCategory.Rows)
        {
            if((row.RowIndex)==0)
            {
                CheckBoxList cblFineArts = (row.FindControl("cblFineArts") as CheckBoxList);
                CheckBoxList cblModelling = (row.FindControl("cblModelling") as CheckBoxList);
                CheckBoxList cblTheatre = (row.FindControl("cblTheatre") as CheckBoxList);
                CheckBoxList cblMusic = (row.FindControl("cblMusic") as CheckBoxList);
                CheckBoxList cblDance = (row.FindControl("cblDance") as CheckBoxList);
                CheckBoxList cblLiterary = (row.FindControl("cblLiterary") as CheckBoxList);

                foreach (DataRow table in ds.Tables[0].Rows)
                {
                    int Category = Convert.ToInt32(table["Category"].ToString());
                    if (Category == 1)
                    {
                        ds.Tables[0].DefaultView.RowFilter = "Category ='" + Category + "'";
                        cblFineArts.DataSource = ds.Tables[0].DefaultView;
                        cblFineArts.DataBind();
                    }
                    else if (Category == 2)
                    {
                        ds.Tables[0].DefaultView.RowFilter = "Category ='" + Category + "'";
                        cblModelling.DataSource = ds.Tables[0].DefaultView;
                        cblModelling.DataBind();
                    }
                    else if (Category == 3)
                    {
                        ds.Tables[0].DefaultView.RowFilter = "Category ='" + Category + "'";
                        cblTheatre.DataSource = ds.Tables[0].DefaultView;
                        cblTheatre.DataBind();
                    }
                    else if (Category == 4)
                    {
                        ds.Tables[0].DefaultView.RowFilter = "Category ='" + Category + "'";
                        cblMusic.DataSource = ds.Tables[0].DefaultView;
                        cblMusic.DataBind();
                    }
                    else if (Category == 5)
                    {
                        ds.Tables[0].DefaultView.RowFilter = "Category ='" + Category + "'";
                        cblDance.DataSource = ds.Tables[0].DefaultView;
                        cblDance.DataBind();
                    }
                    else if (Category == 6)
                    {
                        ds.Tables[0].DefaultView.RowFilter = "Category ='" + Category + "'";
                        cblLiterary.DataSource = ds.Tables[0].DefaultView;
                        cblLiterary.DataBind();
                    }
                }
            }
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            string CollegeUniversitychoice = rblUniversityCollege.SelectedValue;
            string s = hfcufestOption.Value.ToString();
            string[] values = s.Split(',');
            for (int i = 0; i < values.Length; i++)
            {
                values[i] = values[i].Trim();
            }
            int CufestCategoryOption1 = Convert.ToInt32(values[0]);
            int CufestCategoryOption2 = Convert.ToInt32(values[1]);
            int CufestCategoryOption3 = Convert.ToInt32(values[2]);
            string msg = obj.SaveCucetRegistration(txtParticipantName.Text.Trim(), txtEmail.Text.Trim(), txtPhone.Text.Trim(), txtAltPhone.Text.Trim(), 
                CollegeUniversitychoice, txtUniversityName.Text.Trim(), txtAddress.Text.Trim(), CufestCategoryOption1, CufestCategoryOption2, CufestCategoryOption3);

            string val = msg.Split(':')[0];
            var message = msg.Split(':')[1];
            if (val == "0")
            {
                ScriptManager.RegisterStartupScript(this.Page, GetType(), "messagedate1", "setTimeout(function () { swal('Success!', '" + message + "', 'success'); }, 200);", true);
                dvSubmit.Visible = false;
                DisableControls();
            }
            else if (val == "1")
            {
                ScriptManager.RegisterStartupScript(this.Page, GetType(), "messagedate1", "setTimeout(function () { swal('Success!', '" + message + "', 'success'); }, 200);", true);
                dvSubmit.Visible = false;
                DisableControls();
            }
            else if(val == "2")
            {
                ScriptManager.RegisterStartupScript(this.Page, GetType(), "messagedate1", "setTimeout(function () { swal('Success!', '" + message + "', 'success'); }, 200);", true);
                dvSubmit.Visible = false;
                DisableControls();
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this.Page, GetType(), "messagedate1", "setTimeout(function () { swal('Warning!', 'Some error occured', 'warning'); }, 200);", true);
        }
    }

    private void DisableControls()
    {
        txtParticipantName.Enabled = txtEmail.Enabled = txtPhone.Enabled = txtAltPhone.Enabled = txtUniversityName.Enabled = txtAddress.Enabled = rblUniversityCollege.Enabled = gvCufestCategory.Enabled = false;
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        Response.Redirect("CUFESTRegistration.aspx");
    }
    protected void btnAlreadyEmail_Click(object sender, EventArgs e)
    {
        try
        {
            if (string.IsNullOrEmpty(txtAlreadyEmail.Text))
            {
                ScriptManager.RegisterStartupScript(this.Page, GetType(), "messagedate1", "setTimeout(function () { swal('Warning!', 'Please enter email Id', 'warning'); }, 200);document.getElementById('" + this.txtAlreadyEmail.ClientID + "').focus();", true);
                return;
            }
            if (txtAlreadyEmail.Text != "")
            {
                string strRegex = @"\A(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?)\Z";
                Regex re = new Regex(strRegex, RegexOptions.IgnoreCase);
                if (!re.IsMatch(txtAlreadyEmail.Text))
                {
                    ScriptManager.RegisterStartupScript(this.Page, GetType(), "messagedate1", "setTimeout(function () { swal('Warning!', 'Please enter valid email Id', 'warning'); }, 200);", true);
                    txtAlreadyEmail.Focus();
                    return;
                }
            }
            GetCUFestRegistrationDetailsById(txtAlreadyEmail.Text.Trim());
            DisableControls();
            dvSubmit.Visible = false;
            hfActiveTab.Value = "1";
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this.Page, GetType(), "messagedate1", "setTimeout(function () { swal('Warning!', 'Some error occured', 'warning'); }, 200);", true);
        }
    }
    private void GetCUFestRegistrationDetailsById(String EmailId)
    {
        try
        {
            DataSet ds = obj.GetConferenceRegistrationDetailsById(EmailId);
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtParticipantName.Text = Convert.ToString(ds.Tables[0].Rows[0]["ParticipantName"]);
                txtEmail.Text = Convert.ToString(ds.Tables[0].Rows[0]["EmailId"]);
                txtPhone.Text = Convert.ToString(ds.Tables[0].Rows[0]["ContactNumber"]);
                txtAltPhone.Text = Convert.ToString(ds.Tables[0].Rows[0]["AlternativeNumber"]);
                rblUniversityCollege.SelectedValue = Convert.ToString(ds.Tables[0].Rows[0]["UniversityORCollege"]);
                txtUniversityName.Text = Convert.ToString(ds.Tables[0].Rows[0]["UnivarsityCollegeName"]);
                txtAddress.Text = Convert.ToString(ds.Tables[0].Rows[0]["Address"]);

                //foreach (GridViewRow row in gvCufestCategory.Rows)
                //{
                //    if ((row.RowIndex) == 0)
                //    {
                //        CheckBoxList cblFineArts = (row.FindControl("cblFineArts") as CheckBoxList);
                //        CheckBoxList cblModelling = (row.FindControl("cblModelling") as CheckBoxList);
                //        CheckBoxList cblTheatre = (row.FindControl("cblTheatre") as CheckBoxList);
                //        CheckBoxList cblMusic = (row.FindControl("cblMusic") as CheckBoxList);
                //        CheckBoxList cblDance = (row.FindControl("cblDance") as CheckBoxList);
                //        CheckBoxList cblLiterary = (row.FindControl("cblLiterary") as CheckBoxList);

                //        foreach (DataRow table in ds.Tables[0].Rows)
                //        {
                //            int Category1 = Convert.ToInt32(table["CategoryOption1"].ToString());
                //            int Category2 = Convert.ToInt32(table["CategoryOption2"].ToString());
                //            int Category3 = Convert.ToInt32(table["CategoryOption3"].ToString());
                //            //if (Category == 1)
                //            //{
                //            //    ds.Tables[0].DefaultView.RowFilter = "Category ='" + Category + "'";
                //            //    cblFineArts.DataSource = ds.Tables[0].DefaultView;
                //            //    cblFineArts.DataBind();
                //            //}
                //            //else if (Category == 2)
                //            //{
                //            //    ds.Tables[0].DefaultView.RowFilter = "Category ='" + Category + "'";
                //            //    cblModelling.DataSource = ds.Tables[0].DefaultView;
                //            //    cblModelling.DataBind();
                //            //}
                //            //else if (Category == 3)
                //            //{
                //            //    ds.Tables[0].DefaultView.RowFilter = "Category ='" + Category + "'";
                //            //    cblTheatre.DataSource = ds.Tables[0].DefaultView;
                //            //    cblTheatre.DataBind();
                //            //}
                //            //else if (Category == 4)
                //            //{
                //            //    ds.Tables[0].DefaultView.RowFilter = "Category ='" + Category + "'";
                //            //    cblMusic.DataSource = ds.Tables[0].DefaultView;
                //            //    cblMusic.DataBind();
                //            //}
                //            //else if (Category == 5)
                //            //{
                //            //    ds.Tables[0].DefaultView.RowFilter = "Category ='" + Category + "'";
                //            //    cblDance.DataSource = ds.Tables[0].DefaultView;
                //            //    cblDance.DataBind();
                //            //}
                //            //else if (Category == 6)
                //            //{
                //            //    ds.Tables[0].DefaultView.RowFilter = "Category ='" + Category + "'";
                //            //    cblLiterary.DataSource = ds.Tables[0].DefaultView;
                //            //    cblLiterary.DataBind();
                //            //}
                //        }
                //    }
                //}


            }
            else
            {
                ScriptManager.RegisterStartupScript(this.Page, GetType(), "messagedate1", "setTimeout(function () { swal('Error!', '" + ds.Tables[1].Rows[0]["Message"].ToString() + "', 'error'); }, 200);", true);
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this.Page, GetType(), "messagedate1", "setTimeout(function () { swal('Warning!', 'Some error occured', 'warning'); }, 200);", true);
        }
    }
}