<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CUFESTRegistration.aspx.cs" Inherits="CUFESTRegistration" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Chandigarh University</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/slick.min.css">
    <link rel="stylesheet" href="css/style.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <script type="text/javascript">

        function tabs() {
            $("#DivFirst").click(function () {
                $("#hfActiveTab").val('1');
                $("#DivFirst").css("background-color", "white");
                $("#DivSecond").css("background-color", "#eda9a9");
                $("#DivThird").css("background-color", "#eda9a9");
                $("#divFirstTab").css('display', 'block');
                $("#divSecondTab").css('display', 'none');
                $("#divThirdTab").css('display', 'none');
                $("#hfActiveTab").val('1');
                $("#DivFirst").css('box-shadow', '0px -9px 12px -6px');
                $("#DivSecond").css('box-shadow', '');
                $("#DivThird").css('box-shadow', '');
                $("#DivFirst").css('border-bottom', '');
                $("#DivSecond").css('border-bottom', '1px Solid');
                $("#DivThird").css('border-bottom', '1px Solid');
                return false;
            });
            $("#DivSecond").click(function () {
                $("#hfActiveTab").val('2');
                $("#DivSecond").css("background-color", "white");
                $("#DivFirst").css("background-color", "#eda9a9");
                $("#DivThird").css("background-color", "#eda9a9");
                $("#divFirstTab").css('display', 'none');
                $("#divSecondTab").css('display', 'block');
                $("#divThirdTab").css('display', 'none');

                $("#DivSecond").css('box-shadow', '0px -9px 12px -6px');
                $("#DivFirst").css('box-shadow', '');
                $("#DivThird").css('box-shadow', '');
                $("#DivFirst").css('border-bottom', '1px Solid');
                $("#DivSecond").css('border-bottom', '');
                $("#DivThird").css('border-bottom', '1px Solid');
                return false;

            });

            $("#DivThird").click(function () {
                $("#hfActiveTab").val('3');
                $("#DivSecond").css("background-color", "#eda9a9");
                $("#DivFirst").css("background-color", "#eda9a9");
                $("#DivThird").css("background-color", "white");
                $("#divFirstTab").css('display', 'none');
                $("#divSecondTab").css('display', 'none');
                $("#divThirdTab").css('display', 'block');

                $("#DivSecond").css('box-shadow', '');
                $("#DivFirst").css('box-shadow', '');
                $("#DivThird").css('box-shadow', '0px -9px 12px -6px');
                $("#DivFirst").css('border-bottom', '1px Solid');
                $("#DivSecond").css('border-bottom', '1px Solid');
                $("#DivThird").css('border-bottom', '');
                return false;
            });

            autochecktab();
        }
        function autochecktab() {
            if ($("#hfActiveTab").val() == "1") {
                $("#DivFirst").css("background-color", "white");
                $("#DivSecond").css("background-color", "#eda9a9");
                $("#DivThird").css("background-color", "#eda9a9");
                $("#divFirstTab").css('display', 'block');
                $("#divSecondTab").css('display', 'none');
                $("#divThirdTab").css('display', 'none');
                $("#DivFirst").css('box-shadow', '0px -9px 12px -6px');
                $("#DivSecond").css('box-shadow', '');
                $("#DivThird").css('box-shadow', '');
                $("#DivFirst").css('border-bottom', '');
                $("#DivSecond").css('border-bottom', '1px Solid');
                $("#DivThird").css('border-bottom', '1px Solid');

            }
            else if ($("#hfActiveTab").val() == "2") {
                $("#DivSecond").css("background-color", "white");
                $("#DivFirst").css("background-color", "#eda9a9");
                $("#DivThird").css("background-color", "#eda9a9");
                $("#divFirstTab").css('display', 'none');
                $("#divSecondTab").css('display', 'block');
                $("#divThirdTab").css('display', 'none');
                $("#DivSecond").css('box-shadow', '0px -9px 12px -6px');
                $("#DivFirst").css('box-shadow', '');
                $("#DivThird").css('box-shadow', '');
                $("#DivFirst").css('border-bottom', '1px Solid');
                $("#DivSecond").css('border-bottom', '');
                $("#DivThird").css('border-bottom', '');
            }
            else if ($("#hfActiveTab").val() == "3") {
                $("#DivSecond").css("background-color", "#eda9a9");
                $("#DivFirst").css("background-color", "#eda9a9");
                $("#DivThird").css("background-color", "white");
                $("#divFirstTab").css('display', 'none');
                $("#divSecondTab").css('display', 'none');
                $("#divThirdTab").css('display', 'block');
                $("#DivSecond").css('box-shadow', '');
                $("#DivFirst").css('box-shadow', '');
                $("#DivThird").css('box-shadow', '0px -9px 12px -6px');
                $("#DivFirst").css('border-bottom', '1px Solid');
                $("#DivSecond").css('border-bottom', '1px Solid');
                $("#DivThird").css('border-bottom', '');
            }
            else {
                $("#DivFirst").css("background-color", "white");
                $("#DivSecond").css("background-color", "#eda9a9");
                $("#DivThird").css("background-color", "#eda9a9");
                $("#divFirstTab").css('display', 'block');
                $("#divSecondTab").css('display', 'none');
                $("#divThirdTab").css('display', 'none');
                $("#DivFirst").css('box-shadow', '0px -9px 12px -6px');
                $("#DivSecond").css('box-shadow', '');
                $("#DivThird").css('box-shadow', '');
                $("#DivFirst").css('border-bottom', '');
                $("#DivSecond").css('border-bottom', '1px Solid');
                $("#DivThird").css('border-bottom', '1px Solid');
            }
        }
        function numbervalidate(e) {
            if (String.fromCharCode(e.keyCode).match(/[^0-9]/g)) return false;
        }
    </script>

    <script type="text/javascript">
        $(function () {
            var radiobuttons = $("[class*=cstm-rdo] input[type=checkbox]");
            radiobuttons.change(function () {
                var message = "";
                var count = 0;
                radiobuttons.each(function () {
                    if ($(this).is(":checked")) {                        
                        count++;
                        if (count <= 3) {
                            //var label = $(this).closest("td").find("label").eq(0);
                            var cvalue = $(this).val();
                            //message += label.html() + ",";
                            message += cvalue + ",";
                        }
                        else {
                            alert('You Can not select more then three option or Catagory');
                        }
                    }
                });
                document.getElementById('<%=hfcufestOption.ClientID%>').value = message ;
            });
        });
    </script>
    <style>
        .sub-text p {
            font-family: 'Roboto';
            font-size: 18px;
            font-weight: bold;
        }

        #divFirstTab span {
            float: right;
            margin-top: 0px;
            font-size: 12px;
        }

        .f-left {
            float: left !important;
            margin-left: 20px;
            font-weight: bold;
            font-size: 14px !important;
        }

        .padd-t-60 {
            padding-top: 60px;
        }

        .padd-b-60 {
            padding-bottom: 60px;
        }

        header {
            position: inherit;
        }

        #lblFees {
            min-height: 38px;
            font-size: 16px !important;
        }

        #divPayNowBtn {
            align-items: center;
        }
        #rblUniversityCollege {
            display: inline-block;
            margin-bottom: -7px;
        } 
        #rblUniversityCollege td label {
            margin-right: 10px;
        }
        .form-control {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <header>
        <div class="overlayColor"></div>
        <div class="container-fluid">
            <div class="row position-relative">
                <div class="col-12 col-md-6 col-lg-3 col-xl-3 order-2 order-md-1">
                    <div class="logo">
                        <a href="/elocu" class="d-flex align-items-center">
                            <img src="img/cu-logo-white.png" alt="chandigarh University logo"
                                class="desktop-logo lg-logo" />
                            <div class="logo-fix">
                                <img src="img/naac-logo.png" alt="NAAC Accredited University in Punjab, India"
                                    title="NAAC Accredited University in Punjab, India" />
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-9 col-xl-9 order-1 order-md-2 nidNavbar">
                    <ul class="list-unstyled d-flex align-items-center m-0">
                        <li class="ms-0"><a href="#about">About</a></li>
                        <!-- <li><a href="#core-principle">Background</a></li>                                                        -->
                        <li><a href="index.html#about">Objectives</a></li>
                        <li><a href="index.html#outcomes">Registration Schedule</a></li>
                        <li><a href="index.html#program-schedule">Workshop Schedule</a></li>

                        <li><a href="index.html#contact">Contact Us</a></li>
                        <li class="me-0">
                            <a href="CUFESTRegistration.aspx" class="btn btn-secondary text-white px-4 py-2">Register
                                <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg"
                                    xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 512 512"
                                    style="enable-background: new 0 0 512 512;" xml:space="preserve" width="18"
                                    height="18">
                                    <style type="text/css">
                                        .st1 {
                                            fill: #ffffff;
                                        }
                                    </style>
                                    <g>
                                        <g>
                                            <path class="st1" d="M508.9,248.5l-160-160c-4.2-4.2-10.9-4.2-15.1,0c-4.2,4.2-4.2,10.9,0,15.1l141.8,141.8H10.7
                                                    C4.8,245.3,0,250.1,0,256s4.8,10.7,10.7,10.7h464.9L333.8,408.5c-4.2,4.2-4.2,10.9,0,15.1c2.1,2.1,4.8,3.1,7.5,3.1s5.5-1,7.5-3.1
                                                    l160-160C513,259.4,513,252.6,508.9,248.5z">
                                            </path>
                                        </g>
                                    </g>
                                </svg>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="nidNavbar__menu">
                    <a href="#top">
                        <img src="img/menuToggle.png" alt="" class="w-100" /></a>
                </div>
            </div>
        </div>
    </header>
    <!--- HEADER --->
    <section class="inner-banner padd-t-60" style="background: url(assets/uploads/inner-banner.jpg); background-repeat: no-repeat; background-size: cover;">
        <div class="container">
            <div class="inner-banner-content">
                <h1 class="mb-3"><b>CUFEST Registration</b></h1>
            </div>
        </div>
    </section>

    <section class="registration-sec padd-60 padd-b-60">
        <div class="container">
            <div class="registration-form">


                <form id="form1" runat="server">
                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="updMain" DisplayAfter="200">
                        <ProgressTemplate>
                            <div id="overlay">
                                <div id="modalprogress">
                                    <div id="theprogress">
                                        <img alt="" src="img/loader.gif" style="height: 70px" />
                                    </div>
                                </div>
                            </div>
                        </ProgressTemplate>
                    </asp:UpdateProgress>
                    <cc1:AlwaysVisibleControlExtender ID="AlwaysVisibleControlExtender5" runat="server"
                        HorizontalSide="Center" TargetControlID="UpdateProgress1" VerticalSide="Middle">
                    </cc1:AlwaysVisibleControlExtender>
                    <asp:UpdatePanel ID="updMain" runat="server">
                        <ContentTemplate>
                            <script>
                                Sys.Application.add_load(tabs);
                            </script>
                            <asp:HiddenField runat="server" ClientIDMode="Static" ID="hfActiveTab" />
                            <asp:HiddenField runat="server" ClientIDMode="Static" ID="hfcufestOption" />

                            <div style="text-align: left; display: inline-flex; margin-top: 10px; width: 100%;">
                                <div id="DivFirst" style="border-top-left-radius: 10px; padding: 0px 15px 0px; box-shadow: 0px -9px 12px -6px; background-color: white; cursor: default; border-top-right-radius: 10px; border-top: solid 1px; border-left: solid 1px; border-right: solid 1px; width: auto; padding-top: 5px;">Registration</div>
                                <%--<div id="DivSecond" style="border-top-left-radius: 10px; background-color: #eda9a9; padding: 0px 15px 0px; border-bottom: 1px solid; border-top-right-radius: 10px; cursor: default; border-top: solid 1px; border-left: solid 1px; border-right: solid 1px; width: auto; height: 30px; padding-top: 5px;">Already Registered</div>
                                <div id="DivThird" style="display: none; border-top-left-radius: 10px; background-color: #eda9a9; padding: 0px 15px 0px; border-bottom: 1px solid; border-top-right-radius: 10px; cursor: default; border-top: solid 1px; border-left: solid 1px; border-right: solid 1px; width: auto; height: 30px; padding-top: 5px;">Publication Processing Fees</div>--%>

                            </div>


                            <div id="divFirstTab" data-type="TabPanel" style="width: 100%; margin-top: 0px; border: 1px solid rgb(221, 221, 221); display: block; padding: 20px;" runat="server">
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-6 mb-4">
                                            <label class="control-label">Name of the Participant<em style="color: red">*</em></label>
                                            <asp:RequiredFieldValidator ID="rfvtxtParticipantName" runat="server" ControlToValidate="txtParticipantName" Text="" ErrorMessage="Enter Participant Name" ValidationGroup="VGSubmit" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:TextBox ID="txtParticipantName" CssClass="form-control" runat="server" MaxLength="100"></asp:TextBox>
                                            <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" TargetControlID="txtParticipantName" FilterMode="ValidChars"
                                                ValidChars="qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM ">
                                            </cc1:FilteredTextBoxExtender>
                                        </div>
                                        <div class="col-md-6 mb-4">
                                            <label class="control-label">Email<em style="color: red">*</em></label>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" Text="" ErrorMessage="Enter Email" ValidationGroup="VGSubmit" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ClientIDMode="Static" ID="RequiredFieldValidator1Email" runat="server" ForeColor="Red" ControlToValidate="txtEmail" ErrorMessage="Invalid Email" Text="*" ValidationExpression="^[\w!#$%&amp;'*+\-/=?\^_`{|}~]+(\.[\w!#$%&amp;'*+\-/=?\^_`{|}~]+)*@((([\-\w]+\.)+[a-zA-Z]{2,4})|(([0-9]{1,3}\.){3}[0-9]{1,3}))$" ValidationGroup="VGSubmit"></asp:RegularExpressionValidator>
                                            <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" MaxLength="100"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6 mb-4">
                                            <label class="control-label">Contact Number<em style="color: red">*</em></label>
                                            <asp:RequiredFieldValidator ID="rfvtxtPhone" runat="server" ControlToValidate="txtPhone" Text="" ErrorMessage="Enter Contact Number" ValidationGroup="VGSubmit" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:TextBox ID="txtPhone" CssClass="form-control" runat="server" MaxLength="10"></asp:TextBox>
                                            <cc1:FilteredTextBoxExtender ID="tbetxtPhone" runat="server" TargetControlID="txtPhone" FilterMode="ValidChars"
                                                ValidChars="0123456789">
                                            </cc1:FilteredTextBoxExtender>
                                        </div>

                                        <div class="col-md-6 mb-4">
                                            <label class="control-label">Alternative Contact Number<em style="color: red">*</em></label>
                                            <asp:RequiredFieldValidator ID="rfvtxtAltPhone" runat="server" ControlToValidate="txtAltPhone" Text="" ErrorMessage="Enter Alternative Contact Number" ValidationGroup="VGSubmit" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:TextBox ID="txtAltPhone" CssClass="form-control" runat="server" MaxLength="10"></asp:TextBox>
                                            <cc1:FilteredTextBoxExtender ID="Filteredtextboxextender2" runat="server" TargetControlID="txtAltPhone" FilterMode="ValidChars"
                                                ValidChars="0123456789">
                                            </cc1:FilteredTextBoxExtender>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6 mb-4">
                                            <asp:RadioButtonList ID="rblUniversityCollege" runat="server" RepeatDirection="Horizontal" ClientIDMode="Static">
                                                <asp:ListItem Text="University" Value="University" Selected="True"></asp:ListItem>
                                                <asp:ListItem Text="College" Value="College"></asp:ListItem>
                                            </asp:RadioButtonList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUniversityName" Text="" ErrorMessage="Enter University/College Name" ValidationGroup="VGSubmit" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:TextBox ID="txtUniversityName" CssClass="form-control" runat="server" MaxLength="100"></asp:TextBox>
                                            <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" TargetControlID="txtUniversityName" FilterMode="ValidChars"
                                                ValidChars="qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM ">
                                            </cc1:FilteredTextBoxExtender>
                                        </div>

                                        <div class="col-md-6 mb-4">
                                            <label class="control-label">Address<em style="color: red">*</em></label>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAddress" Text="" ErrorMessage="Enter Address Name" ValidationGroup="VGSubmit" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:TextBox ID="txtAddress" CssClass="form-control" runat="server" MaxLength="100"></asp:TextBox>
                                            <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server" TargetControlID="txtAddress" FilterMode="ValidChars"
                                                ValidChars="qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM,1234567890./ ">
                                            </cc1:FilteredTextBoxExtender>
                                        </div>
                                    </div>
                                    <div class="row mt-4">
                                        <div class="col-md-12 mb-9">
                                            <asp:GridView ID="gvCufestCategory" runat="server" AutoGenerateColumns="false" Width="100%" >
                                                <Columns>
                                                    <asp:TemplateField ItemStyle-Width="20%" HeaderText="Category - I (Fine Arts)"  >
                                                        <ItemTemplate>
                                                           
                                                            <div id='<%#Eval("Id") %>' style="float: left; width: 99%">
                                                                 <asp:CheckBoxList ID="cblFineArts" runat="server" CssClass="cstm-rdo" RepeatDirection="vertical" DataTextField="CategoryOption" DataValueField="Id" Width="100%" />
                                                              <%--  <asp:RadioButtonList ID="rbtnFineArts" CssClass="cstm-rdo" RepeatDirection="vertical" runat="server" DataTextField="CategoryOption" DataValueField="Id" Width="100%">
                                                                </asp:RadioButtonList>--%>
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField ItemStyle-Width="15%" HeaderText="Category - II (Modelling)">
                                                        <ItemTemplate>
                                                            <div id='<%#Eval("Id") %>' style="float: left; width: 99%">
                                                                 <asp:CheckBoxList ID="cblModelling" runat="server" CssClass="cstm-rdo" RepeatDirection="vertical" DataTextField="CategoryOption" DataValueField="Id" Width="100%" />
                                                                <%--<asp:RadioButtonList ID="rbtnModelling" CssClass="cstm-rdo" RepeatDirection="vertical" runat="server" DataTextField="CategoryOption" DataValueField="Id" Width="100%">
                                                                </asp:RadioButtonList>--%>
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField ItemStyle-Width="15%" HeaderText="Category - III (Theatre)">
                                                        <ItemTemplate>
                                                            <div id='<%#Eval("Id") %>' style="float: left; width: 99%">
                                                                 <asp:CheckBoxList ID="cblTheatre" runat="server" CssClass="cstm-rdo" RepeatDirection="vertical" DataTextField="CategoryOption" DataValueField="Id" Width="100%" />
<%--                                                                <asp:RadioButtonList ID="rbtnTheatre" CssClass="cstm-rdo" RepeatDirection="vertical" runat="server" DataTextField="CategoryOption" DataValueField="Id" Width="100%">
                                                                </asp:RadioButtonList>--%>
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField ItemStyle-Width="18%" HeaderText="Category - IV (Music)">
                                                        <ItemTemplate>
                                                            <div id='<%#Eval("Id") %>' style="float: left; width: 99%">
                                                                 <asp:CheckBoxList ID="cblMusic" runat="server" CssClass="cstm-rdo" RepeatDirection="vertical" DataTextField="CategoryOption" DataValueField="Id" Width="100%" />
<%--                                                                <asp:RadioButtonList ID="rbtnMusic" CssClass="cstm-rdo" RepeatDirection="vertical" runat="server" DataTextField="CategoryOption" DataValueField="Id" Width="100%">
                                                                </asp:RadioButtonList>--%>
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField ItemStyle-Width="18%" HeaderText="Category - V (Dance)">
                                                        <ItemTemplate>
                                                            <div id='<%#Eval("Id") %>' style="float: left; width: 99%">
                                                                 <asp:CheckBoxList ID="cblDance" runat="server" CssClass="cstm-rdo" RepeatDirection="vertical" DataTextField="CategoryOption" DataValueField="Id" Width="100%" />
<%--                                                                <asp:RadioButtonList ID="rbtnDance" CssClass="cstm-rdo" RepeatDirection="vertical" runat="server" DataTextField="CategoryOption" DataValueField="Id" Width="100%">
                                                                </asp:RadioButtonList>--%>
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField ItemStyle-Width="14%" HeaderText="Category - VI (Literary)">
                                                        <ItemTemplate>
                                                            <div id='<%#Eval("Id") %>' style="float: left; width: 99%">
                                                                 <asp:CheckBoxList ID="cblLiterary" runat="server" CssClass="cstm-rdo" RepeatDirection="vertical" DataTextField="CategoryOption" DataValueField="Id" Width="100%" />
<%--                                                                <asp:RadioButtonList ID="rbtnLiterary" CssClass="cstm-rdo" RepeatDirection="vertical" runat="server" DataTextField="CategoryOption" DataValueField="Id" Width="100%">
                                                                </asp:RadioButtonList>--%>
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                        </div>
                                    </div>
                                    <div class="row" id="dvSubmit" runat="server" style="padding-top: 5px;">
                                        <div class="col-md-12" style="text-align: center">
                                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn cta-btn btn-success" ValidationGroup="VGSubmit" OnClick="btnSubmit_Click" />
                                            <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn cta-btn btn-primary" OnClick="btnReset_Click" />
                                            <asp:HiddenField ID="hfId" runat="server" Value="0" />
                                            <asp:HiddenField ID="hfRequestNo" runat="server" Value="0" />
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div id="divSecondTab" data-type="TabPanel" style="width: 100%; margin-top: 0px; border: 1px solid rgb(221, 221, 221); display: none; padding: 20px" runat="server" class="form-group">
                                <div class="row align-items-center">
                                    <div class="col-md-4 mb-3">
                                        <label class="control-label">Email Id<em style="color: red">*</em></label>
                                        <asp:TextBox ID="txtAlreadyEmail" runat="server" CssClass="form-control" />
                                    </div>
                                    <div class="col-md-2" style="padding-top: 5px;">

                                        <asp:Button ID="btnAlreadyEmail" runat="server" CssClass="btn cta-btn btn-success" Text="Submit" OnClick="btnAlreadyEmail_Click" />
                                    </div>
                                </div>
                            </div>

                        </ContentTemplate>
                        <Triggers>
                            <asp:PostBackTrigger ControlID="btnSubmit" />
                        </Triggers>
                    </asp:UpdatePanel>
                </form>
            </div>
        </div>
    </section>
</body>
</html>
