using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UC_Products_AddNewProducts : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

        int ID = 1;

        if (!IsPostBack)
        {
            LoadDDL();
            LoadGrid();
        }


       


        try
        {
            GetNextProductID();
        }
        catch (Exception)
        {

            txtProID.Text = ID.ToString();
        }
       
    }

    private void LoadDDL()
    {
        using (SouqNewEntities db = new SouqNewEntities())
        {
            var alldata = from tbl in db.Category select new { tbl.CatId ,tbl.CatName};

            ddlCategory.DataSource = alldata.ToList();
            ddlCategory.DataTextField = "CatName";
            ddlCategory.DataValueField = "CatId";

            ddlCategory.DataBind();


            //ddlCategory.DataSource = db.SelectAllCategory();
            //ddlCategory.DataTextField = "CatName";
           
            //ddlCategory.DataBind();
        }
    }

    private void LoadGrid()
    {
        using (SouqNewEntities db=new SouqNewEntities ())
        {
            var alldata = from tbl in db.Products select tbl;

            GridView1.DataSource = alldata.ToList();
            GridView1.DataBind();
            //GridView1.DataSource = db.SelectAllProducts();
            //GridView1.DataBind();
        }
    }

    private void GetNextProductID()
    {
        using (SouqNewEntities db = new SouqNewEntities())
        {
            var alldata = (from tbl in db.Products select tbl.ProductId).Max() + 1;

            txtProID.Text = alldata.ToString();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int ID = int.Parse(txtProID.Text);
        string proname = txtProname.Text;
        decimal price = decimal.Parse(txtPrice.Text);
        int qty = int.Parse(txtqty.Text);
        string catID = ddlCategory.SelectedValue;
        using (SouqNewEntities db = new SouqNewEntities())
        {
            int rowaffected = db.AddNewProduct(ID, proname, price, qty, catID);

            if (rowaffected > 0)
            {
                lblResult.Visible = true;
                lblResult.Text = "Add New Products Succesffully";
            }
            else
            {
                lblResult.Visible = true;
                lblResult.Text = "Fail try Again";
            }
        }



        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("../ProductPhoto" + "//" + txtProname.Text + ".jpg"));
            Image1.ImageUrl = "../../ProductPhoto/" + txtProname.Text + ".jpg";
            lblPhoto.Visible = true;
            lblPhoto.Text = "Upload Product Photo Successfully";
        }

        
        GetNextProductID();

        LoadGrid();
        txtProname.Text = "";
        txtPrice.Text = "";
        txtqty.Text = "";
    }
}