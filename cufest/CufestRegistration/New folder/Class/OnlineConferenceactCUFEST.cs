using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using Newtonsoft.Json.Linq;
using System.Security.Cryptography;
using System.Net;
using System.IO;
using System.Text;


/// <summary>
/// Summary description for CUFESTRegistration
/// </summary>
public class OnlineConferenceactCUFEST : DBConnectionICAMDFA
{
    public DataSet DisplayCufestCategory()
    {
        DbCommand dbc = db.GetStoredProcCommand("pCufestRegistrationCategory");
        DataSet ds = db.ExecuteDataSet(dbc);
        return ds;
    }
    public string SaveCucetRegistration(string ParticipantName,string EmailId,string Mobile, string AlternativeMobile, string UniversityOrCollege, string UnivarsityCollegeName, string Address,int CategoryOption1, int CategoryOption2, int CategoryOption3)
    {
        DbCommand dbc = db.GetStoredProcCommand("Cuforms.dbo.pCuFestRegistration_Insert");
        dbc.Parameters.Add(new SqlParameter("ParticipantName", ParticipantName));
        dbc.Parameters.Add(new SqlParameter("EmailId", EmailId));
        dbc.Parameters.Add(new SqlParameter("Mobile", Mobile));
        dbc.Parameters.Add(new SqlParameter("AlternativeMobile", AlternativeMobile));
        dbc.Parameters.Add(new SqlParameter("UniversityOrCollege", UniversityOrCollege));
        dbc.Parameters.Add(new SqlParameter("UnivarsityCollegeName", UnivarsityCollegeName));
        dbc.Parameters.Add(new SqlParameter("Address", Address));
        dbc.Parameters.Add(new SqlParameter("CategoryOption1", CategoryOption1));
        dbc.Parameters.Add(new SqlParameter("CategoryOption2", CategoryOption2));
        dbc.Parameters.Add(new SqlParameter("CategoryOption3", CategoryOption3));
        string val = Convert.ToString(db.ExecuteScalar(dbc));
        return val;
    }
    public DataSet GetConferenceRegistrationDetailsById(string EmailId)
    {
        DbCommand dbc = db.GetStoredProcCommand("Cuforms.dbo.pCuFestRegistrationByEmailId");
        dbc.Parameters.Add(new SqlParameter("EmailId", EmailId));
        DataSet ds = db.ExecuteDataSet(dbc);
        return ds;
    }
}