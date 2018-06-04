using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Data.SqlTypes;

namespace WineBase
{
    public partial class frmWineBase : Form
    {
        string connectionStringWineDatabase = @"Data Source=CARECOPTER-PC;Initial Catalog=F1-1-15-WineDatabase;Integrated Security=True";
        //Connectionstring til den bestemte databasen
        public frmWineBase()
        {
            InitializeComponent();
            UpdateallComboBoxes();
            grpWineWizardAddWineToDatabase.Visible = false;
            
            MessageBox.Show("Velkommen til WineBase - et program for lagring og behandling av vindata. Her kan du enkelt søke etter viner basert på dine ønskede kriterier."
                        + " For å legge nye viner inn i databasen, velg 'Valg' og deretter 'Legg ny vin i databasen'", "Velkommen til WineBase");
            //Could potentially have made one single method for importing into ComboBoxes and added a parameter for the string query. However, the individual string values
            //for each query would still need to be declared here.
        }

        void ImportFoodTypeToComboBox(ComboBox cbo)
        {
            string sqlQuery = "SELECT * FROM RELATEDFOOD ORDER BY RelatedFood ASC";
            SqlConnection con = new SqlConnection(connectionStringWineDatabase);

            try
            {
                SqlCommand sql = new SqlCommand(sqlQuery, con);
                sql.CommandType = CommandType.Text;
                con.Open();
                SqlDataReader dr = sql.ExecuteReader();

                while (dr.Read() == true)
                {
                    sqlQuery = dr[0].ToString();
                    cbo.Items.Add(sqlQuery);
                }
                //end while
                con.Close();
            }
            catch (Exception error)
            {

                MessageBox.Show(error.Message + ":" + error.GetType());
            }
            //end try-catch


        }
        void ImportFlavourToComboBox(ComboBox cbo)
        {
            string sqlQuery = "SELECT * FROM FLAVOUR ORDER BY WineFlavour ASC";
            SqlConnection con = new SqlConnection(connectionStringWineDatabase);
            try
            {
                SqlCommand sql = new SqlCommand(sqlQuery, con);
                sql.CommandType = CommandType.Text;
                con.Open();
                SqlDataReader dr = sql.ExecuteReader();

                while (dr.Read() == true)
                {
                    sqlQuery = dr[0].ToString();
                    cbo.Items.Add(sqlQuery);
                }
                //end while
                con.Close();
            }
            catch (Exception error)
            {

                MessageBox.Show(error.Message + ":" + error.GetType());
            }
            //end try-catch


        }
        void ImportWineTypeToComboBox(ComboBox cbo)
        {
            string sqlQuery = "SELECT * FROM TYPEOFWINE ORDER BY WineType ASC";
            SqlConnection con = new SqlConnection(connectionStringWineDatabase);
            try
            {
                SqlCommand sql = new SqlCommand(sqlQuery, con);
                sql.CommandType = CommandType.Text;
                con.Open();
                SqlDataReader dr = sql.ExecuteReader();

                while (dr.Read() == true)
                {
                    sqlQuery = dr[0].ToString();
                    cbo.Items.Add(sqlQuery);
                }
                //end while
                con.Close();
            }
            catch (Exception error)
            {

                MessageBox.Show(error.Message + ":" + error.GetType());
            }
            //end try-catch


        }
        void ImportWineMakerToComboBox()
        {
            string sqlQuery = "SELECT * FROM MAKEROFWINE ORDER BY WineMaker ASC";
            SqlConnection con = new SqlConnection(connectionStringWineDatabase);
            try
            {
                SqlCommand sql = new SqlCommand(sqlQuery, con);
                sql.CommandType = CommandType.Text;
                con.Open();
                SqlDataReader dr = sql.ExecuteReader();

                while (dr.Read() == true)
                {
                    sqlQuery = dr[0].ToString();
                    cboWineMakerToAdd.Items.Add(sqlQuery);
                }
                //end while
                con.Close();
            }
            catch (Exception error)
            {

                MessageBox.Show(error.Message + ":" + error.GetType());
            }
            //end try-catch
        }

