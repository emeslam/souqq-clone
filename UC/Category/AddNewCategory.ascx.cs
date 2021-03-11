using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UC_Category_AddNewCategory : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (SouqNewEntities db=new SouqNewEntities())
        {
            var alldata = db.CategoryBYINT;
            GridView1.DataSource = alldata.ToList();
            GridView1.DataBind();
        }
        
        
    }

    



   
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string catName = txtCategory.Text;
        string description = txtDescription.Text;

        using (SouqNewEntities db=new SouqNewEntities())
        {
           
          


            if (txtCategory.Text == string.Empty || txtDescription.Text == string.Empty)
            {
                lblResult.Visible = true;
                lblResult.Text = " ..... no data found ............";
                lblResult.ForeColor = System.Drawing.Color.Red;
                IMGCatName.Visible = true;
                IMGDESC.Visible = true;
            }

            else
            {



                if (ISExit(txtCategory.Text))
                {



                    lblResult.Visible = true;
                    lblResult.Text = "this name Is Already Exist  ..";
                    lblResult.ForeColor = System.Drawing.Color.Red;
                }

                else
                {
                    int rowaffected = db.AddnewCategoryINt(txtCategory.Text, txtDescription.Text);

                    if (rowaffected > 0)
                    {

                        lblResult.Visible = true;
                        lblResult.Text = "Add new Category";
                        lblResult.ForeColor = System.Drawing.Color.Green;

                        IMGCatName.Visible = false;
                        IMGDESC.Visible = false;


                        if (FileUpload1.HasFile)
                        {
                            FileUpload1.SaveAs(Server.MapPath("../CategoryPhoto" + "/" + txtCategory.Text + ".jpg"));
                            Image1.ImageUrl = "../../CategoryPhoto/" + txtCategory.Text + ".jpg";
                            lblPhoto.Visible = true;
                            lblPhoto.Text = "Upload Category Successfully";
                        }



                      

                        txtCategory.Text = "";
                        txtDescription.Text = null;



                    }


                    else
                    {
                        lblResult.Visible = true;
                        lblResult.Text = "Fail Try Again ..";
                        lblResult.ForeColor = System.Drawing.Color.Red;

                    }
                
                }
                

                
            
            }


          

        }



         
    }




    private bool ISExit(string catname)
    {

        using (SouqNewEntities db = new SouqNewEntities())
        {
            string ResEXIST;
            bool ResBool = false;
            var Varcatname = (from tbl in db.CategoryBYINT select tbl.CatName).FirstOrDefault();

            if (catname == Varcatname)
            {
                ResEXIST = "this Name IS Already Exist";
                ResBool = true;
            }
            else
            {
                ResEXIST = "";
                ResBool = false;
            }

            return ResBool;


        }
    }

}