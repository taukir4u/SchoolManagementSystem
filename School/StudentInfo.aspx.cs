using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using School.DAL;
using System.Data;

namespace School
{
    public partial class StudentInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            StudentDal  sd = new StudentDal();
            DataTable dt = sd.View();
            GridViewStudentInfo.DataSource = dt;
            GridViewStudentInfo.DataBind();
        }

    }
}