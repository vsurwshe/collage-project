using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class _Default : System.Web.UI.Page 
{
   
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
       
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        //disp();
   
    }
    protected void Button1_Click(object sender, EventArgs e)

    {
        //Image1.ImageUrl = "C:\\rivemap\\NNDAsna.jpg";
       // Image1.ImageUrl = "App_Data\\rivermap\\NNDAsna.jpg";
        string s2 = Image1.ImageUrl;
       
        string dist = DropDownList1.SelectedItem.Text;
        string rive = DropDownList3.SelectedItem.Text;
       
        //Label1.Text = rive;
        if (dist == "Nanded")
        {
            if (rive == "Godavari ")
            {
                //Image1.ImageUrl="C:\\rivermap\\NNDAsna.jpg";
                //Label1.Text = rive;
                //Image1.ImageUrl = "~/NNDAsna.jpg";
                Image1.ImageUrl = "~/NNDGOD.jpg";
            }
            if (rive == "Manar ")
            {
                Image1.ImageUrl = "~/NNDManar.jpg";
            }
            if (rive == "Lendi ")
            {
                Image1.ImageUrl = "~/NNDLENDI.jpg";
            }
            if (rive == "Penganga ")
            {
                Image1.ImageUrl = "~/NNDPEN.jpg";
            }
            if (rive == "Sudda Vagu")
            {
                //Image1.ImageUrl = "~/NNDSudha.jpg";
            }
            if (rive == "Tiru")
            {
                //Image1.ImageUrl = "~/NNDTiru.jpg";
            }



        }
        
  
       // disp();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        DropDownList3.Items.Clear();
  
        string message = DropDownList1.SelectedItem.Text;
        if (message=="Nanded")
        {
            Image1.ImageUrl = "~/Nanded.jpg";
           // Image1.ImageUrl = "~/NNDTiru.jpg";
            DropDownList3.Items.Clear();
            //DropDownList3.Items.Add("Aran ");
            //DropDownList3.Items.Add("AsnaN");
            DropDownList3.Items.Add("Godavari ");
            //DropDownList3.Items.Add("Gundarguni ");
            //DropDownList3.Items.Add("Kahala N ");
            //DropDownList3.Items.Add("Kahala R ");
            DropDownList3.Items.Add("Kayadhu ");
            DropDownList3.Items.Add("Lendi ");
            DropDownList3.Items.Add("Manar ");
            //DropDownList3.Items.Add("Mandhlaa ");
            //DropDownList3.Items.Add("Manjra ");
            //DropDownList3.Items.Add("Parvati ");
            DropDownList3.Items.Add("Penganga ");
            //DropDownList3.Items.Add("Pus ");
            //DropDownList3.Items.Add("Siddha ");
            //DropDownList3.Items.Add("Sudda Vagu"); 
            //DropDownList3.Items.Add("Tiru");

        }
        
        if (message == "Aurangabad")
        {
            DropDownList3.Items.Clear();
            DropDownList3.Items.Add("Adri  ");
            DropDownList3.Items.Add("Batane  ");
            DropDownList3.Items.Add("Batra  ");
            DropDownList3.Items.Add("Kararwar ");
            DropDownList3.Items.Add("Keshar  ");
            DropDownList3.Items.Add("Madar  ");
            DropDownList3.Items.Add("Punpun");
            DropDownList3.Items.Add("Son ");
           
        }
        if (message == "Beed")

        {
            DropDownList3.Items.Clear();
            DropDownList3.Items.Add("Meheri  ");
            DropDownList3.Items.Add("Sina  ");
            DropDownList3.Items.Add("Amrut ");
            DropDownList3.Items.Add("Bindusura  ");
            DropDownList3.Items.Add("Domri  ");
            DropDownList3.Items.Add("Godavari  ");
            DropDownList3.Items.Add("Gunwara ");
            DropDownList3.Items.Add("Kinha  ");
            DropDownList3.Items.Add("Kundka ");
            DropDownList3.Items.Add("Lendi");
            DropDownList3.Items.Add("Manar ");
            DropDownList3.Items.Add("Manjra  ");
            DropDownList3.Items.Add("Sina ");
            DropDownList3.Items.Add("Sindhphana  ");
            DropDownList3.Items.Add("Sindphana  ");
            DropDownList3.Items.Add("Tukur");
            DropDownList3.Items.Add("Wan ");

        }
        if (message == "Hingoli")
        {
            DropDownList3.Items.Add("Asna N ");
            DropDownList3.Items.Add(" Godavari ");
            DropDownList3.Items.Add("Kayadhu  ");
            DropDownList3.Items.Add("Mandhlaa   ");
            DropDownList3.Items.Add("Penganga  ");
            DropDownList3.Items.Add("Purna  ");
            

        }
        if (message == "Jalana")
        {
            DropDownList3.Items.Add("Ashti  ");
            DropDownList3.Items.Add("Bhadrayani   ");
            DropDownList3.Items.Add("Dhamna");
            DropDownList3.Items.Add("Dudhana");
            DropDownList3.Items.Add("Galhati");
            DropDownList3.Items.Add("Girja ");
            DropDownList3.Items.Add("Godavari ");
            DropDownList3.Items.Add("Jul ");
            DropDownList3.Items.Add("Kalyani");
            DropDownList3.Items.Add("Kastora ");
            DropDownList3.Items.Add("Khelna ");
            DropDownList3.Items.Add("Kundalika  ");
            DropDownList3.Items.Add("Lahuki ");
            DropDownList3.Items.Add("Livarakha  ");
            DropDownList3.Items.Add("Purna   ");
            DropDownList3.Items.Add("Vidrupa ");
            DropDownList3.Items.Add("Wak ");

        }
        if (message == "Latur")
        {
            DropDownList3.Items.Add("Dev N   ");
            DropDownList3.Items.Add("Gharni ");
            DropDownList3.Items.Add("Karanja ");
            DropDownList3.Items.Add("Lendi ");
            DropDownList3.Items.Add("Manar ");
            DropDownList3.Items.Add("Manjra  ");
            DropDownList3.Items.Add("Tirna ");
            DropDownList3.Items.Add("Tiru");
           
           
        }
        if (message == "Ossmanabad")
        {
            DropDownList3.Items.Add("Benithora ");
            DropDownList3.Items.Add("Benituru ");
            DropDownList3.Items.Add("Bori  ");
            DropDownList3.Items.Add("Manjra ");
            DropDownList3.Items.Add("Sina   ");
            DropDownList3.Items.Add("Tirna ");
           
        }
        if (message == "Parbhani")
        {
            DropDownList3.Items.Add("Ashti ");
            DropDownList3.Items.Add("Borna ");
            DropDownList3.Items.Add("Dhond ");
            DropDownList3.Items.Add("Dudhana ");
            DropDownList3.Items.Add("Galati ");
            DropDownList3.Items.Add("Godavari ");
            DropDownList3.Items.Add("Indrayani ");
            DropDownList3.Items.Add("Kadki ");
            DropDownList3.Items.Add("Kastora ");
            DropDownList3.Items.Add("Macchill ");
            DropDownList3.Items.Add("Pingalgad  ");
            DropDownList3.Items.Add("Purna ");
            DropDownList3.Items.Add("Sindhphana");
            DropDownList3.Items.Add("Wan");
           

        }
       
       
       

       
       
       



    }
    

}
