       class-id prjArchivoSecuencial.frmArchivoSecuencial is partial
                 inherits type System.Windows.Forms.Form.
       
       01 label1 type System.Windows.Forms.Label.
       01 label2 type System.Windows.Forms.Label.
       01 btnEnviar type System.Windows.Forms.Button.
       01 txtNombre type System.Windows.Forms.TextBox.
       01 txtApellido type System.Windows.Forms.TextBox.
       01 btnCancelar type System.Windows.Forms.Button.
       01 radFemenino type System.Windows.Forms.RadioButton.
       01 radMasculino type System.Windows.Forms.RadioButton.
       01 cboEstadoCivil type System.Windows.Forms.ComboBox.
       01 label3 type System.Windows.Forms.Label.
       01 groupBox1 type System.Windows.Forms.GroupBox.
       01 groupBox2 type System.Windows.Forms.GroupBox.
       01 chkEstudia type System.Windows.Forms.CheckBox.
       01 chkTrabaja type System.Windows.Forms.CheckBox.
       01 label4 type System.Windows.Forms.Label.
       01 txtNumero type System.Windows.Forms.TextBox.
       01 components type System.ComponentModel.IContainer.
      
      *> Required method for Designer support - do not modify
      *> the contents of this method with the code editor.
       method-id InitializeComponent private.
       procedure division.
       set label1 to new System.Windows.Forms.Label
       set label2 to new System.Windows.Forms.Label
       set txtNombre to new System.Windows.Forms.TextBox
       set txtApellido to new System.Windows.Forms.TextBox
       set btnEnviar to new System.Windows.Forms.Button
       set btnCancelar to new System.Windows.Forms.Button
       set radFemenino to new System.Windows.Forms.RadioButton
       set radMasculino to new System.Windows.Forms.RadioButton
       set cboEstadoCivil to new System.Windows.Forms.ComboBox
       set label3 to new System.Windows.Forms.Label
       set groupBox1 to new System.Windows.Forms.GroupBox
       set groupBox2 to new System.Windows.Forms.GroupBox
       set chkEstudia to new System.Windows.Forms.CheckBox
       set chkTrabaja to new System.Windows.Forms.CheckBox
       set label4 to new System.Windows.Forms.Label
       set txtNumero to new System.Windows.Forms.TextBox
       invoke groupBox1::SuspendLayout
       invoke groupBox2::SuspendLayout
       invoke self::SuspendLayout
      *> 
      *> label1
      *> 
       set label1::AutoSize to True
       set label1::Location to new System.Drawing.Point(41 60)
       set label1::Name to "label1"
       set label1::Size to new System.Drawing.Size(44 13)
       set label1::TabIndex to 0
       set label1::Text to "Nombre"
      *> 
      *> label2
      *> 
       set label2::AutoSize to True
       set label2::Location to new System.Drawing.Point(41 90)
       set label2::Name to "label2"
       set label2::Size to new System.Drawing.Size(44 13)
       set label2::TabIndex to 1
       set label2::Text to "Apellido"
      *> 
      *> txtNombre
      *> 
       set txtNombre::Location to new System.Drawing.Point(91 53)
       set txtNombre::Name to "txtNombre"
       set txtNombre::Size to new System.Drawing.Size(100 20)
       set txtNombre::TabIndex to 2
      *> 
      *> txtApellido
      *> 
       set txtApellido::Location to new System.Drawing.Point(91 83)
       set txtApellido::Name to "txtApellido"
       set txtApellido::Size to new System.Drawing.Size(177 20)
       set txtApellido::TabIndex to 3
      *> 
      *> btnEnviar
      *> 
       set btnEnviar::Location to new System.Drawing.Point(91 297)
       set btnEnviar::Name to "btnEnviar"
       set btnEnviar::Size to new System.Drawing.Size(75 23)
       set btnEnviar::TabIndex to 8
       set btnEnviar::Text to "Enviar"
       set btnEnviar::UseVisualStyleBackColor to True
       invoke btnEnviar::add_Click(new System.EventHandler(self::BtnEnviar_Click))
      *> 
      *> btnCancelar
      *> 
       set btnCancelar::Location to new System.Drawing.Point(172 297)
       set btnCancelar::Name to "btnCancelar"
       set btnCancelar::Size to new System.Drawing.Size(75 23)
       set btnCancelar::TabIndex to 9
       set btnCancelar::Text to "Cancelar"
       set btnCancelar::UseVisualStyleBackColor to True
       invoke btnCancelar::add_Click(new System.EventHandler(self::btnCancelar_Click))
      *> 
      *> radFemenino
      *> 
       set radFemenino::AutoSize to True
       set radFemenino::Location to new System.Drawing.Point(6 23)
       set radFemenino::Name to "radFemenino"
       set radFemenino::Size to new System.Drawing.Size(71 17)
       set radFemenino::TabIndex to 4
       set radFemenino::Text to "Femenino"
       set radFemenino::UseVisualStyleBackColor to True
      *> 
      *> radMasculino
      *> 
       set radMasculino::AutoSize to True
       set radMasculino::Location to new System.Drawing.Point(83 23)
       set radMasculino::Name to "radMasculino"
       set radMasculino::Size to new System.Drawing.Size(73 17)
       set radMasculino::TabIndex to 5
       set radMasculino::Text to "Masculino"
       set radMasculino::UseVisualStyleBackColor to True
      *> 
      *> cboEstadoCivil
      *> 
       set cboEstadoCivil::FormattingEnabled to True
       set cboEstadoCivil::Location to new System.Drawing.Point(91 173)
       set cboEstadoCivil::Name to "cboEstadoCivil"
       set cboEstadoCivil::Size to new System.Drawing.Size(121 21)
       set cboEstadoCivil::TabIndex to 6
      *> 
      *> label3
      *> 
       set label3::AutoSize to True
       set label3::Location to new System.Drawing.Point(23 176)
       set label3::Name to "label3"
       set label3::Size to new System.Drawing.Size(62 13)
       set label3::TabIndex to 9
       set label3::Text to "Estado Civil"
      *> 
      *> groupBox1
      *> 
       invoke groupBox1::Controls::Add(radFemenino)
       invoke groupBox1::Controls::Add(radMasculino)
       set groupBox1::Location to new System.Drawing.Point(91 116)
       set groupBox1::Name to "groupBox1"
       set groupBox1::Size to new System.Drawing.Size(177 51)
       set groupBox1::TabIndex to 4
       set groupBox1::TabStop to False
       set groupBox1::Text to "Sexo"
      *> 
      *> groupBox2
      *> 
       invoke groupBox2::Controls::Add(chkEstudia)
       invoke groupBox2::Controls::Add(chkTrabaja)
       set groupBox2::Location to new System.Drawing.Point(91 200)
       set groupBox2::Name to "groupBox2"
       set groupBox2::Size to new System.Drawing.Size(177 79)
       set groupBox2::TabIndex to 7
       set groupBox2::TabStop to False
       set groupBox2::Text to "Ocupación"
      *> 
      *> chkEstudia
      *> 
       set chkEstudia::AutoSize to True
       set chkEstudia::Location to new System.Drawing.Point(7 44)
       set chkEstudia::Name to "chkEstudia"
       set chkEstudia::Size to new System.Drawing.Size(61 17)
       set chkEstudia::TabIndex to 8
       set chkEstudia::Text to "Estudia"
       set chkEstudia::UseVisualStyleBackColor to True
      *> 
      *> chkTrabaja
      *> 
       set chkTrabaja::AutoSize to True
       set chkTrabaja::Location to new System.Drawing.Point(7 20)
       set chkTrabaja::Name to "chkTrabaja"
       set chkTrabaja::Size to new System.Drawing.Size(62 17)
       set chkTrabaja::TabIndex to 7
       set chkTrabaja::Text to "Trabaja"
       set chkTrabaja::UseVisualStyleBackColor to True
      *> 
      *> label4
      *> 
       set label4::AutoSize to True
       set label4::Location to new System.Drawing.Point(41 26)
       set label4::Name to "label4"
       set label4::Size to new System.Drawing.Size(44 13)
       set label4::TabIndex to 12
       set label4::Text to "Número"
      *> 
      *> txtNumero
      *> 
       set txtNumero::Location to new System.Drawing.Point(91 23)
       set txtNumero::Name to "txtNumero"
       set txtNumero::Size to new System.Drawing.Size(100 20)
       set txtNumero::TabIndex to 1
      *> 
      *> Form1
      *> 
       set self::ClientSize to new System.Drawing.Size(293 354)
       invoke self::Controls::Add(txtNumero)
       invoke self::Controls::Add(label4)
       invoke self::Controls::Add(groupBox2)
       invoke self::Controls::Add(groupBox1)
       invoke self::Controls::Add(label3)
       invoke self::Controls::Add(cboEstadoCivil)
       invoke self::Controls::Add(btnCancelar)
       invoke self::Controls::Add(btnEnviar)
       invoke self::Controls::Add(txtApellido)
       invoke self::Controls::Add(txtNombre)
       invoke self::Controls::Add(label2)
       invoke self::Controls::Add(label1)
       set self::Name to "Form1"
       set self::Text to "Formulario Inscripcion"
       invoke groupBox1::ResumeLayout(False)
       invoke groupBox1::PerformLayout
       invoke groupBox2::ResumeLayout(False)
       invoke groupBox2::PerformLayout
       invoke self::ResumeLayout(False)
       invoke self::PerformLayout
       end method.

      *> Clean up any resources being used.      
       method-id Dispose override protected.
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