        private void btnSearchForWine_Click(object sender, EventArgs e)
        {

            try
            {

                string query = string.Format(@"SELECT DISTINCT WINE.ProductName, Wine.Vintage, MAKEROFWINE.WineMaker, TYPEOFWINE.WineType, WINE.AlcoholLevel,
                WINEFLAVOUR.WineFlavour, RELATEDFOODTOWINE.RelatedFood, WINE.UserRating, WINE.UserComment
                FROM WINE, WINEFLAVOUR, RELATEDFOODTOWINE, TYPEOFWINE, MAKEROFWINE
                WHERE WINE.ProductName = WINEFLAVOUR.ProductName AND WINE.WineType = TYPEOFWINE.WineType AND WINE.WineMaker = MAKEROFWINE.WineMaker AND 
                RELATEDFOODTOWINE.ProductName = WINE.ProductName AND TYPEOFWINE.WineType = '{0}' AND WINEFLAVOUR.WineFlavour = '{1}' 
                AND RELATEDFOODTOWINE.RelatedFood = '{2}'
                ORDER BY ProductName ASC", cboWineType.Text, cboFlavour.Text, cboRelatedFood.Text);
                ShowSearchResultInGridView(query);

            }
            catch (Exception error)
            {

                MessageBox.Show(error.Message + ":" + error.GetType());
            }
            //end try-catch
        }

        void ShowSearchResultInGridView(string sqlQuery)
        {
            SqlConnection con = new SqlConnection(connectionStringWineDatabase);
            SqlDataAdapter sda;
            DataTable dt;
            try
            {
                con.Open();
                sda = new SqlDataAdapter(sqlQuery, con);
                dt = new DataTable();
                sda.Fill(dt);
                dgwShowWine.DataSource = dt;
                con.Close();

            }
            catch (Exception error)
            {
                MessageBox.Show(error.Message + ":" + error.GetType().ToString());
            }
            //end try-catch
        }

        private void avsluttWineBaseToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void omWineBaseToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MessageBox.Show(@"WineBase er et program for kategorisering og lagring av informasjon tilknyttet vin. By Kevin Brueland for F1-1-15");
        }

        private void btnShowAllWines_Click(object sender, EventArgs e)
        {
            string query = @"SELECT DISTINCT WINE.ProductName, Wine.Vintage, MAKEROFWINE.WineMaker, TYPEOFWINE.WineType, WINE.AlcoholLevel, 
                            WINEFLAVOUR.WineFlavour, RELATEDFOODTOWINE.RelatedFood, WINE.UserRating, WINE.UserComment
                            FROM WINE, WINEFLAVOUR, RELATEDFOODTOWINE, TYPEOFWINE, MAKEROFWINE WHERE WINE.ProductName = WINEFLAVOUR.ProductName 
                            AND WINE.WineType = TYPEOFWINE.WineType AND WINE.WineMaker = MAKEROFWINE.WineMaker AND RELATEDFOODTOWINE.ProductName = WINE.ProductName
                            ORDER BY ProductName ASC";

            ShowSearchResultInGridView(query);
        }

        private void startWineWizardToolStripMenuItem_Click(object sender, EventArgs e)
        {
            grpWineWizardAddWineToDatabase.Visible = true;
            UpdateallComboBoxes();
            txtWineNameToAdd.Focus();
        }

