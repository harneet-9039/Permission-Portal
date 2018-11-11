using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace AppPortal.Common
{
    public class PDFConverter
    {
        public static int DoConvert(string FileName, String HTMLFileName) {
           
            try
            {
                // create the API client instance
                pdfcrowd.HtmlToPdfClient client = new pdfcrowd.HtmlToPdfClient(
                    "HAR6432", "e7a85783be8be6c6adda49b7f034f3bb");

                // create output stream for conversion result
                if (File.Exists(HttpContext.Current.Server.MapPath("~/Applications/" + FileName + ".pdf")))
                    File.Delete(HttpContext.Current.Server.MapPath("~/Applications/" + FileName + ".pdf"));
                FileStream outputStream = new FileStream(HttpContext.Current.Server.MapPath("~/Applications/" + FileName+".pdf"), FileMode.CreateNew);

                // run the conversion and write the result into the output stream
                client.convertFileToStream(HttpContext.Current.Server.MapPath(HTMLFileName), outputStream);


                // close the output stream
                outputStream.Close();
                return 1;
            }
            catch (pdfcrowd.Error why)
            {
                // report the error
                System.Console.Error.WriteLine("Pdfcrowd Error: " + why);
                return 0;
                // handle the exception here or rethrow and handle it at a higher level
                throw;
            }
        }
    }
}