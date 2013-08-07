using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DaDa.Common
{
    public class StaticDataProvider
    {
        //base dir of this app
        private static string enviromentPath = System.AppDomain.CurrentDomain.SetupInformation.ApplicationBase;
        //china of shell xml file path
        public static string xmlPath_CSpt = enviromentPath + "\\XMLData\\ChinaOfShell.xml";
        //physical dir of image
        public static string relativePath_PtImage = enviromentPath + "\\Product\\";
    }
}