       class-id prjArchivoSecuencial.frmLecturaSecuencial
                 is partial inherits type System.Windows.Forms.Form.

       01 dataGridView1 type System.Windows.Forms.DataGridView.
       01 Column1 type System.Windows.Forms.DataGridViewTextBoxColumn.
       01 Column2 type System.Windows.Forms.DataGridViewTextBoxColumn.
       01 Column3 type System.Windows.Forms.DataGridViewTextBoxColumn.
       01 Column4 type System.Windows.Forms.DataGridViewTextBoxColumn.
       01 Column5 type System.Windows.Forms.DataGridViewTextBoxColumn.
       01 btnBuscar type System.Windows.Forms.Button.
       01 components type System.ComponentModel.IContainer.

      *> Required method for Designer support - do not modify
      *> the contents of this method with the code editor.
       method-id InitializeComponent private.
       procedure division.
       set dataGridView1 to new System.Windows.Forms.DataGridView
       set Column1 to new System.Windows.Forms.DataGridViewTextBoxColumn
       set Column2 to new System.Windows.Forms.DataGridViewTextBoxColumn
       set Column3 to new System.Windows.Forms.DataGridViewTextBoxColumn
       set Column4 to new System.Windows.Forms.DataGridViewTextBoxColumn
       set Column5 to new System.Windows.Forms.DataGridViewTextBoxColumn
       set btnBuscar to new System.Windows.Forms.Button
       invoke dataGridView1 as type System.ComponentModel.ISupportInitialize::BeginInit
       invoke self::SuspendLayout
      *> 
      *> dataGridView1
      *> 
       set dataGridView1::ColumnHeadersHeightSizeMode to type System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode::AutoSize
       invoke dataGridView1::Columns::AddRange(table of type System.Windows.Forms.DataGridViewColumn(Column1 Column2 Column3 Column4 Column5))
       set dataGridView1::Location to new System.Drawing.Point(6 54)
       set dataGridView1::Name to "dataGridView1"
       set dataGridView1::Size to new System.Drawing.Size(556 258)
       set dataGridView1::TabIndex to 0
      *> 
      *> Column1
      *> 
       set Column1::HeaderText to "Número"
       set Column1::Name to "Column1"
      *> 
      *> Column2
      *> 
       set Column2::HeaderText to "Nombre"
       set Column2::Name to "Column2"
      *> 
      *> Column3
      *> 
       set Column3::HeaderText to "Apellido"
       set Column3::Name to "Column3"
      *> 
      *> Column4
      *> 
       set Column4::HeaderText to "Sexo"
       set Column4::Name to "Column4"
      *> 
      *> Column5
      *> 
       set Column5::HeaderText to "Estado Civil"
       set Column5::Name to "Column5"
      *> 
      *> btnBuscar
      *> 
       set btnBuscar::Location to new System.Drawing.Point(462 12)
       set btnBuscar::Name to "btnBuscar"
       set btnBuscar::Size to new System.Drawing.Size(100 29)
       set btnBuscar::TabIndex to 1
       set btnBuscar::Text to "Buscar"
       set btnBuscar::UseVisualStyleBackColor to True
       invoke btnBuscar::add_Click(new System.EventHandler(self::btnBuscar_Click))
      *> 
      *> Form3
      *> 
       set self::ClientSize to new System.Drawing.Size(571 318)
       invoke self::Controls::Add(btnBuscar)
       invoke self::Controls::Add(dataGridView1)
       set self::Name to "Form3"
       set self::Text to "Form3"
       invoke dataGridView1 as type System.ComponentModel.ISupportInitialize::EndInit
       invoke self::ResumeLayout(False)
       end method.

      *> Clean up any resources being used.
       method-id Dispose override is protected.
       procedure division using by value disposing as condition-value.
           if disposing then
               if components not = null then
                   invoke components::Dispose()
               end-if
           end-if
           invoke super::Dispose(by value disposing)
           goback.
       end method.

       end class.
