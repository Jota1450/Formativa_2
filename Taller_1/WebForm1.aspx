<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Taller_1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <style type="text/css">
        .auto-style1 {
            width: 321px;
        }

        .center {
            display: flex;
            align-items: center;
            justify-content: center;
        }
    </style>
</head>
<body>
    <div class="center">
        <div class="card" style="width: 25rem;">
            <div class="card-body">
                <form id="form1" runat="server">
                    <div>
                        <table class="w-100">
                            <tr>
                                <td class="auto-style1">Nombre de Usuario</td>
                                <td>
                                    <asp:TextBox class="form-control" ID="TextBox2" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Style="color: red;" runat="server" ControlToValidate="TextBox1" ErrorMessage="Campo Requerido*"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Style="color: red;" runat="server" ErrorMessage="Datos Invalidos*" ValidationExpression="^[A-Za-z ]$" ControlToValidate="TextBox2"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">Clave</td>
                                <td>
                                    <asp:TextBox ID="TextBox3" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Style="color: red;" runat="server" ControlToValidate="TextBox2" ErrorMessage="Campo Requerido*"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" Style="color: red;" runat="server" ErrorMessage="Datos Invalidos*" ValidationExpression="^(?=.[0-9])(?=.[!@#$%^&amp;])[a-zA-Z0-9!@#$%^&amp;]{6,16}$" ControlToValidate="TextBox3"></asp:RegularExpressionValidator>

                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">Repita la clave</td>
                                <td>
                                    <asp:TextBox ID="TextBox4" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Style="color: red;" runat="server" ControlToValidate="TextBox3" ErrorMessage="Campo Requerido*"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" Style="color: red;" runat="server" ErrorMessage="Datos Invalidos*" ValidationExpression="^(?=.[0-9])(?=.[!@#$%^&amp;])[a-zA-Z0-9!@#$%^&amp;]{6,16}$" ControlToValidate="TextBox4"></asp:RegularExpressionValidator>

                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">Correo</td>
                                <td>
                                    <asp:TextBox ID="TextBox5" class="form-control" runat="server" TextMode="Email"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Style="color: red;" runat="server" ControlToValidate="TextBox4" ErrorMessage="Campo Requerido*"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">Apellido</td>
                                <td>
                                    <asp:TextBox ID="TextBox6" class="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" Style="color: red;" runat="server" ControlToValidate="TextBox5" ErrorMessage="Campo Requerido*"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" Style="color: red;" runat="server" ErrorMessage="Datos Invalidos*" ValidationExpression="^[A-Za-z ]$" ControlToValidate="TextBox6"></asp:RegularExpressionValidator>

                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">Nombre</td>
                                <td>
                                    <asp:TextBox ID="TextBox7" class="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" Style="color: red;" runat="server" ControlToValidate="TextBox6" ErrorMessage="Campo Requerido*"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" Style="color: red;" runat="server" ErrorMessage="Datos Invalidos*" ValidationExpression="^[A-Za-z ]$" ControlToValidate="TextBox7"></asp:RegularExpressionValidator>

                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">Pais de Origen</td>
                                <td>
                                    <asp:DropDownList class="form-select" ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                        <asp:ListItem>Colombia</asp:ListItem>
                                        <asp:ListItem>Argentina</asp:ListItem>
                                        <asp:ListItem>Mexico</asp:ListItem>
                                        <asp:ListItem>Chile</asp:ListItem>
                                        <asp:ListItem>España</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" Style="color: red;" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Campo Requerido*"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">Provincia</td>
                                <td>
                                    <asp:TextBox ID="TextBox8" class="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" Style="color: red;" runat="server" ControlToValidate="TextBox8" ErrorMessage="Campo Requerido*"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">Codigo Postal</td>
                                <td>
                                    <asp:TextBox ID="TextBox9" class="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" Style="color: red;" runat="server" ControlToValidate="TextBox9" ErrorMessage="Campo Requerido*"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" Style="color: red;" runat="server" ErrorMessage="Datos Invalidos*" ValidationExpression="^[0-9]$" ControlToValidate="TextBox9"></asp:RegularExpressionValidator>

                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">Sexo</td>
                                <td>
                                    <asp:RadioButtonList  ID="RadioButtonList1" runat="server">
                                        <asp:ListItem class="form-check-input">Hombre</asp:ListItem>
                                        <asp:ListItem class="form-check-input">Mujer</asp:ListItem>
                                    </asp:RadioButtonList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" Style="color: red;" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="Campo Requerido*"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">Fecha de Nacimiento</td>
                                <td>
                                    <asp:TextBox ID="TextBox10" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" Style="color: red;" runat="server" ControlToValidate="TextBox10" ErrorMessage="Campo Requerido*"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">Comentarios</td>
                                <td>
                                    <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" Style="color: red;" runat="server" ControlToValidate="TextBox1" ErrorMessage="Campo Requerido*"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">Aceptar Terminos y condiciones</td>
                                <td>
                                    <div class="form-check">
                                        <asp:CheckBox ID="CheckBox1" class="form-check-input" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" />

                                        <label class="form-check-label" for="CheckBox1">
                                            Acepto
                                        </label>
                                    </div>
                                    <asp:Label ID="Label1" Style="color: red;" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td>
                                    <asp:Button ID="Button2" class="btn btn-primary" runat="server" Text="Validar" OnClick="Button2_Click" />
                                </td>
                            </tr>
                        </table>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
