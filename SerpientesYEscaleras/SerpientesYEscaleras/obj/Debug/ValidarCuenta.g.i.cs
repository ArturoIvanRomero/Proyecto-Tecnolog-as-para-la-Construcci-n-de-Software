﻿#pragma checksum "..\..\ValidarCuenta.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "8310AE075B81CEFC923A9BC32B93A84251976BF8DB5FA0F2EBA3B2EB826E77A5"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
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
    /// ValidarCuenta
    /// </summary>
    public partial class ValidarCuenta : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 25 "..\..\ValidarCuenta.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox tb_CodigoVerificacion;
        
        #line default
        #line hidden
        
        
        #line 26 "..\..\ValidarCuenta.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button bt_Aceptar;
        
        #line default
        #line hidden
        
        
        #line 27 "..\..\ValidarCuenta.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button bt_Cancelar;
        
        #line default
        #line hidden
        
        
        #line 29 "..\..\ValidarCuenta.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox tb_NombreUsuario;
        
        #line default
        #line hidden
        
        
        #line 30 "..\..\ValidarCuenta.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button bt_Enviar;
        
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
            System.Uri resourceLocater = new System.Uri("/SerpientesYEscaleras;component/validarcuenta.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\ValidarCuenta.xaml"
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
            this.tb_CodigoVerificacion = ((System.Windows.Controls.TextBox)(target));
            return;
            case 2:
            this.bt_Aceptar = ((System.Windows.Controls.Button)(target));
            
            #line 26 "..\..\ValidarCuenta.xaml"
            this.bt_Aceptar.Click += new System.Windows.RoutedEventHandler(this.Bt_Aceptar_Click);
            
            #line default
            #line hidden
            return;
            case 3:
            this.bt_Cancelar = ((System.Windows.Controls.Button)(target));
            
            #line 27 "..\..\ValidarCuenta.xaml"
            this.bt_Cancelar.Click += new System.Windows.RoutedEventHandler(this.Bt_Cancelar_Click);
            
            #line default
            #line hidden
            return;
            case 4:
            this.tb_NombreUsuario = ((System.Windows.Controls.TextBox)(target));
            return;
            case 5:
            this.bt_Enviar = ((System.Windows.Controls.Button)(target));
            
            #line 30 "..\..\ValidarCuenta.xaml"
            this.bt_Enviar.Click += new System.Windows.RoutedEventHandler(this.Bt_Enviar_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

