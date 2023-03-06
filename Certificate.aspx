<%@ Page Title="" Language="C#" MasterPageFile="~/MASTERPAGE.Master" AutoEventWireup="true" CodeBehind="Certificate.aspx.cs" Inherits="HOME.Certificate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html>
    <head>
        <link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@300;400;500;600;700&display=swap" rel="stylesheet">

        <style>
            * {
                font-family: Fredoka, sans serif;
            }

            .certificate-container {
                padding: 23px;
                width: 1000px;
                height: 707px;
                margin-left: 19px;
            }

            .certificate {
                padding: 25px;
                width: 1000px;
                height: 707px;
                position: relative;
            }

                .certificate:after {
                    content: '';
                    top: 0px;
                    left: 0px;
                    bottom: 0px;
                    right: 0px;
                    position: absolute;
                    -webkit-print-color-adjust: exact;
                    background-image: url('/images/cert.png');
                    background-size: contain;
                    z-index: -1;
                }

            .certificate-header > .logo {
                width: 80px;
                height: 80px;
            }

            .certificate-title {
                text-align: center;
            }

            .certificate-body {
                text-align: center;
            }

            h1 {
                font-weight: 400;
                font-size: 48px;
                color: #0C5280;
            }

            .student-name {
                font-size: 63px;
                font-family: Pristina;
            }

            .certificate-content {
                margin: 0 auto;
                width: 750px;
            }

            .about-certificate {
                width: 380px;
                margin: 0 auto;
                margin-top: -21px;
            }

            .topic-description {
                text-align: center;
            }

            .backbutton {
                margin-top: 23px;
                margin-left: 23px;
            }

            .printbutton {
                margin-top: 23px;
                margin-left: 76%;
            }
            .sign{
                margin-left: 65%;
    margin-top: -7px;
            }
        </style>
    </head>
    <body>

        <%
            string pfpUrl = "/images/user.png";


            if (Session["pfpUrl"] != null && Session["pfpUrl"] != DBNull.Value)
            {
                pfpUrl = (string)Session["pfpUrl"];
            }

            Console.WriteLine(pfpUrl);

        %>
        <asp:Button Text="Back" runat="server" ID="backbutton" CssClass="backbutton btn btn-primary rounded-5 text-light" onclick="Back_Click"/>
        <button class="printbutton btn btn-primary rounded-5 text-light" onclick="PrintElem('cert')">Print Certificate</button>
        <div id="cert">
            <div class="certificate-container">
                <div class="certificate">
                    <div class="water-mark-overlay"></div>
                    <div class="certificate-body">
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <div class="student-name"><%=Session["firstname"]%> <%= Session["lastname"] %></div>
                        <div class="about-certificate">
                            <p>
                                Completion of the <%= Request.QueryString["category"] %> course in TechQue.<br>
                                Given on <%= DateTime.Now.ToString("MM/dd/yyyy h:mm tt") %>.
                            </p>
                        </div>
                        <div class ="sign">
                            <p><br /><br /><br /><br /><br />
                                TechQue Admin
                            </p>
                    </div>

                </div>
            </div>
        </div>
        </div>
    <script>
        async function PrintElem(elem) {
            var mywindow = window.open('', 'PRINT', 'height=500,width=780');


            mywindow.document.write('<html><head><link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@300;400;500;600;700&display=swap" rel="stylesheet"> <title>' + document.title + '</title>');
            mywindow.document.write('<link rel="stylesheet" href="/lib/bootstrap/dist/css/bootstrap.css"/>');
            mywindow.document.write(`<style>
      <style>

        
        *{
            
    font-family: Fredoka, sans serif;
        }
        .certificate-container {
            padding: 23px;

    width: 1000px;
    height: 707px;   
    margin-left: 19px;
        }

        .certificate {
              padding: 25px;
    width: 1000px;
    height: 707px;
    position: relative;
        }
        
        .certificate:after {
            content: '';
            top: 0px;
            left: 0px;
            bottom: 0px;
            right: 0px;
            position: absolute;
            -webkit-print-color-adjust: exact;
            background-image: url('/images/cert.png');
            background-size: contain;
            z-index: -1;
        }
        
        .certificate-header > .logo {
            width: 80px;
            height: 80px;
        }
        
        .certificate-title {
            text-align: center;    
        }
        
        .certificate-body {
            text-align: center;
        }
        
        h1 {
        
            font-weight: 400;
            font-size: 48px;
            color: #0C5280;
        }
        
        .student-name {
            font-size: 63px;
            font-family:Pristina;
margin-top: 111px;
        }
        
        .certificate-content {
            margin: 0 auto;
            width: 750px;
        }
        
        .about-certificate {
            width: 380px;
            margin: 0 auto;
            margin-top:-21px;
    font-family: Fredoka, sans serif;
        }
        
        .topic-description {
        
            text-align: center;
        }
.sign{
                margin-left: 65%;
    font-family: Fredoka, sans serif;
    margin-top: 44px;
            }
    </style>

</style>`);
            mywindow.document.write('</head><body>');
            mywindow.document.write(document.getElementById(elem).innerHTML);
            mywindow.document.write('</body></html>');

            await delay(2000);

            mywindow.document.close(); // necessary for IE >= 10
            mywindow.focus(); // necessary for IE >= 10*/

            mywindow.print();
            mywindow.close();

            return true;
        }
    </script>
    </body>
    </html>
</asp:Content>
