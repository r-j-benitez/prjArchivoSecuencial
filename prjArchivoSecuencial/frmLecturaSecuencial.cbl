       class-id prjArchivoSecuencial.frmLecturaSecuencial is partial
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
           invoke self::InitializeComponent()
           goback.
       end method.

       method-id btnBuscar_Click final private.
       procedure division using by value sender as object e as type System.EventArgs.
           invoke dataGridView1::Rows::Clear
           open input alumno
           read alumno
           perform until fs-alumno <> "00"
               invoke dataGridView1::Rows::Add(numero, nombre::Trim, apellido::Trim, sexo, estadoCivil)
               read alumno
           end-perform
           close alumno
       end method.

       end class.
