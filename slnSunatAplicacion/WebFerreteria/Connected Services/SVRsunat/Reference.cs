﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebFerreteria.SVRsunat {
    using System.Runtime.Serialization;
    using System;
    
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="ObtenerEmpresaTodas_Result", Namespace="http://schemas.datacontract.org/2004/07/Sunat_BE")]
    [System.SerializableAttribute()]
    public partial class ObtenerEmpresaTodas_Result : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private System.Nullable<int> EstadoField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string IdEmpresaField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string LlaveField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string NombreField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public System.Nullable<int> Estado {
            get {
                return this.EstadoField;
            }
            set {
                if ((this.EstadoField.Equals(value) != true)) {
                    this.EstadoField = value;
                    this.RaisePropertyChanged("Estado");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string IdEmpresa {
            get {
                return this.IdEmpresaField;
            }
            set {
                if ((object.ReferenceEquals(this.IdEmpresaField, value) != true)) {
                    this.IdEmpresaField = value;
                    this.RaisePropertyChanged("IdEmpresa");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Llave {
            get {
                return this.LlaveField;
            }
            set {
                if ((object.ReferenceEquals(this.LlaveField, value) != true)) {
                    this.LlaveField = value;
                    this.RaisePropertyChanged("Llave");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Nombre {
            get {
                return this.NombreField;
            }
            set {
                if ((object.ReferenceEquals(this.NombreField, value) != true)) {
                    this.NombreField = value;
                    this.RaisePropertyChanged("Nombre");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="ObtenerEmpresa_Result", Namespace="http://schemas.datacontract.org/2004/07/Sunat_BE")]
    [System.SerializableAttribute()]
    public partial class ObtenerEmpresa_Result : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private System.Nullable<int> EstadoField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string IdEmpresaField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string LlaveField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string NombreField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public System.Nullable<int> Estado {
            get {
                return this.EstadoField;
            }
            set {
                if ((this.EstadoField.Equals(value) != true)) {
                    this.EstadoField = value;
                    this.RaisePropertyChanged("Estado");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string IdEmpresa {
            get {
                return this.IdEmpresaField;
            }
            set {
                if ((object.ReferenceEquals(this.IdEmpresaField, value) != true)) {
                    this.IdEmpresaField = value;
                    this.RaisePropertyChanged("IdEmpresa");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Llave {
            get {
                return this.LlaveField;
            }
            set {
                if ((object.ReferenceEquals(this.LlaveField, value) != true)) {
                    this.LlaveField = value;
                    this.RaisePropertyChanged("Llave");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Nombre {
            get {
                return this.NombreField;
            }
            set {
                if ((object.ReferenceEquals(this.NombreField, value) != true)) {
                    this.NombreField = value;
                    this.RaisePropertyChanged("Nombre");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="SVRsunat.IService1")]
    public interface IService1 {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/ObtenerListaEmpresas", ReplyAction="http://tempuri.org/IService1/ObtenerListaEmpresasResponse")]
        WebFerreteria.SVRsunat.ObtenerEmpresaTodas_Result[] ObtenerListaEmpresas();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/ObtenerListaEmpresas", ReplyAction="http://tempuri.org/IService1/ObtenerListaEmpresasResponse")]
        System.Threading.Tasks.Task<WebFerreteria.SVRsunat.ObtenerEmpresaTodas_Result[]> ObtenerListaEmpresasAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/ObtenerEmpresa", ReplyAction="http://tempuri.org/IService1/ObtenerEmpresaResponse")]
        WebFerreteria.SVRsunat.ObtenerEmpresa_Result[] ObtenerEmpresa(string pIdempresa, string pLlave);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/ObtenerEmpresa", ReplyAction="http://tempuri.org/IService1/ObtenerEmpresaResponse")]
        System.Threading.Tasks.Task<WebFerreteria.SVRsunat.ObtenerEmpresa_Result[]> ObtenerEmpresaAsync(string pIdempresa, string pLlave);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/ValidarUsuario", ReplyAction="http://tempuri.org/IService1/ValidarUsuarioResponse")]
        System.Nullable<int>[] ValidarUsuario(string username, string pass);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/ValidarUsuario", ReplyAction="http://tempuri.org/IService1/ValidarUsuarioResponse")]
        System.Threading.Tasks.Task<System.Nullable<int>[]> ValidarUsuarioAsync(string username, string pass);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IService1Channel : WebFerreteria.SVRsunat.IService1, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class Service1Client : System.ServiceModel.ClientBase<WebFerreteria.SVRsunat.IService1>, WebFerreteria.SVRsunat.IService1 {
        
        public Service1Client() {
        }
        
        public Service1Client(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public Service1Client(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public Service1Client(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public Service1Client(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public WebFerreteria.SVRsunat.ObtenerEmpresaTodas_Result[] ObtenerListaEmpresas() {
            return base.Channel.ObtenerListaEmpresas();
        }
        
        public System.Threading.Tasks.Task<WebFerreteria.SVRsunat.ObtenerEmpresaTodas_Result[]> ObtenerListaEmpresasAsync() {
            return base.Channel.ObtenerListaEmpresasAsync();
        }
        
        public WebFerreteria.SVRsunat.ObtenerEmpresa_Result[] ObtenerEmpresa(string pIdempresa, string pLlave) {
            return base.Channel.ObtenerEmpresa(pIdempresa, pLlave);
        }
        
        public System.Threading.Tasks.Task<WebFerreteria.SVRsunat.ObtenerEmpresa_Result[]> ObtenerEmpresaAsync(string pIdempresa, string pLlave) {
            return base.Channel.ObtenerEmpresaAsync(pIdempresa, pLlave);
        }
        
        public System.Nullable<int>[] ValidarUsuario(string username, string pass) {
            return base.Channel.ValidarUsuario(username, pass);
        }
        
        public System.Threading.Tasks.Task<System.Nullable<int>[]> ValidarUsuarioAsync(string username, string pass) {
            return base.Channel.ValidarUsuarioAsync(username, pass);
        }
    }
}