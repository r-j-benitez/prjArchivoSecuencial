       class-id prjArchivoSecuencial.Main.
       
       method-id Main static
           attribute System.STAThread.
       local-storage section.
       01 mainForm type prjArchivoSecuencial.frmArchivoSecuencial.
       procedure division.
       
           set mainForm to new prjArchivoSecuencial.frmArchivoSecuencial()
           invoke type System.Windows.Forms.Application::EnableVisualStyles()
           invoke type System.Windows.Forms.Application::Run(mainForm)
           goback.
       
       end method.
       
       end class.