        private void btnAddWineToDatabase_Click(object sender, EventArgs e)
        {
            string prodname = txtWineNameToAdd.Text;
            string vintage = txtVintageToAdd.Text;
            int vintageint = 0;
            string alcohol = txtAlcoholLevelToAdd.Text;
            int alcoholint = 0;
            string rating = txtUserRatingToAdd.Text;
            int ratingint = 0;
            string comment = txtCommentToAdd.Text;
            string winemaker = cboWineMakerToAdd.Text;
            string winetype = cboWineTypeToAdd.Text;
            string flavour = cboFlavourToAdd.Text;
            string relatedFood = cboRelatedFoodToAdd.Text;

            if (!string.IsNullOrWhiteSpace(prodname) && int.TryParse(vintage, out vintageint) && int.TryParse(alcohol, out alcoholint) && int.TryParse(rating, out ratingint))
            {

                SqlConnection con = new SqlConnection(connectionStringWineDatabase);
                try
                {
                    SqlCommand sqlwine = new SqlCommand("procInsertWine", con);
                    sqlwine.CommandType = CommandType.StoredProcedure;
                    con.Open();
                    sqlwine.Parameters.Add(new SqlParameter("@prodName", prodname));
                    sqlwine.Parameters.Add(new SqlParameter("@vintage", vintageint));
                    sqlwine.Parameters.Add(new SqlParameter("@alcohol", alcoholint));
                    sqlwine.Parameters.Add(new SqlParameter("@rating", ratingint));
                    sqlwine.Parameters.Add(new SqlParameter("@comment", comment));
                    sqlwine.Parameters.Add(new SqlParameter("@wineMaker", winemaker));
                    sqlwine.Parameters.Add(new SqlParameter("@wineType", winetype));
                    sqlwine.ExecuteNonQuery();


                    SqlCommand sqlfood = new SqlCommand("procInsertWineAndFood", con);
                    sqlfood.CommandType = CommandType.StoredProcedure;
                    sqlfood.Parameters.Add(new SqlParameter("@relatedFood", relatedFood));
                    sqlfood.Parameters.Add(new SqlParameter("@prodName", prodname));
                    sqlfood.Parameters.Add(new SqlParameter("@vintage", vintageint));
                    sqlfood.ExecuteNonQuery();

                    SqlCommand sqlflavour = new SqlCommand("procInsertWineAndFlavour", con);
                    sqlflavour.CommandType = CommandType.StoredProcedure;
                    sqlflavour.Parameters.Add(new SqlParameter("@flavour", flavour));
                    sqlflavour.Parameters.Add(new SqlParameter("@prodName", prodname));
                    sqlflavour.Parameters.Add(new SqlParameter("@vintage", vintageint));
                    sqlflavour.ExecuteNonQuery();

                    con.Close();
                    grpWineWizardAddWineToDatabase.Visible = false;
                }

                catch (Exception error)
                {
                    MessageBox.Show(error.Message + ":" + error.GetType());
                }
                //end try-catch
            }
            else
            {
                MessageBox.Show("For å registrere en vin, må det minst oppgis et produktnavn og en årgang." +
                                " I tillegg må både alkoholprosent og karakter være i tallformat", "Formatering av vindata");
            }
            //end if

            string query = @"SELECT DISTINCT WINE.ProductName, Wine.Vintage, MAKEROFWINE.WineMaker, TYPEOFWINE.WineType, WINE.AlcoholLevel, 
                            WINEFLAVOUR.WineFlavour, RELATEDFOODTOWINE.RelatedFood, WINE.UserRating, WINE.UserComment
                            FROM WINE, WINEFLAVOUR, RELATEDFOODTOWINE, TYPEOFWINE, MAKEROFWINE
                            WHERE WINE.ProductName = WINEFLAVOUR.ProductName AND WINE.WineType = TYPEOFWINE.WineType AND WINE.WineMaker = MAKEROFWINE.WineMaker
                            AND RELATEDFOODTOWINE.ProductName = WINE.ProductName
                            ORDER BY ProductName ASC";
            ShowSearchResultInGridView(query);
        }
        private void rdoAddWineMaker_CheckedChanged(object sender, EventArgs e)
        {
            btnAddNewValue.Text = "Legg til ny vinprodusent";
            lblAppropriateDescripton.Text = "Navn på vinprodusent";
            lblWineMakerCountry.Text = "Vinprodusentens land";
            lblAppropriateDescripton.Visible = true;
            lblWineMakerCountry.Visible = true;
            txtWineMakerCountry.Visible = true;
            txtNameOfAddedValue.Visible = true;
            btnAddNewValue.Visible = true;
            txtNameOfAddedValue.Focus();
        }
        void UpdateallComboBoxes()
        {
            cboFlavour.Items.Clear();
            cboFlavourToAdd.Items.Clear();
            cboRelatedFood.Items.Clear();
            cboRelatedFoodToAdd.Items.Clear();
            cboWineMakerToAdd.Items.Clear();
            cboWineType.Items.Clear();
            cboWineTypeToAdd.Items.Clear();
            ImportFoodTypeToComboBox(cboRelatedFood);
            ImportFlavourToComboBox(cboFlavour);
            ImportWineTypeToComboBox(cboWineType);
            cboWineType.SelectedIndex = 0;
            cboRelatedFood.SelectedIndex = 0;
            cboFlavour.SelectedIndex = 0;
            ImportWineMakerToComboBox();
            cboWineMakerToAdd.SelectedIndex = 0;
            ImportWineTypeToComboBox(cboWineTypeToAdd);
            cboWineTypeToAdd.SelectedIndex = 0;
            ImportFlavourToComboBox(cboFlavourToAdd);
            cboFlavourToAdd.SelectedIndex = 0;
            ImportFoodTypeToComboBox(cboRelatedFoodToAdd);
            cboRelatedFoodToAdd.SelectedIndex = 0;

        }

