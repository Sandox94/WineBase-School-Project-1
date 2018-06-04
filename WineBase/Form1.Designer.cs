namespace WineBase
{
    partial class frmWineBase
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmWineBase));
            this.cboFlavour = new System.Windows.Forms.ComboBox();
            this.cboRelatedFood = new System.Windows.Forms.ComboBox();
            this.lblRelatedFood = new System.Windows.Forms.Label();
            this.lblTaste = new System.Windows.Forms.Label();
            this.dgwShowWine = new System.Windows.Forms.DataGridView();
            this.btnSearchForWine = new System.Windows.Forms.Button();
            this.cboWineType = new System.Windows.Forms.ComboBox();
            this.lblWineType = new System.Windows.Forms.Label();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.leggTilVinIDatabasebToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.avsluttWineBaseToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.hjelpToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.omWineBaseToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.leggVinInnIDatabasenToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.startWineWizardToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.søkEtterVinToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.btnShowAllWines = new System.Windows.Forms.Button();
            this.grpWineWizardAddWineToDatabase = new System.Windows.Forms.GroupBox();
            this.lblWineMakerCountry = new System.Windows.Forms.Label();
            this.txtWineMakerCountry = new System.Windows.Forms.TextBox();
            this.lblAppropriateDescripton = new System.Windows.Forms.Label();
            this.btnAddNewValue = new System.Windows.Forms.Button();
            this.lblNameofAddedValue = new System.Windows.Forms.Label();
            this.txtNameOfAddedValue = new System.Windows.Forms.TextBox();
            this.rdoAddFlavour = new System.Windows.Forms.RadioButton();
            this.rdoAddRelatedFood = new System.Windows.Forms.RadioButton();
            this.rdoAddWineMaker = new System.Windows.Forms.RadioButton();
            this.lblAddWineMakerWineTypeRelatedFoodFlavour = new System.Windows.Forms.Label();
            this.lblUserRatingToAdd = new System.Windows.Forms.Label();
            this.lblCommentToAdd = new System.Windows.Forms.Label();
            this.txtCommentToAdd = new System.Windows.Forms.TextBox();
            this.txtUserRatingToAdd = new System.Windows.Forms.TextBox();
            this.btnAddWineToDatabase = new System.Windows.Forms.Button();
            this.lblAlcoholLevelToAdd = new System.Windows.Forms.Label();
            this.txtAlcoholLevelToAdd = new System.Windows.Forms.TextBox();
            this.lblVintageToAdd = new System.Windows.Forms.Label();
            this.txtVintageToAdd = new System.Windows.Forms.TextBox();
            this.lblWineNameToAdd = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.cboWineMakerToAdd = new System.Windows.Forms.ComboBox();
            this.txtWineNameToAdd = new System.Windows.Forms.TextBox();
            this.picWineWizard = new System.Windows.Forms.PictureBox();
            this.lblWineWizard = new System.Windows.Forms.Label();
            this.lblWineTypeToAdd = new System.Windows.Forms.Label();
            this.cboWineTypeToAdd = new System.Windows.Forms.ComboBox();
            this.lblFlavourToAdd = new System.Windows.Forms.Label();
            this.lblRelatedFoodToAdd = new System.Windows.Forms.Label();
            this.cboRelatedFoodToAdd = new System.Windows.Forms.ComboBox();
            this.cboFlavourToAdd = new System.Windows.Forms.ComboBox();
            this.tmrUpdateComboBox = new System.Windows.Forms.Timer(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.dgwShowWine)).BeginInit();
            this.menuStrip1.SuspendLayout();
            this.grpWineWizardAddWineToDatabase.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picWineWizard)).BeginInit();
            this.SuspendLayout();
            // 
            // cboFlavour
            // 
            this.cboFlavour.FormattingEnabled = true;
            this.cboFlavour.Location = new System.Drawing.Point(141, 127);
            this.cboFlavour.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.cboFlavour.Name = "cboFlavour";
            this.cboFlavour.Size = new System.Drawing.Size(160, 24);
            this.cboFlavour.TabIndex = 1;
            // 
            // cboRelatedFood
            // 
            this.cboRelatedFood.FormattingEnabled = true;
            this.cboRelatedFood.Location = new System.Drawing.Point(141, 172);
            this.cboRelatedFood.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.cboRelatedFood.Name = "cboRelatedFood";
            this.cboRelatedFood.Size = new System.Drawing.Size(160, 24);
            this.cboRelatedFood.TabIndex = 2;
            // 
            // lblRelatedFood
            // 
            this.lblRelatedFood.AutoSize = true;
            this.lblRelatedFood.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblRelatedFood.Location = new System.Drawing.Point(36, 172);
            this.lblRelatedFood.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblRelatedFood.Name = "lblRelatedFood";
            this.lblRelatedFood.Size = new System.Drawing.Size(90, 20);
            this.lblRelatedFood.TabIndex = 2;
            this.lblRelatedFood.Text = "Passer til";
            // 
            // lblTaste
            // 
            this.lblTaste.AutoSize = true;
            this.lblTaste.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTaste.Location = new System.Drawing.Point(36, 127);
            this.lblTaste.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblTaste.Name = "lblTaste";
            this.lblTaste.Size = new System.Drawing.Size(55, 20);
            this.lblTaste.TabIndex = 3;
            this.lblTaste.Text = "Smak";
            // 
            // dgwShowWine
            // 
            this.dgwShowWine.BackgroundColor = System.Drawing.Color.WhiteSmoke;
            this.dgwShowWine.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgwShowWine.GridColor = System.Drawing.SystemColors.Control;
            this.dgwShowWine.Location = new System.Drawing.Point(356, 62);
            this.dgwShowWine.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.dgwShowWine.Name = "dgwShowWine";
            this.dgwShowWine.Size = new System.Drawing.Size(1269, 337);
            this.dgwShowWine.TabIndex = 4;
            // 
            // btnSearchForWine
            // 
            this.btnSearchForWine.Image = ((System.Drawing.Image)(resources.GetObject("btnSearchForWine.Image")));
            this.btnSearchForWine.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnSearchForWine.Location = new System.Drawing.Point(141, 218);
            this.btnSearchForWine.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnSearchForWine.Name = "btnSearchForWine";
            this.btnSearchForWine.Size = new System.Drawing.Size(161, 28);
            this.btnSearchForWine.TabIndex = 4;
            this.btnSearchForWine.Text = "Søk";
            this.btnSearchForWine.UseVisualStyleBackColor = true;
            this.btnSearchForWine.Click += new System.EventHandler(this.btnSearchForWine_Click);
            // 
            // cboWineType
            // 
            this.cboWineType.FormattingEnabled = true;
            this.cboWineType.Location = new System.Drawing.Point(141, 81);
            this.cboWineType.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.cboWineType.Name = "cboWineType";
            this.cboWineType.Size = new System.Drawing.Size(160, 24);
            this.cboWineType.TabIndex = 0;
            // 
            // lblWineType
            // 
            this.lblWineType.AutoSize = true;
            this.lblWineType.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblWineType.Location = new System.Drawing.Point(36, 81);
            this.lblWineType.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblWineType.Name = "lblWineType";
            this.lblWineType.Size = new System.Drawing.Size(71, 20);
            this.lblWineType.TabIndex = 8;
            this.lblWineType.Text = "Vintype";
            // 
            // menuStrip1
            // 
            this.menuStrip1.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.leggTilVinIDatabasebToolStripMenuItem,
            this.hjelpToolStripMenuItem,
            this.leggVinInnIDatabasenToolStripMenuItem,
            this.søkEtterVinToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Padding = new System.Windows.Forms.Padding(8, 2, 0, 2);
            this.menuStrip1.Size = new System.Drawing.Size(1636, 28);
            this.menuStrip1.TabIndex = 9;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // leggTilVinIDatabasebToolStripMenuItem
            // 
            this.leggTilVinIDatabasebToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.avsluttWineBaseToolStripMenuItem});
            this.leggTilVinIDatabasebToolStripMenuItem.Name = "leggTilVinIDatabasebToolStripMenuItem";
            this.leggTilVinIDatabasebToolStripMenuItem.Size = new System.Drawing.Size(36, 24);
            this.leggTilVinIDatabasebToolStripMenuItem.Text = "Fil";
            // 
            // avsluttWineBaseToolStripMenuItem
            // 
            this.avsluttWineBaseToolStripMenuItem.Name = "avsluttWineBaseToolStripMenuItem";
            this.avsluttWineBaseToolStripMenuItem.Size = new System.Drawing.Size(198, 26);
            this.avsluttWineBaseToolStripMenuItem.Text = "Avslutt WineBase";
            this.avsluttWineBaseToolStripMenuItem.Click += new System.EventHandler(this.avsluttWineBaseToolStripMenuItem_Click);
            // 
            // hjelpToolStripMenuItem
            // 
            this.hjelpToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.omWineBaseToolStripMenuItem});
            this.hjelpToolStripMenuItem.Name = "hjelpToolStripMenuItem";
            this.hjelpToolStripMenuItem.Size = new System.Drawing.Size(57, 24);
            this.hjelpToolStripMenuItem.Text = "Hjelp";
            // 
            // omWineBaseToolStripMenuItem
            // 
            this.omWineBaseToolStripMenuItem.Name = "omWineBaseToolStripMenuItem";
            this.omWineBaseToolStripMenuItem.Size = new System.Drawing.Size(177, 26);
            this.omWineBaseToolStripMenuItem.Text = "Om WineBase";
            this.omWineBaseToolStripMenuItem.Click += new System.EventHandler(this.omWineBaseToolStripMenuItem_Click);
            // 
            // leggVinInnIDatabasenToolStripMenuItem
            // 
            this.leggVinInnIDatabasenToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.startWineWizardToolStripMenuItem});
            this.leggVinInnIDatabasenToolStripMenuItem.Name = "leggVinInnIDatabasenToolStripMenuItem";
            this.leggVinInnIDatabasenToolStripMenuItem.Size = new System.Drawing.Size(201, 24);
            this.leggVinInnIDatabasenToolStripMenuItem.Text = "Legg ny vin inn i databasen";
            // 
            // startWineWizardToolStripMenuItem
            // 
            this.startWineWizardToolStripMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("startWineWizardToolStripMenuItem.Image")));
            this.startWineWizardToolStripMenuItem.Name = "startWineWizardToolStripMenuItem";
            this.startWineWizardToolStripMenuItem.Size = new System.Drawing.Size(200, 26);
            this.startWineWizardToolStripMenuItem.Text = "Start WineWizard";
            this.startWineWizardToolStripMenuItem.Click += new System.EventHandler(this.startWineWizardToolStripMenuItem_Click);
            // 
            // søkEtterVinToolStripMenuItem
            // 
            this.søkEtterVinToolStripMenuItem.Name = "søkEtterVinToolStripMenuItem";
            this.søkEtterVinToolStripMenuItem.Size = new System.Drawing.Size(103, 24);
            this.søkEtterVinToolStripMenuItem.Text = "Søk etter vin";
            this.søkEtterVinToolStripMenuItem.Click += new System.EventHandler(this.søkEtterVinToolStripMenuItem_Click);
            // 
            // btnShowAllWines
            // 
            this.btnShowAllWines.Location = new System.Drawing.Point(141, 254);
            this.btnShowAllWines.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnShowAllWines.Name = "btnShowAllWines";
            this.btnShowAllWines.Size = new System.Drawing.Size(161, 28);
            this.btnShowAllWines.TabIndex = 10;
            this.btnShowAllWines.Text = "Vis alle";
            this.btnShowAllWines.UseVisualStyleBackColor = true;
            this.btnShowAllWines.Click += new System.EventHandler(this.btnShowAllWines_Click);
            // 
            // grpWineWizardAddWineToDatabase
            // 
            this.grpWineWizardAddWineToDatabase.BackColor = System.Drawing.SystemColors.Control;
            this.grpWineWizardAddWineToDatabase.Controls.Add(this.lblWineMakerCountry);
            this.grpWineWizardAddWineToDatabase.Controls.Add(this.txtWineMakerCountry);
            this.grpWineWizardAddWineToDatabase.Controls.Add(this.lblAppropriateDescripton);
            this.grpWineWizardAddWineToDatabase.Controls.Add(this.btnAddNewValue);
            this.grpWineWizardAddWineToDatabase.Controls.Add(this.lblNameofAddedValue);
            this.grpWineWizardAddWineToDatabase.Controls.Add(this.txtNameOfAddedValue);
            this.grpWineWizardAddWineToDatabase.Controls.Add(this.rdoAddFlavour);
            this.grpWineWizardAddWineToDatabase.Controls.Add(this.rdoAddRelatedFood);
            this.grpWineWizardAddWineToDatabase.Controls.Add(this.rdoAddWineMaker);
            this.grpWineWizardAddWineToDatabase.Controls.Add(this.lblAddWineMakerWineTypeRelatedFoodFlavour);
            this.grpWineWizardAddWineToDatabase.Controls.Add(this.lblUserRatingToAdd);
            this.grpWineWizardAddWineToDatabase.Controls.Add(this.lblCommentToAdd);
            this.grpWineWizardAddWineToDatabase.Controls.Add(this.txtCommentToAdd);
            this.grpWineWizardAddWineToDatabase.Controls.Add(this.txtUserRatingToAdd);
            this.grpWineWizardAddWineToDatabase.Controls.Add(this.btnAddWineToDatabase);
            this.grpWineWizardAddWineToDatabase.Controls.Add(this.lblAlcoholLevelToAdd);
            this.grpWineWizardAddWineToDatabase.Controls.Add(this.txtAlcoholLevelToAdd);
            this.grpWineWizardAddWineToDatabase.Controls.Add(this.lblVintageToAdd);
            this.grpWineWizardAddWineToDatabase.Controls.Add(this.txtVintageToAdd);
            this.grpWineWizardAddWineToDatabase.Controls.Add(this.lblWineNameToAdd);
            this.grpWineWizardAddWineToDatabase.Controls.Add(this.label1);
            this.grpWineWizardAddWineToDatabase.Controls.Add(this.cboWineMakerToAdd);
            this.grpWineWizardAddWineToDatabase.Controls.Add(this.txtWineNameToAdd);
            this.grpWineWizardAddWineToDatabase.Controls.Add(this.picWineWizard);
            this.grpWineWizardAddWineToDatabase.Controls.Add(this.lblWineWizard);
            this.grpWineWizardAddWineToDatabase.Controls.Add(this.lblWineTypeToAdd);
            this.grpWineWizardAddWineToDatabase.Controls.Add(this.cboWineTypeToAdd);
            this.grpWineWizardAddWineToDatabase.Controls.Add(this.lblFlavourToAdd);
            this.grpWineWizardAddWineToDatabase.Controls.Add(this.lblRelatedFoodToAdd);
            this.grpWineWizardAddWineToDatabase.Controls.Add(this.cboRelatedFoodToAdd);
            this.grpWineWizardAddWineToDatabase.Controls.Add(this.cboFlavourToAdd);
            this.grpWineWizardAddWineToDatabase.Location = new System.Drawing.Point(16, 62);
            this.grpWineWizardAddWineToDatabase.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.grpWineWizardAddWineToDatabase.Name = "grpWineWizardAddWineToDatabase";
            this.grpWineWizardAddWineToDatabase.Padding = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.grpWineWizardAddWineToDatabase.Size = new System.Drawing.Size(1609, 337);
            this.grpWineWizardAddWineToDatabase.TabIndex = 11;
            this.grpWineWizardAddWineToDatabase.TabStop = false;
            // 
            // lblWineMakerCountry
            // 
            this.lblWineMakerCountry.AutoSize = true;
            this.lblWineMakerCountry.Location = new System.Drawing.Point(1235, 210);
            this.lblWineMakerCountry.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblWineMakerCountry.Name = "lblWineMakerCountry";
            this.lblWineMakerCountry.Size = new System.Drawing.Size(46, 17);
            this.lblWineMakerCountry.TabIndex = 56;
            this.lblWineMakerCountry.Text = "label2";
            this.lblWineMakerCountry.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.lblWineMakerCountry.Visible = false;
            // 
            // txtWineMakerCountry
            // 
            this.txtWineMakerCountry.Location = new System.Drawing.Point(1239, 230);
            this.txtWineMakerCountry.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txtWineMakerCountry.Name = "txtWineMakerCountry";
            this.txtWineMakerCountry.Size = new System.Drawing.Size(332, 22);
            this.txtWineMakerCountry.TabIndex = 55;
            this.txtWineMakerCountry.Visible = false;
            // 
            // lblAppropriateDescripton
            // 
            this.lblAppropriateDescripton.AutoSize = true;
            this.lblAppropriateDescripton.Location = new System.Drawing.Point(1235, 159);
            this.lblAppropriateDescripton.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblAppropriateDescripton.Name = "lblAppropriateDescripton";
            this.lblAppropriateDescripton.Size = new System.Drawing.Size(46, 17);
            this.lblAppropriateDescripton.TabIndex = 54;
            this.lblAppropriateDescripton.Text = "label2";
            this.lblAppropriateDescripton.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.lblAppropriateDescripton.Visible = false;
            // 
            // btnAddNewValue
            // 
            this.btnAddNewValue.Location = new System.Drawing.Point(1239, 263);
            this.btnAddNewValue.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnAddNewValue.Name = "btnAddNewValue";
            this.btnAddNewValue.Size = new System.Drawing.Size(333, 46);
            this.btnAddNewValue.TabIndex = 53;
            this.btnAddNewValue.Text = "Velg hva du ønsker å legge til";
            this.btnAddNewValue.UseVisualStyleBackColor = true;
            this.btnAddNewValue.Visible = false;
            this.btnAddNewValue.Click += new System.EventHandler(this.btnAddNewValue_Click);
            // 
            // lblNameofAddedValue
            // 
            this.lblNameofAddedValue.AutoSize = true;
            this.lblNameofAddedValue.Location = new System.Drawing.Point(1381, 274);
            this.lblNameofAddedValue.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblNameofAddedValue.Name = "lblNameofAddedValue";
            this.lblNameofAddedValue.Size = new System.Drawing.Size(0, 17);
            this.lblNameofAddedValue.TabIndex = 52;
            // 
            // txtNameOfAddedValue
            // 
            this.txtNameOfAddedValue.Location = new System.Drawing.Point(1239, 180);
            this.txtNameOfAddedValue.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txtNameOfAddedValue.Name = "txtNameOfAddedValue";
            this.txtNameOfAddedValue.Size = new System.Drawing.Size(332, 22);
            this.txtNameOfAddedValue.TabIndex = 51;
            this.txtNameOfAddedValue.Visible = false;
            // 
            // rdoAddFlavour
            // 
            this.rdoAddFlavour.AutoSize = true;
            this.rdoAddFlavour.Location = new System.Drawing.Point(1503, 116);
            this.rdoAddFlavour.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.rdoAddFlavour.Name = "rdoAddFlavour";
            this.rdoAddFlavour.Size = new System.Drawing.Size(64, 21);
            this.rdoAddFlavour.TabIndex = 50;
            this.rdoAddFlavour.TabStop = true;
            this.rdoAddFlavour.Text = "Smak";
            this.rdoAddFlavour.UseVisualStyleBackColor = true;
            this.rdoAddFlavour.CheckedChanged += new System.EventHandler(this.rdoAddFlavour_CheckedChanged);
            // 
            // rdoAddRelatedFood
            // 
            this.rdoAddRelatedFood.AutoSize = true;
            this.rdoAddRelatedFood.Location = new System.Drawing.Point(1363, 116);
            this.rdoAddRelatedFood.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.rdoAddRelatedFood.Name = "rdoAddRelatedFood";
            this.rdoAddRelatedFood.Size = new System.Drawing.Size(129, 21);
            this.rdoAddRelatedFood.TabIndex = 49;
            this.rdoAddRelatedFood.TabStop = true;
            this.rdoAddRelatedFood.Text = "Anbefalt matrett";
            this.rdoAddRelatedFood.UseVisualStyleBackColor = true;
            this.rdoAddRelatedFood.CheckedChanged += new System.EventHandler(this.rdoAddRelatedFood_CheckedChanged);
            // 
            // rdoAddWineMaker
            // 
            this.rdoAddWineMaker.AutoSize = true;
            this.rdoAddWineMaker.Location = new System.Drawing.Point(1239, 116);
            this.rdoAddWineMaker.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.rdoAddWineMaker.Name = "rdoAddWineMaker";
            this.rdoAddWineMaker.Size = new System.Drawing.Size(113, 21);
            this.rdoAddWineMaker.TabIndex = 47;
            this.rdoAddWineMaker.TabStop = true;
            this.rdoAddWineMaker.Text = "Vinprodusent";
            this.rdoAddWineMaker.UseVisualStyleBackColor = true;
            this.rdoAddWineMaker.CheckedChanged += new System.EventHandler(this.rdoAddWineMaker_CheckedChanged);
            // 
            // lblAddWineMakerWineTypeRelatedFoodFlavour
            // 
            this.lblAddWineMakerWineTypeRelatedFoodFlavour.AutoSize = true;
            this.lblAddWineMakerWineTypeRelatedFoodFlavour.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblAddWineMakerWineTypeRelatedFoodFlavour.Location = new System.Drawing.Point(1221, 59);
            this.lblAddWineMakerWineTypeRelatedFoodFlavour.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblAddWineMakerWineTypeRelatedFoodFlavour.Name = "lblAddWineMakerWineTypeRelatedFoodFlavour";
            this.lblAddWineMakerWineTypeRelatedFoodFlavour.Size = new System.Drawing.Size(369, 34);
            this.lblAddWineMakerWineTypeRelatedFoodFlavour.TabIndex = 46;
            this.lblAddWineMakerWineTypeRelatedFoodFlavour.Text = "Finner du ikke ditt ønskede valg i nedtrekksmenyene?\r\nLegg til nye alternativer v" +
    "ed å velge en kategori nedenfor";
            // 
            // lblUserRatingToAdd
            // 
            this.lblUserRatingToAdd.AutoSize = true;
            this.lblUserRatingToAdd.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblUserRatingToAdd.Location = new System.Drawing.Point(29, 276);
            this.lblUserRatingToAdd.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblUserRatingToAdd.Name = "lblUserRatingToAdd";
            this.lblUserRatingToAdd.Size = new System.Drawing.Size(80, 20);
            this.lblUserRatingToAdd.TabIndex = 45;
            this.lblUserRatingToAdd.Text = "Karakter";
            // 
            // lblCommentToAdd
            // 
            this.lblCommentToAdd.AutoSize = true;
            this.lblCommentToAdd.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCommentToAdd.Location = new System.Drawing.Point(695, 50);
            this.lblCommentToAdd.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblCommentToAdd.Name = "lblCommentToAdd";
            this.lblCommentToAdd.Size = new System.Drawing.Size(157, 18);
            this.lblCommentToAdd.TabIndex = 44;
            this.lblCommentToAdd.Text = "Kommentar til vinen";
            // 
            // txtCommentToAdd
            // 
            this.txtCommentToAdd.Location = new System.Drawing.Point(592, 79);
            this.txtCommentToAdd.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txtCommentToAdd.Multiline = true;
            this.txtCommentToAdd.Name = "txtCommentToAdd";
            this.txtCommentToAdd.Size = new System.Drawing.Size(383, 120);
            this.txtCommentToAdd.TabIndex = 5;
            // 
            // txtUserRatingToAdd
            // 
            this.txtUserRatingToAdd.Location = new System.Drawing.Point(123, 271);
            this.txtUserRatingToAdd.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txtUserRatingToAdd.Name = "txtUserRatingToAdd";
            this.txtUserRatingToAdd.Size = new System.Drawing.Size(125, 22);
            this.txtUserRatingToAdd.TabIndex = 4;
            // 
            // btnAddWineToDatabase
            // 
            this.btnAddWineToDatabase.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnAddWineToDatabase.Location = new System.Drawing.Point(592, 210);
            this.btnAddWineToDatabase.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnAddWineToDatabase.Name = "btnAddWineToDatabase";
            this.btnAddWineToDatabase.Size = new System.Drawing.Size(384, 111);
            this.btnAddWineToDatabase.TabIndex = 41;
            this.btnAddWineToDatabase.Text = "LEGG VIN I DATABASE";
            this.btnAddWineToDatabase.UseVisualStyleBackColor = true;
            this.btnAddWineToDatabase.Click += new System.EventHandler(this.btnAddWineToDatabase_Click);
            // 
            // lblAlcoholLevelToAdd
            // 
            this.lblAlcoholLevelToAdd.AutoSize = true;
            this.lblAlcoholLevelToAdd.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblAlcoholLevelToAdd.Location = new System.Drawing.Point(37, 210);
            this.lblAlcoholLevelToAdd.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblAlcoholLevelToAdd.Name = "lblAlcoholLevelToAdd";
            this.lblAlcoholLevelToAdd.Size = new System.Drawing.Size(70, 20);
            this.lblAlcoholLevelToAdd.TabIndex = 40;
            this.lblAlcoholLevelToAdd.Text = "Alkohol";
            // 
            // txtAlcoholLevelToAdd
            // 
            this.txtAlcoholLevelToAdd.Location = new System.Drawing.Point(125, 208);
            this.txtAlcoholLevelToAdd.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txtAlcoholLevelToAdd.Name = "txtAlcoholLevelToAdd";
            this.txtAlcoholLevelToAdd.Size = new System.Drawing.Size(125, 22);
            this.txtAlcoholLevelToAdd.TabIndex = 3;
            // 
            // lblVintageToAdd
            // 
            this.lblVintageToAdd.AutoSize = true;
            this.lblVintageToAdd.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblVintageToAdd.Location = new System.Drawing.Point(37, 143);
            this.lblVintageToAdd.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblVintageToAdd.Name = "lblVintageToAdd";
            this.lblVintageToAdd.Size = new System.Drawing.Size(68, 20);
            this.lblVintageToAdd.TabIndex = 38;
            this.lblVintageToAdd.Text = "Årgang";
            // 
            // txtVintageToAdd
            // 
            this.txtVintageToAdd.Location = new System.Drawing.Point(123, 144);
            this.txtVintageToAdd.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txtVintageToAdd.Name = "txtVintageToAdd";
            this.txtVintageToAdd.Size = new System.Drawing.Size(125, 22);
            this.txtVintageToAdd.TabIndex = 2;
            // 
            // lblWineNameToAdd
            // 
            this.lblWineNameToAdd.AutoSize = true;
            this.lblWineNameToAdd.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblWineNameToAdd.Location = new System.Drawing.Point(71, 49);
            this.lblWineNameToAdd.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblWineNameToAdd.Name = "lblWineNameToAdd";
            this.lblWineNameToAdd.Size = new System.Drawing.Size(112, 20);
            this.lblWineNameToAdd.TabIndex = 36;
            this.lblWineNameToAdd.Text = "Produktnavn";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(359, 49);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(119, 20);
            this.label1.TabIndex = 35;
            this.label1.Text = "Vinprodusent";
            // 
            // cboWineMakerToAdd
            // 
            this.cboWineMakerToAdd.FormattingEnabled = true;
            this.cboWineMakerToAdd.Location = new System.Drawing.Point(309, 78);
            this.cboWineMakerToAdd.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.cboWineMakerToAdd.Name = "cboWineMakerToAdd";
            this.cboWineMakerToAdd.Size = new System.Drawing.Size(228, 24);
            this.cboWineMakerToAdd.TabIndex = 34;
            // 
            // txtWineNameToAdd
            // 
            this.txtWineNameToAdd.Location = new System.Drawing.Point(19, 73);
            this.txtWineNameToAdd.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txtWineNameToAdd.Multiline = true;
            this.txtWineNameToAdd.Name = "txtWineNameToAdd";
            this.txtWineNameToAdd.Size = new System.Drawing.Size(229, 30);
            this.txtWineNameToAdd.TabIndex = 1;
            this.txtWineNameToAdd.TextChanged += new System.EventHandler(this.txtWineNameToAdd_TextChanged);
            // 
            // picWineWizard
            // 
            this.picWineWizard.Image = ((System.Drawing.Image)(resources.GetObject("picWineWizard.Image")));
            this.picWineWizard.Location = new System.Drawing.Point(1001, 52);
            this.picWineWizard.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.picWineWizard.Name = "picWineWizard";
            this.picWineWizard.Size = new System.Drawing.Size(195, 270);
            this.picWineWizard.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.picWineWizard.TabIndex = 32;
            this.picWineWizard.TabStop = false;
            // 
            // lblWineWizard
            // 
            this.lblWineWizard.AutoSize = true;
            this.lblWineWizard.Font = new System.Drawing.Font("Vladimir Script", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblWineWizard.Location = new System.Drawing.Point(1033, 16);
            this.lblWineWizard.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblWineWizard.Name = "lblWineWizard";
            this.lblWineWizard.Size = new System.Drawing.Size(135, 32);
            this.lblWineWizard.TabIndex = 31;
            this.lblWineWizard.Text = "WineWizard";
            // 
            // lblWineTypeToAdd
            // 
            this.lblWineTypeToAdd.AutoSize = true;
            this.lblWineTypeToAdd.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblWineTypeToAdd.Location = new System.Drawing.Point(384, 114);
            this.lblWineTypeToAdd.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblWineTypeToAdd.Name = "lblWineTypeToAdd";
            this.lblWineTypeToAdd.Size = new System.Drawing.Size(71, 20);
            this.lblWineTypeToAdd.TabIndex = 30;
            this.lblWineTypeToAdd.Text = "Vintype";
            // 
            // cboWineTypeToAdd
            // 
            this.cboWineTypeToAdd.FormattingEnabled = true;
            this.cboWineTypeToAdd.Location = new System.Drawing.Point(309, 143);
            this.cboWineTypeToAdd.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.cboWineTypeToAdd.Name = "cboWineTypeToAdd";
            this.cboWineTypeToAdd.Size = new System.Drawing.Size(228, 24);
            this.cboWineTypeToAdd.TabIndex = 29;
            // 
            // lblFlavourToAdd
            // 
            this.lblFlavourToAdd.AutoSize = true;
            this.lblFlavourToAdd.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblFlavourToAdd.Location = new System.Drawing.Point(393, 246);
            this.lblFlavourToAdd.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblFlavourToAdd.Name = "lblFlavourToAdd";
            this.lblFlavourToAdd.Size = new System.Drawing.Size(55, 20);
            this.lblFlavourToAdd.TabIndex = 28;
            this.lblFlavourToAdd.Text = "Smak";
            // 
            // lblRelatedFoodToAdd
            // 
            this.lblRelatedFoodToAdd.AutoSize = true;
            this.lblRelatedFoodToAdd.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblRelatedFoodToAdd.Location = new System.Drawing.Point(347, 180);
            this.lblRelatedFoodToAdd.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblRelatedFoodToAdd.Name = "lblRelatedFoodToAdd";
            this.lblRelatedFoodToAdd.Size = new System.Drawing.Size(144, 20);
            this.lblRelatedFoodToAdd.TabIndex = 27;
            this.lblRelatedFoodToAdd.Text = "Anbefalt matrett";
            // 
            // cboRelatedFoodToAdd
            // 
            this.cboRelatedFoodToAdd.FormattingEnabled = true;
            this.cboRelatedFoodToAdd.Location = new System.Drawing.Point(309, 208);
            this.cboRelatedFoodToAdd.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.cboRelatedFoodToAdd.Name = "cboRelatedFoodToAdd";
            this.cboRelatedFoodToAdd.Size = new System.Drawing.Size(228, 24);
            this.cboRelatedFoodToAdd.TabIndex = 26;
            // 
            // cboFlavourToAdd
            // 
            this.cboFlavourToAdd.FormattingEnabled = true;
            this.cboFlavourToAdd.Location = new System.Drawing.Point(309, 274);
            this.cboFlavourToAdd.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.cboFlavourToAdd.Name = "cboFlavourToAdd";
            this.cboFlavourToAdd.Size = new System.Drawing.Size(228, 24);
            this.cboFlavourToAdd.TabIndex = 25;
            // 
            // frmWineBase
            // 
            this.AcceptButton = this.btnSearchForWine;
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Control;
            this.ClientSize = new System.Drawing.Size(1636, 432);
            this.Controls.Add(this.grpWineWizardAddWineToDatabase);
            this.Controls.Add(this.btnShowAllWines);
            this.Controls.Add(this.lblWineType);
            this.Controls.Add(this.cboWineType);
            this.Controls.Add(this.btnSearchForWine);
            this.Controls.Add(this.dgwShowWine);
            this.Controls.Add(this.lblTaste);
            this.Controls.Add(this.lblRelatedFood);
            this.Controls.Add(this.cboRelatedFood);
            this.Controls.Add(this.cboFlavour);
            this.Controls.Add(this.menuStrip1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MainMenuStrip = this.menuStrip1;
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.MaximizeBox = false;
            this.Name = "frmWineBase";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "WineBase";
            ((System.ComponentModel.ISupportInitialize)(this.dgwShowWine)).EndInit();
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.grpWineWizardAddWineToDatabase.ResumeLayout(false);
            this.grpWineWizardAddWineToDatabase.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picWineWizard)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox cboFlavour;
        private System.Windows.Forms.ComboBox cboRelatedFood;
        private System.Windows.Forms.Label lblRelatedFood;
        private System.Windows.Forms.Label lblTaste;
        private System.Windows.Forms.DataGridView dgwShowWine;
        private System.Windows.Forms.Button btnSearchForWine;
        private System.Windows.Forms.ComboBox cboWineType;
        private System.Windows.Forms.Label lblWineType;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem leggTilVinIDatabasebToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem avsluttWineBaseToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem hjelpToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem leggVinInnIDatabasenToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem omWineBaseToolStripMenuItem;
        private System.Windows.Forms.Button btnShowAllWines;
        private System.Windows.Forms.ToolStripMenuItem startWineWizardToolStripMenuItem;
        private System.Windows.Forms.GroupBox grpWineWizardAddWineToDatabase;
        private System.Windows.Forms.Label lblAlcoholLevelToAdd;
        private System.Windows.Forms.TextBox txtAlcoholLevelToAdd;
        private System.Windows.Forms.Label lblVintageToAdd;
        private System.Windows.Forms.TextBox txtVintageToAdd;
        private System.Windows.Forms.Label lblWineNameToAdd;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cboWineMakerToAdd;
        private System.Windows.Forms.TextBox txtWineNameToAdd;
        private System.Windows.Forms.PictureBox picWineWizard;
        private System.Windows.Forms.Label lblWineWizard;
        private System.Windows.Forms.Label lblWineTypeToAdd;
        private System.Windows.Forms.ComboBox cboWineTypeToAdd;
        private System.Windows.Forms.Label lblFlavourToAdd;
        private System.Windows.Forms.Label lblRelatedFoodToAdd;
        private System.Windows.Forms.ComboBox cboRelatedFoodToAdd;
        private System.Windows.Forms.ComboBox cboFlavourToAdd;
        private System.Windows.Forms.Timer tmrUpdateComboBox;
        private System.Windows.Forms.Button btnAddWineToDatabase;
        private System.Windows.Forms.Label lblUserRatingToAdd;
        private System.Windows.Forms.Label lblCommentToAdd;
        private System.Windows.Forms.TextBox txtCommentToAdd;
        private System.Windows.Forms.TextBox txtUserRatingToAdd;
        private System.Windows.Forms.Label lblAddWineMakerWineTypeRelatedFoodFlavour;
        private System.Windows.Forms.RadioButton rdoAddFlavour;
        private System.Windows.Forms.RadioButton rdoAddRelatedFood;
        private System.Windows.Forms.RadioButton rdoAddWineMaker;
        private System.Windows.Forms.TextBox txtNameOfAddedValue;
        private System.Windows.Forms.Button btnAddNewValue;
        private System.Windows.Forms.Label lblNameofAddedValue;
        private System.Windows.Forms.Label lblWineMakerCountry;
        private System.Windows.Forms.TextBox txtWineMakerCountry;
        private System.Windows.Forms.Label lblAppropriateDescripton;
        private System.Windows.Forms.ToolStripMenuItem søkEtterVinToolStripMenuItem;
    }
}

