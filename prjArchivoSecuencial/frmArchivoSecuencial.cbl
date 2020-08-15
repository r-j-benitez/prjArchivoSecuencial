       class-id prjArchivoSecuencial.frmArchivoSecuencial is partial
                 inherits type System.Windows.Forms.Form.

                 Select alumno assign to "alumno.txt"
                       organization line sequential
                       file status fs-alumno.

       fd alumno.
       01 alumno-registro.
         03 numero      pic 9(05).   *> Hasta 99999
         03 nombre      pic x(25).
         03 apellido    pic x(25).
         03 sexo        pic x(10).
         03 estadoCivil pic 9.
         03 ocupacion.
           05 trabaja   pic 9.
           05 estudia   pic 9.

       working-storage section.
       01 fs-alumno pic xx.

       method-id NEW.
       procedure division.
           invoke self::InitializeComponent
           invoke cboEstadoCivil::Items::Add("Soltero")
           invoke cboEstadoCivil::Items::Add("Casado")
           invoke cboEstadoCivil::Items::Add("Divorciado")
           invoke cboEstadoCivil::Items::Add("Viudo")
           goback.
       end method.

       method-id BtnEnviar_Click final private.
       procedure division using by value sender as object e as type System.EventArgs.
           if txtNombre::TextLength = 0 then
               invoke type MessageBox::Show("Falta Nombre")
               invoke txtNombre::Focus
           else
               if txtApellido::TextLength = 0 then
                   invoke type MessageBox::Show("Falta Apellido")
                   invoke txtApellido::Focus
               else
                   if radFemenino::Checked = false and
                     radMasculino::Checked = false then
                       invoke type MessageBox::Show("Seleccione Sexo")
                   else
                       if cboEstadoCivil::SelectedIndex = -1 then
                           invoke type MessageBox::Show("Seleccione Estado Civil")
                           invoke cboEstadoCivil::Focus
                       else
                           open extend alumno
                           set numero  to type Convert::ToInt32(txtNumero::Text)
                           set nombre  to txtNombre::Text
                           set apellido to txtApellido::Text
                           if radFemenino::Checked 
                               set sexo to "Femenino"
                           else
                               set sexo to "Masculino"
                           end-if
                           set estadoCivil to cboEstadoCivil::SelectedIndex
                           set trabaja  to type Convert::ToInt32(chkTrabaja::Checked)
                           set estudia  to type Convert::ToInt32(chkEstudia::Checked)
                           write alumno-registro
                           close alumno

                           invoke type MessageBox::Show("Datos Correctos!" )
                       end-if
                   end-if
               end-if
            end-if
       end method.

       method-id btnCancelar_Click final private.
       procedure division using by value sender as object e as type System.EventArgs.
           invoke self::Close
       end method.

       end class.
