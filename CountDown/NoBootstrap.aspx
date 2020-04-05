<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NoBootstrap.aspx.cs" Inherits="CountDown.NoBootstrap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>No Bootstrap</title>
</head>
<body style="margin: 0;">
    <%--<form id="form1" runat="server">
        <div>
        </div>
    </form>--%>

    <style>
        .countdownSection {
            background-color: darkred;
            margin: 0;
            height: 1000px;
        }

        .countdownValue {
            font-family: 'Trebuchet MS';
            font-size: 400px;
            text-align: center;
            color: white;
            margin-top: 0;
        }
    </style>

    <section class="countdownSection">
        <div>
            <p class="countdownValue"><strong><span>0</span></strong></p>
        </div>
        <div style="text-align:center; vertical-align: central;">
            <input type="button" name="name" value="Stop" style="font-size: 50px; border-radius: 3px;" />
        </div>
    </section>

    <section>
        <section></section>
    </section>

</body>
</html>
