﻿#pragma checksum "..\..\Registrarse.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "0FEE2A3984C999CB7707781C05DDC5E0DC508E308F89704BC8DEF9624A540C53"
//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.42000
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

using SerpientesYEscaleras;
using SerpientesYEscaleras.Properties;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace SerpientesYEscaleras {
    
    
    /// <summary>
    /// Registrarse
    /// </summary>
    public partial class Registrarse : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 30 "..\..\Registrarse.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox tb_NombreUsuario;
        
        #line default
        #line hidden
        
        
        #line 32 "..\..\Registrarse.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox tb_CorreoElectronico;
        
        #line default
        #line hidden
        
        
        #line 34 "..\..\Registrarse.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.PasswordBox pb_Contrasenia;
        
        #line default
        #line hidden
        
        
        #line 36 "..\..\Registrarse.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.PasswordBox pb_ConfirmarContrasenia;
        
        #line default
        #line hidden
        
        
        #line 37 "..\..\Registrarse.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.CheckBox cb_Terminos;
        
        #line default
        #line hidden
        
        
        #line 38 "..\..\Registrarse.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button bt_Registrarse;
        
        #line default
        #line hidden
        
        
        #line 39 "..\..\Registrarse.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button bt_Cancelar;
        
        #line default
        #line hidden
        
        
        #line 40 "..\..\Registrarse.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button bt_Terminos;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/SerpientesYEscaleras;component/registrarse.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\Registrarse.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.tb_NombreUsuario = ((System.Windows.Controls.TextBox)(target));
            return;
            case 2:
            this.tb_CorreoElectronico = ((System.Windows.Controls.TextBox)(target));
            return;
            case 3:
            this.pb_Contrasenia = ((System.Windows.Controls.PasswordBox)(target));
            return;
            case 4:
            this.pb_ConfirmarContrasenia = ((System.Windows.Controls.PasswordBox)(target));
            return;
            case 5:
            this.cb_Terminos = ((System.Windows.Controls.CheckBox)(target));
            return;
            case 6:
            this.bt_Registrarse = ((System.Windows.Controls.Button)(target));
            
            #line 38 "..\..\Registrarse.xaml"
            this.bt_Registrarse.Click += new System.Windows.RoutedEventHandler(this.Bt_Registrarse_Click);
            
            #line default
            #line hidden
            return;
            case 7:
            this.bt_Cancelar = ((System.Windows.Controls.Button)(target));
            
            #line 39 "..\..\Registrarse.xaml"
            this.bt_Cancelar.Click += new System.Windows.RoutedEventHandler(this.Bt_Cancelar_Click);
            
            #line default
            #line hidden
            return;
            case 8:
            this.bt_Terminos = ((System.Windows.Controls.Button)(target));
            
            #line 40 "..\..\Registrarse.xaml"
            this.bt_Terminos.Click += new System.Windows.RoutedEventHandler(this.Bt_Terminos_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

