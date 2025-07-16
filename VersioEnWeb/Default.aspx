<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Unitat Organització de Processos - Eina publicació Seu Electrònica, catàleg de Serveis. Universitat de Lleida, ASIC Projectes Externs</title>
    <style type="text/css">
        .style1
        {
            width: 27px;
        }
        .style2
        {
            width: 205px;
        }
    </style>
</head>
<body bgcolor="#EEEEEE">
<form id="infoDATAWebX" name="infoDATAWebX" method="POST" action="https://seuelectronica.udl.cat/auth_test/index.php" enctype="application/x-www-form-urlencoded">

	<input name="URLok" id="URLok" type="hidden" value="ercd.udl.cat:4444/resultat.aspx"/>
	<input name="URLfail" id="URLfail" type="hidden" value="ercd.udl.cat:4444/Default.aspx"/>
    <input name="SSOID" runat="server" id="SSOID" type="hidden" value=""/>
	<input name="SSLurl" id="SSLurl" type="hidden" value="true"/>

</form>

    <form id="form1" runat="server">
    
            
        <div style="height: 83px; width: 545px; margin-left: 159px; margin-top: 30px; background-color: #CCCCCC; font-family: Arial, Helvetica, sans-serif; font-weight: bold; font-style: normal; font-variant: small-caps;">
                   <table style="width:100%;">
                <tr>
                    <td class="style1">
                        &nbsp;</td>
                    <td class="style2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style1">
                        &nbsp;</td>
                    <td class="style2">
                        Arxiu CSV (exportat Excel)</td>
                    <td>
                        <asp:FileUpload ID="ArxiuCSV" runat="server" Width="284px" />
                               </td>
                </tr>
                <tr>
                    <td class="style1">
                        &nbsp;</td>
                    <td class="style2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <div style="height: 82px; margin-top: 25px; text-align: center; vertical-align: text-bottom; background-color: #C0C0C0; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: small-caps; font-weight: bold;">
                Feu click al botó per modificar el catàleg existent pel definit al CSV que esteu 
                entregant.&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                  <asp:Button ID="btUpdateLDAP" runat="server" Text="Iniciar Importació dades" 
                    onclick="PostejaForm" />
                       </div>
 
            </div>
    
            
    <div style="height: 284px; width: 141px; margin-top: 0px; background-color: #FFFFFF;">
    
            
        <img alt="" src="LogoUdL.GIF" /></div>
    </form>
    <p>
        v.1.5 [2018]</p>
</body>
</html>