        private void rdoAddRelatedFood_CheckedChanged(object sender, EventArgs e)
        {
            btnAddNewValue.Text = "Legg til ny anbefalt matrett";
            lblAppropriateDescripton.Text = "Navn på matrett";
            lblAppropriateDescripton.Visible = true;
            lblWineMakerCountry.Visible = false;
            txtWineMakerCountry.Visible = false;
            txtNameOfAddedValue.Visible = true;
            btnAddNewValue.Visible = true;
            txtNameOfAddedValue.Focus();
        }

        private void rdoAddFlavour_CheckedChanged(object sender, EventArgs e)
        {
            btnAddNewValue.Text = "Legg til ny smak";
            lblAppropriateDescripton.Text = "Navn på smak";
            lblAppropriateDescripton.Visible = true;
            lblWineMakerCountry.Visible = false;
            txtWineMakerCountry.Visible = false;
            txtNameOfAddedValue.Visible = true;
            btnAddNewValue.Visible = true;
            txtNameOfAddedValue.Focus();
        }
        private void btnAddNewValue_Click(object sender, EventArgs e)
        {
            string value = txtNameOfAddedValue.Text;
            string wineMakerCountry = txtWineMakerCountry.Text;

            if (!string.IsNullOrWhiteSpace(value))
            {
                try
                {
                    if (rdoAddWineMaker.Checked && !string.IsNullOrWhiteSpace(wineMakerCountry))
                    {
                        string query = string.Format(@"INSERT INTO MAKEROFWINE VALUES ('{0}','{1}')", value, wineMakerCountry);
                        SqlConnection con = new SqlConnection(connectionStringWineDatabase);
                        
                        con.Open();
                        SqlCommand sql = new SqlCommand(query, con);
                        sql.CommandType = CommandType.Text;
                        sql.ExecuteNonQuery();
                        con.Close();

                    }
                    else if (rdoAddRelatedFood.Checked)
                    {
                        string query = string.Format(@"INSERT INTO RELATEDFOOD VALUES ('{0}')", value);
                        SqlConnection con = new SqlConnection(connectionStringWineDatabase);
                        con.Open();
                        SqlCommand sql = new SqlCommand(query, con);
                        sql.ExecuteNonQuery();
                        con.Close();
                    }
                    else if (rdoAddFlavour.Checked)
                    {
                        string query = string.Format(@"INSERT INTO FLAVOUR VALUES ('{0}')", value);
                        SqlConnection con = new SqlConnection(connectionStringWineDatabase);
                        con.Open();
                        SqlCommand sql = new SqlCommand(query, con);
                        sql.ExecuteNonQuery();
                        con.Close();
                    }
                }
                catch (Exception error)
                {
                    MessageBox.Show(error.Message + ":" + error.GetType());
                }
            }
            else
            {
                MessageBox.Show("Tekstfelter må inneholde en verdi for å bli registert", "Manglende registrering");
               
            }
            UpdateallComboBoxes();
            txtNameOfAddedValue.Clear();
            txtWineMakerCountry.Clear();
        }

        private void søkEtterVinToolStripMenuItem_Click(object sender, EventArgs e)
        {
            foreach (Control gb in this.Controls)
            {
                if (gb is GroupBox)
                {
                    foreach (Control tb in gb.Controls)
                    {
                        if (tb is TextBox)
                        {
                            tb.Text = string.Empty;
                        }
                    }
                }
            }
            grpWineWizardAddWineToDatabase.Visible = false;
            UpdateallComboBoxes();

        }

        private void txtWineNameToAdd_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
