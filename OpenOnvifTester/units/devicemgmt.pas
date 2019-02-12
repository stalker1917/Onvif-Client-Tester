// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : https://www.onvif.org/ver10/device/wsdl/devicemgmt.wsdl
//  >Import : https://www.onvif.org/ver10/device/wsdl/devicemgmt.wsdl>0
//  >Import : https://www.onvif.org/ver10/device/wsdl/../../../ver10/schema/onvif.xsd
//  >Import : https://www.onvif.org/ver10/device/wsdl/../../../ver10/schema/common.xsd
//  >Import : http://www.w3.org/2005/05/xmlmime
//  >Import : http://www.w3.org/2003/05/soap-envelope
//  >Import : http://www.w3.org/2001/xml.xsd
//  >Import : http://docs.oasis-open.org/wsn/b-2.xsd
//  >Import : http://www.w3.org/2005/08/addressing/ws-addr.xsd
//  >Import : http://docs.oasis-open.org/wsrf/bf-2.xsd
//  >Import : http://docs.oasis-open.org/wsn/t-1.xsd
//  >Import : http://www.w3.org/2004/08/xop/include
// Encoding : utf-8
// Version  : 1.0
// (09.01.2019 17:17:03 - - $Rev: 45757 $)
// ************************************************************************ //

unit devicemgmt;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
  IS_NLBL = $0004;
  IS_ATTR = $0010;
  IS_TEXT = $0020;
  IS_REF  = $0080;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:hexBinary       - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:lang            - "http://www.w3.org/2001/XMLSchema"[GblAttr]
  // !:contentType     - "http://www.w3.org/2005/05/xmlmime"[GblAttr]
  // !:base64Binary    - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:anyURI          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:float           - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:double          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:token           - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:integer         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:duration        - "http://www.w3.org/2001/XMLSchema"[Gbl]


  contentType = type string;

  EapMethodExtension   = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  CertificateInformationExtension = class;      { "http://www.onvif.org/ver10/schema"[GblCplx] }
  Dot1XConfigurationExtension = class;          { "http://www.onvif.org/ver10/schema"[GblCplx] }
  PTZNodeExtension2    = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  PTZPresetTourSupportedExtension = class;      { "http://www.onvif.org/ver10/schema"[GblCplx] }
  LayoutExtension      = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  PTZNodeExtension     = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  ImagingSettingsExtension203 = class;          { "http://www.onvif.org/ver10/schema"[GblCplx] }
  ImagingSettingsExtension20 = class;           { "http://www.onvif.org/ver10/schema"[GblCplx] }
  FocusConfiguration20Extension = class;        { "http://www.onvif.org/ver10/schema"[GblCplx] }
  DefoggingExtension   = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  OSDConfigurationExtension = class;            { "http://www.onvif.org/ver10/schema"[GblCplx] }
  WhiteBalance20Extension = class;              { "http://www.onvif.org/ver10/schema"[GblCplx] }
  ImagingSettingsExtension204 = class;          { "http://www.onvif.org/ver10/schema"[GblCplx] }
  ImageStabilizationExtension = class;          { "http://www.onvif.org/ver10/schema"[GblCplx] }
  ToneCompensationExtension = class;            { "http://www.onvif.org/ver10/schema"[GblCplx] }
  IrCutFilterAutoAdjustmentExtension = class;   { "http://www.onvif.org/ver10/schema"[GblCplx] }
  PTZSpacesExtension   = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  ImagingSettingsExtension202 = class;          { "http://www.onvif.org/ver10/schema"[GblCplx] }
  PTZSpaces            = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  ImagingSettingsExtension = class;             { "http://www.onvif.org/ver10/schema"[GblCplx] }
  GetPkcs10RequestResponse = class;             { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetCertificatesStatusResponse = class;        { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  DeleteCertificatesResponse = class;           { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetClientCertificateModeResponse = class;     { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetCACertificates    = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  LoadCertificatesResponse = class;             { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetClientCertificateMode = class;             { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetAccessPolicy      = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  RemoveIPAddressFilterResponse = class;        { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetAccessPolicy      = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetAccessPolicyResponse = class;              { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetAccessPolicyResponse = class;              { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetCertificatesStatus = class;                { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  CreateCertificateResponse = class;            { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetCertificates      = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  DeleteDot1XConfigurationResponse = class;     { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetRelayOutputs      = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetDot1XConfigurations = class;               { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetRelayOutputStateResponse = class;          { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetRelayOutputSettingsResponse = class;       { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetCertificateInformationResponse = class;    { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  LoadCACertificatesResponse = class;           { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  LoadCertificateWithPrivateKeyResponse = class;   { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetDot1XConfigurationResponse = class;        { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetDot1XConfigurationResponse = class;        { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  CreateDot1XConfiguration = class;             { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  CreateDot1XConfigurationResponse = class;     { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetDot1XConfiguration = class;                { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetDNSResponse       = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetDNSResponse       = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetDNS               = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetNTPResponse       = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetDynamicDNS        = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetDynamicDNSResponse = class;                { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetNTP               = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetNTPResponse       = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetUserResponse      = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetWsdlUrl           = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  DeleteUsersResponse  = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetHostnameResponse  = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetHostnameResponse  = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetCapabilitiesResponse = class;              { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetHostname          = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetZeroConfigurationResponse = class;         { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetIPAddressFilter   = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetNetworkDefaultGatewayResponse = class;     { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetZeroConfiguration = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetZeroConfigurationResponse = class;         { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  AddIPAddressFilter   = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  AddIPAddressFilterResponse = class;           { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  RemoveIPAddressFilter = class;                { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetIPAddressFilterResponse = class;           { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetIPAddressFilter   = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetIPAddressFilterResponse = class;           { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetNetworkProtocols  = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetDynamicDNSResponse = class;                { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetNetworkInterfaces = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetNetworkDefaultGateway = class;             { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetNetworkDefaultGatewayResponse = class;     { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetNetworkProtocolsResponse = class;          { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetDot11Capabilities = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  DateTime             = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  SystemDateTimeExtension = class;              { "http://www.onvif.org/ver10/schema"[GblCplx] }
  hexBinary            = class;                 { "http://www.w3.org/2005/05/xmlmime"[GblCplx] }
  base64Binary         = class;                 { "http://www.w3.org/2005/05/xmlmime"[GblCplx] }
  BinaryData           = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  SystemDateTime       = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  SetNetworkInterfacesResponse = class;         { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetHostnameFromDHCPResponse = class;          { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetHostnameFromDHCP  = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetClientCertificateModeResponse = class;     { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetClientCertificateMode = class;             { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  DateTimeRange        = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  BackupFile           = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  SupportInformation   = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  EAPMethodConfiguration = class;               { "http://www.onvif.org/ver10/schema"[GblCplx] }
  UserExtension        = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  SystemLogUri         = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  GetWsdlUrlResponse   = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  Space1DDescription   = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  Space2DDescription   = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  Vector               = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  Rectangle            = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  WideDynamicRange     = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  WhiteBalance         = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  BacklightCompensation20 = class;              { "http://www.onvif.org/ver10/schema"[GblCplx] }
  BacklightCompensation = class;                { "http://www.onvif.org/ver10/schema"[GblCplx] }
  Exposure             = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  FocusConfiguration   = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  Exposure20           = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  NoiseReduction       = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  ImageStabilization   = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  WhiteBalance20       = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  FocusConfiguration20 = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  WideDynamicRange20   = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  ToneCompensation     = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  Defogging            = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  CertificateUsage     = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  LocalLocation        = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  GeoOrientation       = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  SetNetworkInterfaces = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetZeroConfiguration = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetDot1XConfiguration = class;                { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetRelayOutputSettings = class;               { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  PaneLayout           = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  LocationEntity       = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  LocalOrientation     = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  Color                = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  User                 = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  GeoLocation          = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  RemoteUser           = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  CreateStorageConfigurationResponse = class;   { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetStorageConfiguration = class;              { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetStorageConfigurationResponse = class;      { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetStorageConfigurations = class;             { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  CreateStorageConfiguration = class;           { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  DeleteStorageConfigurationResponse = class;   { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetGeoLocation       = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetStorageConfiguration = class;              { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetStorageConfigurationResponse = class;      { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  DeleteStorageConfiguration = class;           { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  ScanAvailableDot11Networks = class;           { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetSystemUris        = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetDot11CapabilitiesResponse = class;         { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetDot11Status       = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetDot11StatusResponse = class;               { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  StartSystemRestore   = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetSystemUrisResponse = class;                { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  Extension            = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Cplx] }
  StartFirmwareUpgrade = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  AnalyticsDeviceExtension = class;             { "http://www.onvif.org/ver10/schema"[GblCplx] }
  SystemLog            = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  AttachmentData       = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  SystemCapabilitiesExtension = class;          { "http://www.onvif.org/ver10/schema"[GblCplx] }
  SystemCapabilitiesExtension2 = class;         { "http://www.onvif.org/ver10/schema"[GblCplx] }
  RealTimeStreamingCapabilities = class;        { "http://www.onvif.org/ver10/schema"[GblCplx] }
  MediaCapabilitiesExtension = class;           { "http://www.onvif.org/ver10/schema"[GblCplx] }
  SetGeoLocationResponse = class;               { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  DeleteGeoLocationResponse = class;            { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  NetworkCapabilitiesExtension2 = class;        { "http://www.onvif.org/ver10/schema"[GblCplx] }
  SecurityCapabilitiesExtension = class;        { "http://www.onvif.org/ver10/schema"[GblCplx] }
  RealTimeStreamingCapabilitiesExtension = class;   { "http://www.onvif.org/ver10/schema"[GblCplx] }
  NetworkCapabilitiesExtension = class;         { "http://www.onvif.org/ver10/schema"[GblCplx] }
  reasontext           = class;                 { "http://www.w3.org/2003/05/soap-envelope"[GblCplx] }
  CreateUsersResponse  = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  IPv4NetworkInterfaceSetConfiguration = class;   { "http://www.onvif.org/ver10/schema"[GblCplx] }
  NetworkInterfaceSetConfigurationExtension = class;   { "http://www.onvif.org/ver10/schema"[GblCplx] }
  DynamicDNSInformationExtension = class;       { "http://www.onvif.org/ver10/schema"[GblCplx] }
  CertificateWithPrivateKey = class;            { "http://www.onvif.org/ver10/schema"[GblCplx] }
  CertificateStatus    = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  Certificate          = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  TimeZone             = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  SetHostname          = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetCertificateInformation = class;            { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  CreateCertificate    = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetDNS               = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetPkcs10Request     = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  TLSConfiguration     = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  OSDPosConfiguration  = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  OSDPosConfigurationExtension = class;         { "http://www.onvif.org/ver10/schema"[GblCplx] }
  NetworkInterfaceSetConfigurationExtension2 = class;   { "http://www.onvif.org/ver10/schema"[GblCplx] }
  OSDReference         = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  HostnameInformation  = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  HostnameInformationExtension = class;         { "http://www.onvif.org/ver10/schema"[GblCplx] }
  NetworkHostExtension = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  NTPInformationExtension = class;              { "http://www.onvif.org/ver10/schema"[GblCplx] }
  DNSInformation       = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  DNSInformationExtension = class;              { "http://www.onvif.org/ver10/schema"[GblCplx] }
  Dot11SecurityConfiguration = class;           { "http://www.onvif.org/ver10/schema"[GblCplx] }
  Dot11PSKSetExtension = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  Dot11Capabilities    = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  Dot11SecurityConfigurationExtension = class;   { "http://www.onvif.org/ver10/schema"[GblCplx] }
  Dot11PSKSet          = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  NetworkZeroConfigurationExtension = class;    { "http://www.onvif.org/ver10/schema"[GblCplx] }
  NetworkZeroConfigurationExtension2 = class;   { "http://www.onvif.org/ver10/schema"[GblCplx] }
  OSDTextConfigurationExtension = class;        { "http://www.onvif.org/ver10/schema"[GblCplx] }
  OSDImgConfiguration  = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  OSDImgConfigurationExtension = class;         { "http://www.onvif.org/ver10/schema"[GblCplx] }
  Description          = class;                 { "http://docs.oasis-open.org/wsrf/bf-2"[Cplx] }
  IPAddressFilter      = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  IPAddressFilterExtension = class;             { "http://www.onvif.org/ver10/schema"[GblCplx] }
  ImagingSettings20    = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  VideoSourceExtension2 = class;                { "http://www.onvif.org/ver10/schema"[GblCplx] }
  Scope                = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  Layout               = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  VideoOutputExtension = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  DeviceEntity         = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  AudioOutput          = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  VideoOutput          = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  OSDConfiguration     = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  DigitalInput         = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  RelayOutput          = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  AudioSource          = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  OSDTextConfiguration = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  OSDColor             = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  NetworkInterfaceSetConfiguration = class;     { "http://www.onvif.org/ver10/schema"[GblCplx] }
  ProfileCapabilities  = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  OnvifVersion         = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  Date                 = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  CertificateInformation = class;               { "http://www.onvif.org/ver10/schema"[GblCplx] }
  Time                 = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  PTZPresetTourSupported = class;               { "http://www.onvif.org/ver10/schema"[GblCplx] }
  Dot1XConfiguration   = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  FloatRange           = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  Include2             = class;                 { "http://www.w3.org/2004/08/xop/include"[GblCplx] }
  Include              = class;                 { "http://www.w3.org/2004/08/xop/include"[GblElm] }
  VideoResolution      = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  ImagingSettings      = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  VideoSourceExtension = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  DynamicDNSInformation = class;                { "http://www.onvif.org/ver10/schema"[GblCplx] }
  StartSystemRestoreResponse = class;           { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  StartFirmwareUpgradeResponse = class;         { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetDynamicDNS        = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  IrCutFilterAutoAdjustment = class;            { "http://www.onvif.org/ver10/schema"[GblCplx] }
  RelayOutputSettings  = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  SecurityCapabilitiesExtension2 = class;       { "http://www.onvif.org/ver10/schema"[GblCplx] }
  VideoSource          = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  NetworkInterface     = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  IPv6NetworkInterfaceSetConfiguration = class;   { "http://www.onvif.org/ver10/schema"[GblCplx] }
  PrefixedIPv6Address  = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  IPv6ConfigurationExtension = class;           { "http://www.onvif.org/ver10/schema"[GblCplx] }
  IPv6Configuration    = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  IPv4Configuration    = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  NetworkHost          = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  PrefixedIPv4Address  = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  IPAddress            = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  NetworkZeroConfiguration = class;             { "http://www.onvif.org/ver10/schema"[GblCplx] }
  NetworkGateway       = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  SetNetworkDefaultGateway = class;             { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  NetworkProtocol      = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  NetworkProtocolExtension = class;             { "http://www.onvif.org/ver10/schema"[GblCplx] }
  IPv6NetworkInterface = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  NetworkInterfaceExtension = class;            { "http://www.onvif.org/ver10/schema"[GblCplx] }
  NetworkInterfaceLink = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  IPv4NetworkInterface = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  NetworkInterfaceConnectionSetting = class;    { "http://www.onvif.org/ver10/schema"[GblCplx] }
  NetworkInterfaceInfo = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  Dot3Configuration    = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  Dot11Configuration   = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  NetworkInterfaceExtension2 = class;           { "http://www.onvif.org/ver10/schema"[GblCplx] }
  Dot11Status          = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  GetSystemSupportInformation = class;          { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetSystemSupportInformationResponse = class;   { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  RestoreSystemResponse = class;                { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetSystemBackup      = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetScopesResponse    = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetSystemLog         = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetSystemLogResponse = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetScopes            = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetSystemDateAndTimeResponse = class;         { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetSystemDateAndTime = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetSystemDateAndTimeResponse = class;         { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetDeviceInformation = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetDeviceInformationResponse = class;         { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetSystemDateAndTime = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  UpgradeSystemFirmwareResponse = class;        { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SystemReboot         = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SystemRebootResponse = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetSystemFactoryDefaultResponse = class;      { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  UpgradeSystemFirmware = class;                { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetEndpointReference = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetEndpointReferenceResponse = class;         { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetRemoteUser        = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  NTPInformation       = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  SetNTP               = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetDPAddressesResponse = class;               { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetUsers             = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetRemoteUserResponse = class;                { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetRemoteUser        = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetRemoteUserResponse = class;                { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetDiscoveryMode     = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  AddScopesResponse    = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetRemoteDiscoveryModeResponse = class;       { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetDPAddresses       = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetDiscoveryModeResponse = class;             { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetRemoteDiscoveryMode = class;               { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  DeviceIOCapabilities = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  DisplayCapabilities  = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  RecordingCapabilities = class;                { "http://www.onvif.org/ver10/schema"[GblCplx] }
  MediaCapabilities    = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  PTZCapabilities      = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  CapabilitiesExtension = class;                { "http://www.onvif.org/ver10/schema"[GblCplx] }
  AnalyticsDeviceCapabilities = class;          { "http://www.onvif.org/ver10/schema"[GblCplx] }
  CapabilitiesExtension2 = class;               { "http://www.onvif.org/ver10/schema"[GblCplx] }
  NetworkCapabilities  = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  SearchCapabilities   = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  ReplayCapabilities   = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  ReceiverCapabilities = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  Capabilities2        = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  GetRemoteDiscoveryModeResponse = class;       { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetRemoteDiscoveryMode = class;               { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetDiscoveryMode     = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetDiscoveryModeResponse = class;             { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  AnalyticsCapabilities = class;                { "http://www.onvif.org/ver10/schema"[GblCplx] }
  Dot11AvailableNetworks = class;               { "http://www.onvif.org/ver10/schema"[GblCplx] }
  Dot11AvailableNetworksExtension = class;      { "http://www.onvif.org/ver10/schema"[GblCplx] }
  DeviceCapabilities   = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  EventCapabilities    = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  ImagingCapabilities  = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  SetSystemFactoryDefault = class;              { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetRelayOutputState  = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SystemCapabilities   = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  Extension2           = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Cplx] }
  StorageConfiguration = class;                 { "http://www.onvif.org/ver10/device/wsdl"[GblCplx] }
  PTZNode              = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  SendAuxiliaryCommandResponse = class;         { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SendAuxiliaryCommand = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  UserCredential       = class;                 { "http://www.onvif.org/ver10/device/wsdl"[GblCplx] }
  Extension3           = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Cplx] }
  StorageConfigurationData = class;             { "http://www.onvif.org/ver10/device/wsdl"[GblCplx] }
  GetServiceCapabilities = class;               { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetServiceCapabilitiesResponse = class;       { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  IOCapabilitiesExtension2 = class;             { "http://www.onvif.org/ver10/schema"[GblCplx] }
  GetServices          = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  IOCapabilitiesExtension = class;              { "http://www.onvif.org/ver10/schema"[GblCplx] }
  Service              = class;                 { "http://www.onvif.org/ver10/device/wsdl"[GblCplx] }
  Capabilities3        = class;                 { "http://www.onvif.org/ver10/device/wsdl"[Cplx] }
  IOCapabilities       = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  SecurityCapabilities = class;                 { "http://www.onvif.org/ver10/schema"[GblCplx] }
  DeviceCapabilitiesExtension = class;          { "http://www.onvif.org/ver10/schema"[GblCplx] }
  SystemCapabilities2  = class;                 { "http://www.onvif.org/ver10/device/wsdl"[GblCplx] }
  MiscCapabilities     = class;                 { "http://www.onvif.org/ver10/device/wsdl"[GblCplx] }
  DeviceServiceCapabilities = class;            { "http://www.onvif.org/ver10/device/wsdl"[GblCplx] }
  Capabilities         = class;                 { "http://www.onvif.org/ver10/device/wsdl"[GblElm] }
  NetworkCapabilities2 = class;                 { "http://www.onvif.org/ver10/device/wsdl"[GblCplx] }
  SecurityCapabilities2 = class;                { "http://www.onvif.org/ver10/device/wsdl"[GblCplx] }

  {$SCOPEDENUMS ON}
  { "http://www.onvif.org/ver10/schema"[GblSmpl] }
  RelayMode = (Monostable, Bistable);

  { "http://www.onvif.org/ver10/schema"[GblSmpl] }
  RelayIdleState = (closed, open);

  { "http://www.onvif.org/ver10/schema"[GblSmpl] }
  PTZPresetTourOperation = (Start, Stop, Pause, Extended);

  { "http://www.onvif.org/ver10/schema"[GblSmpl] }
  DigitalIdleState = (closed, open);

  { "http://www.onvif.org/ver10/schema"[GblSmpl] }
  OSDType = (Text, Image, Extended);

  { "http://www.onvif.org/ver10/schema"[GblSmpl] }
  ImageStabilizationMode = (OFF, ON_, AUTO, Extended);

  { "http://www.onvif.org/ver10/schema"[GblSmpl] }
  AutoFocusMode = (AUTO, MANUAL);

  { "http://www.onvif.org/ver10/schema"[GblSmpl] }
  IrCutFilterMode = (ON_, OFF, AUTO);

  { "http://www.onvif.org/ver10/schema"[GblSmpl] }
  BacklightCompensationMode = (OFF, ON_);

  { "http://www.onvif.org/ver10/schema"[GblSmpl] }
  WideDynamicMode = (OFF, ON_);

  { "http://www.onvif.org/ver10/schema"[GblSmpl] }
  WhiteBalanceMode = (AUTO, MANUAL);

  { "http://www.onvif.org/ver10/schema"[GblSmpl] }
  ExposurePriority = (LowNoise, FrameRate);

  { "http://www.onvif.org/ver10/schema"[GblSmpl] }
  ExposureMode = (AUTO, MANUAL);

  { "http://www.onvif.org/ver10/schema"[GblSmpl] }
  SetDateTimeType = (Manual, NTP);

  { "http://www.onvif.org/ver10/schema"[GblSmpl] }
  SystemLogType = (System, Access);

  { "http://www.onvif.org/ver10/schema"[GblSmpl] }
  UserLevel = (Administrator, Operator, User, Anonymous, Extended);

  { "http://www.onvif.org/ver10/schema"[GblSmpl] }
  IPType = (IPv4, IPv6);

  { "http://www.onvif.org/ver10/schema"[GblSmpl] }
  DynamicDNSType = (NoUpdate, ClientUpdates, ServerUpdates);

  { "http://www.onvif.org/ver10/schema"[GblSmpl] }
  Dot11SecurityMode = (None, WEP, PSK, Dot1X, Extended);

  { "http://www.onvif.org/ver10/schema"[GblSmpl] }
  Dot11Cipher = (CCMP, TKIP, Any, Extended);

  { "http://www.onvif.org/ver10/schema"[GblSmpl] }
  Dot11StationMode = (Ad_hoc, Infrastructure, Extended);

  { "http://www.onvif.org/ver10/schema"[GblSmpl] }
  IPAddressFilterType = (Allow, Deny);

  { "http://www.onvif.org/ver10/schema"[GblSmpl] }
  ScopeDefinition = (Fixed, Configurable);

  { "http://www.onvif.org/ver10/schema"[GblSmpl] }
  IPv6DHCPConfiguration = (Auto, Stateful, Stateless, Off);

  { "http://www.onvif.org/ver10/schema"[GblSmpl] }
  NetworkHostType = (IPv4, IPv6, DNS);

  { "http://www.onvif.org/ver10/schema"[GblSmpl] }
  NetworkProtocolType = (HTTP, HTTPS, RTSP);

  { "http://www.onvif.org/ver10/schema"[GblSmpl] }
  Duplex = (Full, Half);

  { "http://www.onvif.org/ver10/schema"[GblSmpl] }
  Dot11SignalStrength = (None, Very_Bad, Bad, Good, Very_Good, Extended);

  { "http://www.onvif.org/ver10/schema"[GblSmpl] }
  DiscoveryMode = (Discoverable, NonDiscoverable);

  { "http://www.onvif.org/ver10/schema"[GblSmpl] }
  Dot11AuthAndMangementSuite = (None, Dot1X, PSK, Extended);

  { "http://www.onvif.org/ver10/schema"[GblSmpl] }
  CapabilityCategory = (All, Analytics, CDevice, Events, Imaging, Media, PTZ); //А было Device!

  { "http://www.onvif.org/ver10/schema"[GblSmpl] }
  FactoryDefaultType = (Hard, Soft);

  { "http://www.onvif.org/ver10/schema"[GblSmpl] }
  RelayLogicalState = (active, inactive);

  {$SCOPEDENUMS OFF}



  // ************************************************************************ //
  // XML       : EapMethodExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  EapMethodExtension = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : CertificateInformationExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  CertificateInformationExtension = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : Dot1XConfigurationExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  Dot1XConfigurationExtension = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : PTZNodeExtension2, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  PTZNodeExtension2 = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : PTZPresetTourSupportedExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  PTZPresetTourSupportedExtension = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : LayoutExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  LayoutExtension = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : PTZNodeExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  PTZNodeExtension = class(TRemotable)
  private
    FSupportedPresetTour: PTZPresetTourSupported;
    FSupportedPresetTour_Specified: boolean;
    FExtension: PTZNodeExtension2;
    FExtension_Specified: boolean;
    procedure SetSupportedPresetTour(Index: Integer; const APTZPresetTourSupported: PTZPresetTourSupported);
    function  SupportedPresetTour_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const APTZNodeExtension2: PTZNodeExtension2);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property SupportedPresetTour: PTZPresetTourSupported  Index (IS_OPTN) read FSupportedPresetTour write SetSupportedPresetTour stored SupportedPresetTour_Specified;
    property Extension:           PTZNodeExtension2       Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : ImagingSettingsExtension203, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  ImagingSettingsExtension203 = class(TRemotable)
  private
    FToneCompensation: ToneCompensation;
    FToneCompensation_Specified: boolean;
    FDefogging: Defogging;
    FDefogging_Specified: boolean;
    FNoiseReduction: NoiseReduction;
    FNoiseReduction_Specified: boolean;
    FExtension: ImagingSettingsExtension204;
    FExtension_Specified: boolean;
    procedure SetToneCompensation(Index: Integer; const AToneCompensation: ToneCompensation);
    function  ToneCompensation_Specified(Index: Integer): boolean;
    procedure SetDefogging(Index: Integer; const ADefogging: Defogging);
    function  Defogging_Specified(Index: Integer): boolean;
    procedure SetNoiseReduction(Index: Integer; const ANoiseReduction: NoiseReduction);
    function  NoiseReduction_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const AImagingSettingsExtension204: ImagingSettingsExtension204);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property ToneCompensation: ToneCompensation             Index (IS_OPTN) read FToneCompensation write SetToneCompensation stored ToneCompensation_Specified;
    property Defogging:        Defogging                    Index (IS_OPTN) read FDefogging write SetDefogging stored Defogging_Specified;
    property NoiseReduction:   NoiseReduction               Index (IS_OPTN) read FNoiseReduction write SetNoiseReduction stored NoiseReduction_Specified;
    property Extension:        ImagingSettingsExtension204  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : ImagingSettingsExtension20, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  ImagingSettingsExtension20 = class(TRemotable)
  private
    FImageStabilization: ImageStabilization;
    FImageStabilization_Specified: boolean;
    FExtension: ImagingSettingsExtension202;
    FExtension_Specified: boolean;
    procedure SetImageStabilization(Index: Integer; const AImageStabilization: ImageStabilization);
    function  ImageStabilization_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const AImagingSettingsExtension202: ImagingSettingsExtension202);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property ImageStabilization: ImageStabilization           Index (IS_OPTN) read FImageStabilization write SetImageStabilization stored ImageStabilization_Specified;
    property Extension:          ImagingSettingsExtension202  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : FocusConfiguration20Extension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  FocusConfiguration20Extension = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : DefoggingExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  DefoggingExtension = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : OSDConfigurationExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  OSDConfigurationExtension = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : WhiteBalance20Extension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  WhiteBalance20Extension = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : ImagingSettingsExtension204, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  ImagingSettingsExtension204 = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : ImageStabilizationExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  ImageStabilizationExtension = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : ToneCompensationExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  ToneCompensationExtension = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : IrCutFilterAutoAdjustmentExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  IrCutFilterAutoAdjustmentExtension = class(TRemotable)
  private
  published
  end;

  Array_Of_Space2DDescription = array of Space2DDescription;   { "http://www.onvif.org/ver10/schema"[GblUbnd] }


  // ************************************************************************ //
  // XML       : PTZSpacesExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  PTZSpacesExtension = class(TRemotable)
  private
  published
  end;

  Array_Of_IrCutFilterAutoAdjustment = array of IrCutFilterAutoAdjustment;   { "http://www.onvif.org/ver10/schema"[GblUbnd] }


  // ************************************************************************ //
  // XML       : ImagingSettingsExtension202, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  ImagingSettingsExtension202 = class(TRemotable)
  private
    FIrCutFilterAutoAdjustment: Array_Of_IrCutFilterAutoAdjustment;
    FIrCutFilterAutoAdjustment_Specified: boolean;
    FExtension: ImagingSettingsExtension203;
    FExtension_Specified: boolean;
    procedure SetIrCutFilterAutoAdjustment(Index: Integer; const AArray_Of_IrCutFilterAutoAdjustment: Array_Of_IrCutFilterAutoAdjustment);
    function  IrCutFilterAutoAdjustment_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const AImagingSettingsExtension203: ImagingSettingsExtension203);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property IrCutFilterAutoAdjustment: Array_Of_IrCutFilterAutoAdjustment  Index (IS_OPTN or IS_UNBD) read FIrCutFilterAutoAdjustment write SetIrCutFilterAutoAdjustment stored IrCutFilterAutoAdjustment_Specified;
    property Extension:                 ImagingSettingsExtension203         Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;

  Array_Of_Space1DDescription = array of Space1DDescription;   { "http://www.onvif.org/ver10/schema"[GblUbnd] }


  // ************************************************************************ //
  // XML       : PTZSpaces, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  PTZSpaces = class(TRemotable)
  private
    FAbsolutePanTiltPositionSpace: Array_Of_Space2DDescription;
    FAbsolutePanTiltPositionSpace_Specified: boolean;
    FAbsoluteZoomPositionSpace: Array_Of_Space1DDescription;
    FAbsoluteZoomPositionSpace_Specified: boolean;
    FRelativePanTiltTranslationSpace: Array_Of_Space2DDescription;
    FRelativePanTiltTranslationSpace_Specified: boolean;
    FRelativeZoomTranslationSpace: Array_Of_Space1DDescription;
    FRelativeZoomTranslationSpace_Specified: boolean;
    FContinuousPanTiltVelocitySpace: Array_Of_Space2DDescription;
    FContinuousPanTiltVelocitySpace_Specified: boolean;
    FContinuousZoomVelocitySpace: Array_Of_Space1DDescription;
    FContinuousZoomVelocitySpace_Specified: boolean;
    FPanTiltSpeedSpace: Array_Of_Space1DDescription;
    FPanTiltSpeedSpace_Specified: boolean;
    FZoomSpeedSpace: Array_Of_Space1DDescription;
    FZoomSpeedSpace_Specified: boolean;
    FExtension: PTZSpacesExtension;
    FExtension_Specified: boolean;
    procedure SetAbsolutePanTiltPositionSpace(Index: Integer; const AArray_Of_Space2DDescription: Array_Of_Space2DDescription);
    function  AbsolutePanTiltPositionSpace_Specified(Index: Integer): boolean;
    procedure SetAbsoluteZoomPositionSpace(Index: Integer; const AArray_Of_Space1DDescription: Array_Of_Space1DDescription);
    function  AbsoluteZoomPositionSpace_Specified(Index: Integer): boolean;
    procedure SetRelativePanTiltTranslationSpace(Index: Integer; const AArray_Of_Space2DDescription: Array_Of_Space2DDescription);
    function  RelativePanTiltTranslationSpace_Specified(Index: Integer): boolean;
    procedure SetRelativeZoomTranslationSpace(Index: Integer; const AArray_Of_Space1DDescription: Array_Of_Space1DDescription);
    function  RelativeZoomTranslationSpace_Specified(Index: Integer): boolean;
    procedure SetContinuousPanTiltVelocitySpace(Index: Integer; const AArray_Of_Space2DDescription: Array_Of_Space2DDescription);
    function  ContinuousPanTiltVelocitySpace_Specified(Index: Integer): boolean;
    procedure SetContinuousZoomVelocitySpace(Index: Integer; const AArray_Of_Space1DDescription: Array_Of_Space1DDescription);
    function  ContinuousZoomVelocitySpace_Specified(Index: Integer): boolean;
    procedure SetPanTiltSpeedSpace(Index: Integer; const AArray_Of_Space1DDescription: Array_Of_Space1DDescription);
    function  PanTiltSpeedSpace_Specified(Index: Integer): boolean;
    procedure SetZoomSpeedSpace(Index: Integer; const AArray_Of_Space1DDescription: Array_Of_Space1DDescription);
    function  ZoomSpeedSpace_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const APTZSpacesExtension: PTZSpacesExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property AbsolutePanTiltPositionSpace:    Array_Of_Space2DDescription  Index (IS_OPTN or IS_UNBD) read FAbsolutePanTiltPositionSpace write SetAbsolutePanTiltPositionSpace stored AbsolutePanTiltPositionSpace_Specified;
    property AbsoluteZoomPositionSpace:       Array_Of_Space1DDescription  Index (IS_OPTN or IS_UNBD) read FAbsoluteZoomPositionSpace write SetAbsoluteZoomPositionSpace stored AbsoluteZoomPositionSpace_Specified;
    property RelativePanTiltTranslationSpace: Array_Of_Space2DDescription  Index (IS_OPTN or IS_UNBD) read FRelativePanTiltTranslationSpace write SetRelativePanTiltTranslationSpace stored RelativePanTiltTranslationSpace_Specified;
    property RelativeZoomTranslationSpace:    Array_Of_Space1DDescription  Index (IS_OPTN or IS_UNBD) read FRelativeZoomTranslationSpace write SetRelativeZoomTranslationSpace stored RelativeZoomTranslationSpace_Specified;
    property ContinuousPanTiltVelocitySpace:  Array_Of_Space2DDescription  Index (IS_OPTN or IS_UNBD) read FContinuousPanTiltVelocitySpace write SetContinuousPanTiltVelocitySpace stored ContinuousPanTiltVelocitySpace_Specified;
    property ContinuousZoomVelocitySpace:     Array_Of_Space1DDescription  Index (IS_OPTN or IS_UNBD) read FContinuousZoomVelocitySpace write SetContinuousZoomVelocitySpace stored ContinuousZoomVelocitySpace_Specified;
    property PanTiltSpeedSpace:               Array_Of_Space1DDescription  Index (IS_OPTN or IS_UNBD) read FPanTiltSpeedSpace write SetPanTiltSpeedSpace stored PanTiltSpeedSpace_Specified;
    property ZoomSpeedSpace:                  Array_Of_Space1DDescription  Index (IS_OPTN or IS_UNBD) read FZoomSpeedSpace write SetZoomSpeedSpace stored ZoomSpeedSpace_Specified;
    property Extension:                       PTZSpacesExtension           Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;

  Array_Of_PTZPresetTourOperation = array of PTZPresetTourOperation;   { "http://www.onvif.org/ver10/schema"[GblUbnd] }
  Array_Of_PaneLayout = array of PaneLayout;    { "http://www.onvif.org/ver10/schema"[GblUbnd] }


  // ************************************************************************ //
  // XML       : ImagingSettingsExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  ImagingSettingsExtension = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : GetPkcs10RequestResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetPkcs10RequestResponse = class(TRemotable)
  private
    FPkcs10Request: BinaryData;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Pkcs10Request: BinaryData  read FPkcs10Request write FPkcs10Request;
  end;



  // ************************************************************************ //
  // XML       : SetCertificatesStatusResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetCertificatesStatusResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : DeleteCertificatesResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  DeleteCertificatesResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : SetClientCertificateModeResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetClientCertificateModeResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : GetCACertificates, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetCACertificates = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;

  LoadCertificates = array of Certificate;      { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }


  // ************************************************************************ //
  // XML       : LoadCertificatesResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  LoadCertificatesResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : GetClientCertificateMode, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetClientCertificateMode = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : GetAccessPolicy, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetAccessPolicy = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : RemoveIPAddressFilterResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  RemoveIPAddressFilterResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : SetAccessPolicy, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetAccessPolicy = class(TRemotable)
  private
    FPolicyFile: BinaryData;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property PolicyFile: BinaryData  read FPolicyFile write FPolicyFile;
  end;



  // ************************************************************************ //
  // XML       : SetAccessPolicyResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetAccessPolicyResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : GetAccessPolicyResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetAccessPolicyResponse = class(TRemotable)
  private
    FPolicyFile: BinaryData;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property PolicyFile: BinaryData  read FPolicyFile write FPolicyFile;
  end;



  // ************************************************************************ //
  // XML       : GetCertificatesStatus, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetCertificatesStatus = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;

  GetCertificatesStatusResponse = array of CertificateStatus;   { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetCertificatesStatus = array of CertificateStatus;   { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }


  // ************************************************************************ //
  // XML       : CreateCertificateResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  CreateCertificateResponse = class(TRemotable)
  private
    FNvtCertificate: Certificate;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property NvtCertificate: Certificate  read FNvtCertificate write FNvtCertificate;
  end;



  // ************************************************************************ //
  // XML       : GetCertificates, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetCertificates = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;

  GetCertificatesResponse = array of Certificate;   { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  GetCACertificatesResponse = array of Certificate;   { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }


  // ************************************************************************ //
  // XML       : DeleteDot1XConfigurationResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  DeleteDot1XConfigurationResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : GetRelayOutputs, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetRelayOutputs = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;

  GetRelayOutputsResponse = array of RelayOutput;   { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }


  // ************************************************************************ //
  // XML       : GetDot1XConfigurations, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetDot1XConfigurations = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;

  GetDot1XConfigurationsResponse = array of Dot1XConfiguration;   { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }


  // ************************************************************************ //
  // XML       : SetRelayOutputStateResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetRelayOutputStateResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : SetRelayOutputSettingsResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetRelayOutputSettingsResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : GetCertificateInformationResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetCertificateInformationResponse = class(TRemotable)
  private
    FCertificateInformation: CertificateInformation;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property CertificateInformation: CertificateInformation  read FCertificateInformation write FCertificateInformation;
  end;

  LoadCACertificates = array of Certificate;    { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }


  // ************************************************************************ //
  // XML       : LoadCACertificatesResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  LoadCACertificatesResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;

  LoadCertificateWithPrivateKey = array of CertificateWithPrivateKey;   { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }


  // ************************************************************************ //
  // XML       : LoadCertificateWithPrivateKeyResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  LoadCertificateWithPrivateKeyResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : SetDot1XConfigurationResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetDot1XConfigurationResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : GetDot1XConfigurationResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetDot1XConfigurationResponse = class(TRemotable)
  private
    FDot1XConfiguration: Dot1XConfiguration;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Dot1XConfiguration: Dot1XConfiguration  read FDot1XConfiguration write FDot1XConfiguration;
  end;



  // ************************************************************************ //
  // XML       : CreateDot1XConfiguration, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  CreateDot1XConfiguration = class(TRemotable)
  private
    FDot1XConfiguration: Dot1XConfiguration;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Dot1XConfiguration: Dot1XConfiguration  read FDot1XConfiguration write FDot1XConfiguration;
  end;



  // ************************************************************************ //
  // XML       : CreateDot1XConfigurationResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  CreateDot1XConfigurationResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : SetDot1XConfiguration, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetDot1XConfiguration = class(TRemotable)
  private
    FDot1XConfiguration: Dot1XConfiguration;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Dot1XConfiguration: Dot1XConfiguration  read FDot1XConfiguration write FDot1XConfiguration;
  end;



  // ************************************************************************ //
  // XML       : GetDNSResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetDNSResponse = class(TRemotable)
  private
    FDNSInformation: DNSInformation;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property DNSInformation: DNSInformation  read FDNSInformation write FDNSInformation;
  end;



  // ************************************************************************ //
  // XML       : SetDNSResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetDNSResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : GetDNS, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetDNS = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : SetNTPResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetNTPResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : GetDynamicDNS, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetDynamicDNS = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : GetDynamicDNSResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetDynamicDNSResponse = class(TRemotable)
  private
    FDynamicDNSInformation: DynamicDNSInformation;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property DynamicDNSInformation: DynamicDNSInformation  read FDynamicDNSInformation write FDynamicDNSInformation;
  end;



  // ************************************************************************ //
  // XML       : GetNTP, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetNTP = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : GetNTPResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetNTPResponse = class(TRemotable)
  private
    FNTPInformation: NTPInformation;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property NTPInformation: NTPInformation  read FNTPInformation write FNTPInformation;
  end;



  // ************************************************************************ //
  // XML       : SetUserResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetUserResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : GetWsdlUrl, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetWsdlUrl = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : DeleteUsersResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  DeleteUsersResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;

  SetUser    = array of User;                   { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }


  // ************************************************************************ //
  // XML       : GetHostnameResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetHostnameResponse = class(TRemotable)
  private
    FHostnameInformation: HostnameInformation;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property HostnameInformation: HostnameInformation  read FHostnameInformation write FHostnameInformation;
  end;



  // ************************************************************************ //
  // XML       : SetHostnameResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetHostnameResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : GetCapabilitiesResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetCapabilitiesResponse = class(TRemotable)
  private
    FCapabilities: Capabilities2;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Capabilities: Capabilities2  read FCapabilities write FCapabilities;
  end;



  // ************************************************************************ //
  // XML       : GetHostname, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetHostname = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : SetZeroConfigurationResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetZeroConfigurationResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : GetIPAddressFilter, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetIPAddressFilter = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : SetNetworkDefaultGatewayResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetNetworkDefaultGatewayResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : GetZeroConfiguration, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetZeroConfiguration = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : GetZeroConfigurationResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetZeroConfigurationResponse = class(TRemotable)
  private
    FZeroConfiguration: NetworkZeroConfiguration;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property ZeroConfiguration: NetworkZeroConfiguration  read FZeroConfiguration write FZeroConfiguration;
  end;



  // ************************************************************************ //
  // XML       : AddIPAddressFilter, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  AddIPAddressFilter = class(TRemotable)
  private
    FIPAddressFilter: IPAddressFilter;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property IPAddressFilter: IPAddressFilter  read FIPAddressFilter write FIPAddressFilter;
  end;



  // ************************************************************************ //
  // XML       : AddIPAddressFilterResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  AddIPAddressFilterResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : RemoveIPAddressFilter, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  RemoveIPAddressFilter = class(TRemotable)
  private
    FIPAddressFilter: IPAddressFilter;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property IPAddressFilter: IPAddressFilter  read FIPAddressFilter write FIPAddressFilter;
  end;



  // ************************************************************************ //
  // XML       : GetIPAddressFilterResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetIPAddressFilterResponse = class(TRemotable)
  private
    FIPAddressFilter: IPAddressFilter;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property IPAddressFilter: IPAddressFilter  read FIPAddressFilter write FIPAddressFilter;
  end;



  // ************************************************************************ //
  // XML       : SetIPAddressFilter, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetIPAddressFilter = class(TRemotable)
  private
    FIPAddressFilter: IPAddressFilter;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property IPAddressFilter: IPAddressFilter  read FIPAddressFilter write FIPAddressFilter;
  end;



  // ************************************************************************ //
  // XML       : SetIPAddressFilterResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetIPAddressFilterResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : GetNetworkProtocols, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetNetworkProtocols = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : SetDynamicDNSResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetDynamicDNSResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : GetNetworkInterfaces, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetNetworkInterfaces = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;

  GetNetworkInterfacesResponse = array of NetworkInterface;   { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }


  // ************************************************************************ //
  // XML       : GetNetworkDefaultGateway, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetNetworkDefaultGateway = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : GetNetworkDefaultGatewayResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetNetworkDefaultGatewayResponse = class(TRemotable)
  private
    FNetworkGateway: NetworkGateway;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property NetworkGateway: NetworkGateway  read FNetworkGateway write FNetworkGateway;
  end;

  GetNetworkProtocolsResponse = array of NetworkProtocol;   { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetNetworkProtocols = array of NetworkProtocol;   { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }


  // ************************************************************************ //
  // XML       : SetNetworkProtocolsResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetNetworkProtocolsResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : GetDot11Capabilities, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetDot11Capabilities = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : DateTime, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  DateTime = class(TRemotable)
  private
    FTime: Time;
    FDate: Date;
  public
    destructor Destroy; override;
  published
    property Time: Time  read FTime write FTime;
    property Date: Date  read FDate write FDate;
  end;



  // ************************************************************************ //
  // XML       : SystemDateTimeExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  SystemDateTimeExtension = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : hexBinary, global, <complexType>
  // Namespace : http://www.w3.org/2005/05/xmlmime
  // ************************************************************************ //
  hexBinary = class(TRemotable)
  private
    FText: TXSHexBinary;
    FcontentType: contentType;
    FcontentType_Specified: boolean;
    procedure SetcontentType(Index: Integer; const AcontentType: contentType);
    function  contentType_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Text:        TXSHexBinary  Index (IS_TEXT) read FText write FText;
    property contentType: contentType   Index (IS_ATTR or IS_OPTN) read FcontentType write SetcontentType stored contentType_Specified;
  end;



  // ************************************************************************ //
  // XML       : base64Binary, global, <complexType>
  // Namespace : http://www.w3.org/2005/05/xmlmime
  // ************************************************************************ //
  base64Binary = class(TRemotable)
  private
    FText: TByteDynArray;
    FcontentType: contentType;
    FcontentType_Specified: boolean;
    procedure SetcontentType(Index: Integer; const AcontentType: contentType);
    function  contentType_Specified(Index: Integer): boolean;
  published
    property Text:        TByteDynArray  Index (IS_TEXT) read FText write FText;
    property contentType: contentType    Index (IS_ATTR or IS_OPTN) read FcontentType write SetcontentType stored contentType_Specified;
  end;

  Array_Of_OnvifVersion = array of OnvifVersion;   { "http://www.onvif.org/ver10/schema"[GblUbnd] }
  Array_Of_NetworkZeroConfiguration = array of NetworkZeroConfiguration;   { "http://www.onvif.org/ver10/schema"[GblUbnd] }
  SystemLogUriList = array of SystemLogUri;     { "http://www.onvif.org/ver10/schema"[GblCplx] }


  // ************************************************************************ //
  // XML       : BinaryData, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  BinaryData = class(TRemotable)
  private
    FcontentType: contentType;
    FcontentType_Specified: boolean;
    FData: TByteDynArray;
    procedure SetcontentType(Index: Integer; const AcontentType: contentType);
    function  contentType_Specified(Index: Integer): boolean;
  published
    property contentType: contentType    Index (IS_ATTR or IS_OPTN) read FcontentType write SetcontentType stored contentType_Specified;
    property Data:        TByteDynArray  read FData write FData;
  end;



  // ************************************************************************ //
  // XML       : SystemDateTime, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  SystemDateTime = class(TRemotable)
  private
    FDateTimeType: SetDateTimeType;
    FDaylightSavings: Boolean;
    FTimeZone: TimeZone;
    FTimeZone_Specified: boolean;
    FUTCDateTime: DateTime;
    FUTCDateTime_Specified: boolean;
    FLocalDateTime: DateTime;
    FLocalDateTime_Specified: boolean;
    FExtension: SystemDateTimeExtension;
    FExtension_Specified: boolean;
    procedure SetTimeZone(Index: Integer; const ATimeZone: TimeZone);
    function  TimeZone_Specified(Index: Integer): boolean;
    procedure SetUTCDateTime(Index: Integer; const ADateTime: DateTime);
    function  UTCDateTime_Specified(Index: Integer): boolean;
    procedure SetLocalDateTime(Index: Integer; const ADateTime: DateTime);
    function  LocalDateTime_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const ASystemDateTimeExtension: SystemDateTimeExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property DateTimeType:    SetDateTimeType          read FDateTimeType write FDateTimeType;
    property DaylightSavings: Boolean                  read FDaylightSavings write FDaylightSavings;
    property TimeZone:        TimeZone                 Index (IS_OPTN) read FTimeZone write SetTimeZone stored TimeZone_Specified;
    property UTCDateTime:     DateTime                 Index (IS_OPTN) read FUTCDateTime write SetUTCDateTime stored UTCDateTime_Specified;
    property LocalDateTime:   DateTime                 Index (IS_OPTN) read FLocalDateTime write SetLocalDateTime stored LocalDateTime_Specified;
    property Extension:       SystemDateTimeExtension  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : SetNetworkInterfacesResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetNetworkInterfacesResponse = class(TRemotable)
  private
    FRebootNeeded: Boolean;
  public
    constructor Create; override;
  published
    property RebootNeeded: Boolean  read FRebootNeeded write FRebootNeeded;
  end;



  // ************************************************************************ //
  // XML       : SetHostnameFromDHCPResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetHostnameFromDHCPResponse = class(TRemotable)
  private
    FRebootNeeded: Boolean;
  public
    constructor Create; override;
  published
    property RebootNeeded: Boolean  read FRebootNeeded write FRebootNeeded;
  end;



  // ************************************************************************ //
  // XML       : SetHostnameFromDHCP, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetHostnameFromDHCP = class(TRemotable)
  private
    FFromDHCP: Boolean;
  public
    constructor Create; override;
  published
    property FromDHCP: Boolean  read FFromDHCP write FFromDHCP;
  end;



  // ************************************************************************ //
  // XML       : GetClientCertificateModeResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetClientCertificateModeResponse = class(TRemotable)
  private
    FEnabled: Boolean;
  public
    constructor Create; override;
  published
    property Enabled: Boolean  read FEnabled write FEnabled;
  end;



  // ************************************************************************ //
  // XML       : SetClientCertificateMode, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetClientCertificateMode = class(TRemotable)
  private
    FEnabled: Boolean;
  public
    constructor Create; override;
  published
    property Enabled: Boolean  read FEnabled write FEnabled;
  end;



  // ************************************************************************ //
  // XML       : DateTimeRange, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  DateTimeRange = class(TRemotable)
  private
    FFrom: TXSDateTime;
    FUntil_: TXSDateTime;
  public
    destructor Destroy; override;
  published
    property From:   TXSDateTime  read FFrom write FFrom;
    property Until_: TXSDateTime  read FUntil_ write FUntil_;
  end;



  // ************************************************************************ //
  // XML       : BackupFile, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  BackupFile = class(TRemotable)
  private
    FName_: string;
    FData: AttachmentData;
  public
    destructor Destroy; override;
  published
    property Name_: string          read FName_ write FName_;
    property Data:  AttachmentData  read FData write FData;
  end;



  // ************************************************************************ //
  // XML       : SupportInformation, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  SupportInformation = class(TRemotable)
  private
    FBinary: AttachmentData;
    FBinary_Specified: boolean;
    FString_: string;
    FString__Specified: boolean;
    procedure SetBinary(Index: Integer; const AAttachmentData: AttachmentData);
    function  Binary_Specified(Index: Integer): boolean;
    procedure SetString_(Index: Integer; const Astring: string);
    function  String__Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Binary:  AttachmentData  Index (IS_OPTN) read FBinary write SetBinary stored Binary_Specified;
    property String_: string          Index (IS_OPTN) read FString_ write SetString_ stored String__Specified;
  end;

  DeleteUsers = array of string;                { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }


  // ************************************************************************ //
  // XML       : EAPMethodConfiguration, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  EAPMethodConfiguration = class(TRemotable)
  private
    FTLSConfiguration: TLSConfiguration;
    FTLSConfiguration_Specified: boolean;
    FPassword: string;
    FPassword_Specified: boolean;
    FExtension: EapMethodExtension;
    FExtension_Specified: boolean;
    procedure SetTLSConfiguration(Index: Integer; const ATLSConfiguration: TLSConfiguration);
    function  TLSConfiguration_Specified(Index: Integer): boolean;
    procedure SetPassword(Index: Integer; const Astring: string);
    function  Password_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const AEapMethodExtension: EapMethodExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property TLSConfiguration: TLSConfiguration    Index (IS_OPTN) read FTLSConfiguration write SetTLSConfiguration stored TLSConfiguration_Specified;
    property Password:         string              Index (IS_OPTN) read FPassword write SetPassword stored Password_Specified;
    property Extension:        EapMethodExtension  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : UserExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  UserExtension = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : SystemLogUri, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  SystemLogUri = class(TRemotable)
  private
    FType_: SystemLogType;
    FUri: string;
  published
    property Type_: SystemLogType  read FType_ write FType_;
    property Uri:   string         read FUri write FUri;
  end;



  // ************************************************************************ //
  // XML       : GetWsdlUrlResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetWsdlUrlResponse = class(TRemotable)
  private
    FWsdlUrl: string;
  public
    constructor Create; override;
  published
    property WsdlUrl: string  read FWsdlUrl write FWsdlUrl;
  end;



  // ************************************************************************ //
  // XML       : Space1DDescription, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  Space1DDescription = class(TRemotable)
  private
    FURI: string;
    FXRange: FloatRange;
  public
    destructor Destroy; override;
  published
    property URI:    string      read FURI write FURI;
    property XRange: FloatRange  read FXRange write FXRange;
  end;



  // ************************************************************************ //
  // XML       : Space2DDescription, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  Space2DDescription = class(TRemotable)
  private
    FURI: string;
    FXRange: FloatRange;
    FYRange: FloatRange;
  public
    destructor Destroy; override;
  published
    property URI:    string      read FURI write FURI;
    property XRange: FloatRange  read FXRange write FXRange;
    property YRange: FloatRange  read FYRange write FYRange;
  end;



  // ************************************************************************ //
  // XML       : Vector, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  Vector = class(TRemotable)
  private
    Fx: Single;
    Fx_Specified: boolean;
    Fy: Single;
    Fy_Specified: boolean;
    procedure Setx(Index: Integer; const ASingle: Single);
    function  x_Specified(Index: Integer): boolean;
    procedure Sety(Index: Integer; const ASingle: Single);
    function  y_Specified(Index: Integer): boolean;
  published
    property x: Single  Index (IS_ATTR or IS_OPTN) read Fx write Setx stored x_Specified;
    property y: Single  Index (IS_ATTR or IS_OPTN) read Fy write Sety stored y_Specified;
  end;



  // ************************************************************************ //
  // XML       : Rectangle, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  Rectangle = class(TRemotable)
  private
    Fbottom: Single;
    Fbottom_Specified: boolean;
    Ftop: Single;
    Ftop_Specified: boolean;
    Fright: Single;
    Fright_Specified: boolean;
    Fleft: Single;
    Fleft_Specified: boolean;
    procedure Setbottom(Index: Integer; const ASingle: Single);
    function  bottom_Specified(Index: Integer): boolean;
    procedure Settop(Index: Integer; const ASingle: Single);
    function  top_Specified(Index: Integer): boolean;
    procedure Setright(Index: Integer; const ASingle: Single);
    function  right_Specified(Index: Integer): boolean;
    procedure Setleft(Index: Integer; const ASingle: Single);
    function  left_Specified(Index: Integer): boolean;
  published
    property bottom: Single  Index (IS_ATTR or IS_OPTN) read Fbottom write Setbottom stored bottom_Specified;
    property top:    Single  Index (IS_ATTR or IS_OPTN) read Ftop write Settop stored top_Specified;
    property right:  Single  Index (IS_ATTR or IS_OPTN) read Fright write Setright stored right_Specified;
    property left:   Single  Index (IS_ATTR or IS_OPTN) read Fleft write Setleft stored left_Specified;
  end;



  // ************************************************************************ //
  // XML       : WideDynamicRange, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  WideDynamicRange = class(TRemotable)
  private
    FMode: WideDynamicMode;
    FLevel: Single;
  published
    property Mode:  WideDynamicMode  read FMode write FMode;
    property Level: Single           read FLevel write FLevel;
  end;



  // ************************************************************************ //
  // XML       : WhiteBalance, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  WhiteBalance = class(TRemotable)
  private
    FMode: WhiteBalanceMode;
    FCrGain: Single;
    FCbGain: Single;
  published
    property Mode:   WhiteBalanceMode  read FMode write FMode;
    property CrGain: Single            read FCrGain write FCrGain;
    property CbGain: Single            read FCbGain write FCbGain;
  end;



  // ************************************************************************ //
  // XML       : BacklightCompensation20, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  BacklightCompensation20 = class(TRemotable)
  private
    FMode: BacklightCompensationMode;
    FLevel: Single;
    FLevel_Specified: boolean;
    procedure SetLevel(Index: Integer; const ASingle: Single);
    function  Level_Specified(Index: Integer): boolean;
  published
    property Mode:  BacklightCompensationMode  read FMode write FMode;
    property Level: Single                     Index (IS_OPTN) read FLevel write SetLevel stored Level_Specified;
  end;



  // ************************************************************************ //
  // XML       : BacklightCompensation, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  BacklightCompensation = class(TRemotable)
  private
    FMode: BacklightCompensationMode;
    FLevel: Single;
  published
    property Mode:  BacklightCompensationMode  read FMode write FMode;
    property Level: Single                     read FLevel write FLevel;
  end;



  // ************************************************************************ //
  // XML       : Exposure, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  Exposure = class(TRemotable)
  private
    FMode: ExposureMode;
    FPriority: ExposurePriority;
    FWindow: Rectangle;
    FMinExposureTime: Single;
    FMaxExposureTime: Single;
    FMinGain: Single;
    FMaxGain: Single;
    FMinIris: Single;
    FMaxIris: Single;
    FExposureTime: Single;
    FGain: Single;
    FIris: Single;
  public
    destructor Destroy; override;
  published
    property Mode:            ExposureMode      read FMode write FMode;
    property Priority:        ExposurePriority  read FPriority write FPriority;
    property Window:          Rectangle         read FWindow write FWindow;
    property MinExposureTime: Single            read FMinExposureTime write FMinExposureTime;
    property MaxExposureTime: Single            read FMaxExposureTime write FMaxExposureTime;
    property MinGain:         Single            read FMinGain write FMinGain;
    property MaxGain:         Single            read FMaxGain write FMaxGain;
    property MinIris:         Single            read FMinIris write FMinIris;
    property MaxIris:         Single            read FMaxIris write FMaxIris;
    property ExposureTime:    Single            read FExposureTime write FExposureTime;
    property Gain:            Single            read FGain write FGain;
    property Iris:            Single            read FIris write FIris;
  end;



  // ************************************************************************ //
  // XML       : FocusConfiguration, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  FocusConfiguration = class(TRemotable)
  private
    FAutoFocusMode: AutoFocusMode;
    FDefaultSpeed: Single;
    FNearLimit: Single;
    FFarLimit: Single;
  published
    property AutoFocusMode: AutoFocusMode  read FAutoFocusMode write FAutoFocusMode;
    property DefaultSpeed:  Single         read FDefaultSpeed write FDefaultSpeed;
    property NearLimit:     Single         read FNearLimit write FNearLimit;
    property FarLimit:      Single         read FFarLimit write FFarLimit;
  end;



  // ************************************************************************ //
  // XML       : Exposure20, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  Exposure20 = class(TRemotable)
  private
    FMode: ExposureMode;
    FPriority: ExposurePriority;
    FPriority_Specified: boolean;
    FWindow: Rectangle;
    FWindow_Specified: boolean;
    FMinExposureTime: Single;
    FMinExposureTime_Specified: boolean;
    FMaxExposureTime: Single;
    FMaxExposureTime_Specified: boolean;
    FMinGain: Single;
    FMinGain_Specified: boolean;
    FMaxGain: Single;
    FMaxGain_Specified: boolean;
    FMinIris: Single;
    FMinIris_Specified: boolean;
    FMaxIris: Single;
    FMaxIris_Specified: boolean;
    FExposureTime: Single;
    FExposureTime_Specified: boolean;
    FGain: Single;
    FGain_Specified: boolean;
    FIris: Single;
    FIris_Specified: boolean;
    procedure SetPriority(Index: Integer; const AExposurePriority: ExposurePriority);
    function  Priority_Specified(Index: Integer): boolean;
    procedure SetWindow(Index: Integer; const ARectangle: Rectangle);
    function  Window_Specified(Index: Integer): boolean;
    procedure SetMinExposureTime(Index: Integer; const ASingle: Single);
    function  MinExposureTime_Specified(Index: Integer): boolean;
    procedure SetMaxExposureTime(Index: Integer; const ASingle: Single);
    function  MaxExposureTime_Specified(Index: Integer): boolean;
    procedure SetMinGain(Index: Integer; const ASingle: Single);
    function  MinGain_Specified(Index: Integer): boolean;
    procedure SetMaxGain(Index: Integer; const ASingle: Single);
    function  MaxGain_Specified(Index: Integer): boolean;
    procedure SetMinIris(Index: Integer; const ASingle: Single);
    function  MinIris_Specified(Index: Integer): boolean;
    procedure SetMaxIris(Index: Integer; const ASingle: Single);
    function  MaxIris_Specified(Index: Integer): boolean;
    procedure SetExposureTime(Index: Integer; const ASingle: Single);
    function  ExposureTime_Specified(Index: Integer): boolean;
    procedure SetGain(Index: Integer; const ASingle: Single);
    function  Gain_Specified(Index: Integer): boolean;
    procedure SetIris(Index: Integer; const ASingle: Single);
    function  Iris_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Mode:            ExposureMode      read FMode write FMode;
    property Priority:        ExposurePriority  Index (IS_OPTN) read FPriority write SetPriority stored Priority_Specified;
    property Window:          Rectangle         Index (IS_OPTN) read FWindow write SetWindow stored Window_Specified;
    property MinExposureTime: Single            Index (IS_OPTN) read FMinExposureTime write SetMinExposureTime stored MinExposureTime_Specified;
    property MaxExposureTime: Single            Index (IS_OPTN) read FMaxExposureTime write SetMaxExposureTime stored MaxExposureTime_Specified;
    property MinGain:         Single            Index (IS_OPTN) read FMinGain write SetMinGain stored MinGain_Specified;
    property MaxGain:         Single            Index (IS_OPTN) read FMaxGain write SetMaxGain stored MaxGain_Specified;
    property MinIris:         Single            Index (IS_OPTN) read FMinIris write SetMinIris stored MinIris_Specified;
    property MaxIris:         Single            Index (IS_OPTN) read FMaxIris write SetMaxIris stored MaxIris_Specified;
    property ExposureTime:    Single            Index (IS_OPTN) read FExposureTime write SetExposureTime stored ExposureTime_Specified;
    property Gain:            Single            Index (IS_OPTN) read FGain write SetGain stored Gain_Specified;
    property Iris:            Single            Index (IS_OPTN) read FIris write SetIris stored Iris_Specified;
  end;



  // ************************************************************************ //
  // XML       : NoiseReduction, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  NoiseReduction = class(TRemotable)
  private
    FLevel: Single;
  published
    property Level: Single  read FLevel write FLevel;
  end;



  // ************************************************************************ //
  // XML       : ImageStabilization, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  ImageStabilization = class(TRemotable)
  private
    FMode: ImageStabilizationMode;
    FLevel: Single;
    FLevel_Specified: boolean;
    FExtension: ImageStabilizationExtension;
    FExtension_Specified: boolean;
    procedure SetLevel(Index: Integer; const ASingle: Single);
    function  Level_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const AImageStabilizationExtension: ImageStabilizationExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Mode:      ImageStabilizationMode       read FMode write FMode;
    property Level:     Single                       Index (IS_OPTN) read FLevel write SetLevel stored Level_Specified;
    property Extension: ImageStabilizationExtension  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : WhiteBalance20, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  WhiteBalance20 = class(TRemotable)
  private
    FMode: WhiteBalanceMode;
    FCrGain: Single;
    FCrGain_Specified: boolean;
    FCbGain: Single;
    FCbGain_Specified: boolean;
    FExtension: WhiteBalance20Extension;
    FExtension_Specified: boolean;
    procedure SetCrGain(Index: Integer; const ASingle: Single);
    function  CrGain_Specified(Index: Integer): boolean;
    procedure SetCbGain(Index: Integer; const ASingle: Single);
    function  CbGain_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const AWhiteBalance20Extension: WhiteBalance20Extension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Mode:      WhiteBalanceMode         read FMode write FMode;
    property CrGain:    Single                   Index (IS_OPTN) read FCrGain write SetCrGain stored CrGain_Specified;
    property CbGain:    Single                   Index (IS_OPTN) read FCbGain write SetCbGain stored CbGain_Specified;
    property Extension: WhiteBalance20Extension  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : FocusConfiguration20, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  FocusConfiguration20 = class(TRemotable)
  private
    FAutoFocusMode: AutoFocusMode;
    FDefaultSpeed: Single;
    FDefaultSpeed_Specified: boolean;
    FNearLimit: Single;
    FNearLimit_Specified: boolean;
    FFarLimit: Single;
    FFarLimit_Specified: boolean;
    FExtension: FocusConfiguration20Extension;
    FExtension_Specified: boolean;
    procedure SetDefaultSpeed(Index: Integer; const ASingle: Single);
    function  DefaultSpeed_Specified(Index: Integer): boolean;
    procedure SetNearLimit(Index: Integer; const ASingle: Single);
    function  NearLimit_Specified(Index: Integer): boolean;
    procedure SetFarLimit(Index: Integer; const ASingle: Single);
    function  FarLimit_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const AFocusConfiguration20Extension: FocusConfiguration20Extension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property AutoFocusMode: AutoFocusMode                  read FAutoFocusMode write FAutoFocusMode;
    property DefaultSpeed:  Single                         Index (IS_OPTN) read FDefaultSpeed write SetDefaultSpeed stored DefaultSpeed_Specified;
    property NearLimit:     Single                         Index (IS_OPTN) read FNearLimit write SetNearLimit stored NearLimit_Specified;
    property FarLimit:      Single                         Index (IS_OPTN) read FFarLimit write SetFarLimit stored FarLimit_Specified;
    property Extension:     FocusConfiguration20Extension  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : WideDynamicRange20, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  WideDynamicRange20 = class(TRemotable)
  private
    FMode: WideDynamicMode;
    FLevel: Single;
    FLevel_Specified: boolean;
    procedure SetLevel(Index: Integer; const ASingle: Single);
    function  Level_Specified(Index: Integer): boolean;
  published
    property Mode:  WideDynamicMode  read FMode write FMode;
    property Level: Single           Index (IS_OPTN) read FLevel write SetLevel stored Level_Specified;
  end;



  // ************************************************************************ //
  // XML       : ToneCompensation, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  ToneCompensation = class(TRemotable)
  private
    FMode: string;
    FLevel: Single;
    FLevel_Specified: boolean;
    FExtension: ToneCompensationExtension;
    FExtension_Specified: boolean;
    procedure SetLevel(Index: Integer; const ASingle: Single);
    function  Level_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const AToneCompensationExtension: ToneCompensationExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Mode:      string                     read FMode write FMode;
    property Level:     Single                     Index (IS_OPTN) read FLevel write SetLevel stored Level_Specified;
    property Extension: ToneCompensationExtension  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : Defogging, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  Defogging = class(TRemotable)
  private
    FMode: string;
    FLevel: Single;
    FLevel_Specified: boolean;
    FExtension: DefoggingExtension;
    FExtension_Specified: boolean;
    procedure SetLevel(Index: Integer; const ASingle: Single);
    function  Level_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const ADefoggingExtension: DefoggingExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Mode:      string              read FMode write FMode;
    property Level:     Single              Index (IS_OPTN) read FLevel write SetLevel stored Level_Specified;
    property Extension: DefoggingExtension  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : CertificateUsage, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  CertificateUsage = class(TRemotable)
  private
    FText: string;
    FCritical: Boolean;
  published
    property Text:     string   Index (IS_TEXT) read FText write FText;
    property Critical: Boolean  Index (IS_ATTR) read FCritical write FCritical;
  end;



  // ************************************************************************ //
  // XML       : LocalLocation, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  LocalLocation = class(TRemotable)
  private
    Fx: Single;
    Fx_Specified: boolean;
    Fy: Single;
    Fy_Specified: boolean;
    Fz: Single;
    Fz_Specified: boolean;
    procedure Setx(Index: Integer; const ASingle: Single);
    function  x_Specified(Index: Integer): boolean;
    procedure Sety(Index: Integer; const ASingle: Single);
    function  y_Specified(Index: Integer): boolean;
    procedure Setz(Index: Integer; const ASingle: Single);
    function  z_Specified(Index: Integer): boolean;
  published
    property x: Single  Index (IS_ATTR or IS_OPTN) read Fx write Setx stored x_Specified;
    property y: Single  Index (IS_ATTR or IS_OPTN) read Fy write Sety stored y_Specified;
    property z: Single  Index (IS_ATTR or IS_OPTN) read Fz write Setz stored z_Specified;
  end;



  // ************************************************************************ //
  // XML       : GeoOrientation, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  GeoOrientation = class(TRemotable)
  private
    Froll: Single;
    Froll_Specified: boolean;
    Fpitch: Single;
    Fpitch_Specified: boolean;
    Fyaw: Single;
    Fyaw_Specified: boolean;
    procedure Setroll(Index: Integer; const ASingle: Single);
    function  roll_Specified(Index: Integer): boolean;
    procedure Setpitch(Index: Integer; const ASingle: Single);
    function  pitch_Specified(Index: Integer): boolean;
    procedure Setyaw(Index: Integer; const ASingle: Single);
    function  yaw_Specified(Index: Integer): boolean;
  published
    property roll:  Single  Index (IS_ATTR or IS_OPTN) read Froll write Setroll stored roll_Specified;
    property pitch: Single  Index (IS_ATTR or IS_OPTN) read Fpitch write Setpitch stored pitch_Specified;
    property yaw:   Single  Index (IS_ATTR or IS_OPTN) read Fyaw write Setyaw stored yaw_Specified;
  end;

  ReferenceToken  =  type string;      { "http://www.onvif.org/ver10/schema"[GblSmpl] }


  // ************************************************************************ //
  // XML       : SetNetworkInterfaces, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetNetworkInterfaces = class(TRemotable)
  private
    FInterfaceToken: ReferenceToken;
    FNetworkInterface: NetworkInterfaceSetConfiguration;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property InterfaceToken:   ReferenceToken                    read FInterfaceToken write FInterfaceToken;
    property NetworkInterface: NetworkInterfaceSetConfiguration  read FNetworkInterface write FNetworkInterface;
  end;



  // ************************************************************************ //
  // XML       : SetZeroConfiguration, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetZeroConfiguration = class(TRemotable)
  private
    FInterfaceToken: ReferenceToken;
    FEnabled: Boolean;
  public
    constructor Create; override;
  published
    property InterfaceToken: ReferenceToken  read FInterfaceToken write FInterfaceToken;
    property Enabled:        Boolean         read FEnabled write FEnabled;
  end;



  // ************************************************************************ //
  // XML       : GetDot1XConfiguration, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetDot1XConfiguration = class(TRemotable)
  private
    FDot1XConfigurationToken: ReferenceToken;
  public
    constructor Create; override;
  published
    property Dot1XConfigurationToken: ReferenceToken  read FDot1XConfigurationToken write FDot1XConfigurationToken;
  end;



  // ************************************************************************ //
  // XML       : SetRelayOutputSettings, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetRelayOutputSettings = class(TRemotable)
  private
    FRelayOutputToken: ReferenceToken;
    FProperties: RelayOutputSettings;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property RelayOutputToken: ReferenceToken       read FRelayOutputToken write FRelayOutputToken;
    property Properties:       RelayOutputSettings  read FProperties write FProperties;
  end;

  DeleteDot1XConfiguration = array of ReferenceToken;   { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }


  // ************************************************************************ //
  // XML       : PaneLayout, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  PaneLayout = class(TRemotable)
  private
    FPane: ReferenceToken;
    FArea: Rectangle;
  public
    destructor Destroy; override;
  published
    property Pane: ReferenceToken  read FPane write FPane;
    property Area: Rectangle       read FArea write FArea;
  end;



  // ************************************************************************ //
  // XML       : LocationEntity, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  LocationEntity = class(TRemotable)
  private
    FEntity: string;
    FEntity_Specified: boolean;
    FToken: ReferenceToken;
    FToken_Specified: boolean;
    FFixed: Boolean;
    FFixed_Specified: boolean;
    FGeoSource: string;
    FGeoSource_Specified: boolean;
    FAutoGeo: Boolean;
    FAutoGeo_Specified: boolean;
    FGeoLocation: GeoLocation;
    FGeoLocation_Specified: boolean;
    FGeoOrientation: GeoOrientation;
    FGeoOrientation_Specified: boolean;
    FLocalLocation: LocalLocation;
    FLocalLocation_Specified: boolean;
    FLocalOrientation: LocalOrientation;
    FLocalOrientation_Specified: boolean;
    procedure SetEntity(Index: Integer; const Astring: string);
    function  Entity_Specified(Index: Integer): boolean;
    procedure SetToken(Index: Integer; const AReferenceToken: ReferenceToken);
    function  Token_Specified(Index: Integer): boolean;
    procedure SetFixed(Index: Integer; const ABoolean: Boolean);
    function  Fixed_Specified(Index: Integer): boolean;
    procedure SetGeoSource(Index: Integer; const Astring: string);
    function  GeoSource_Specified(Index: Integer): boolean;
    procedure SetAutoGeo(Index: Integer; const ABoolean: Boolean);
    function  AutoGeo_Specified(Index: Integer): boolean;
    procedure SetGeoLocation(Index: Integer; const AGeoLocation: GeoLocation);
    function  GeoLocation_Specified(Index: Integer): boolean;
    procedure SetGeoOrientation(Index: Integer; const AGeoOrientation: GeoOrientation);
    function  GeoOrientation_Specified(Index: Integer): boolean;
    procedure SetLocalLocation(Index: Integer; const ALocalLocation: LocalLocation);
    function  LocalLocation_Specified(Index: Integer): boolean;
    procedure SetLocalOrientation(Index: Integer; const ALocalOrientation: LocalOrientation);
    function  LocalOrientation_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Entity:           string            Index (IS_ATTR or IS_OPTN) read FEntity write SetEntity stored Entity_Specified;
    property Token:            ReferenceToken    Index (IS_ATTR or IS_OPTN) read FToken write SetToken stored Token_Specified;
    property Fixed:            Boolean           Index (IS_ATTR or IS_OPTN) read FFixed write SetFixed stored Fixed_Specified;
    property GeoSource:        string            Index (IS_ATTR or IS_OPTN) read FGeoSource write SetGeoSource stored GeoSource_Specified;
    property AutoGeo:          Boolean           Index (IS_ATTR or IS_OPTN) read FAutoGeo write SetAutoGeo stored AutoGeo_Specified;
    property GeoLocation:      GeoLocation       Index (IS_OPTN) read FGeoLocation write SetGeoLocation stored GeoLocation_Specified;
    property GeoOrientation:   GeoOrientation    Index (IS_OPTN) read FGeoOrientation write SetGeoOrientation stored GeoOrientation_Specified;
    property LocalLocation:    LocalLocation     Index (IS_OPTN) read FLocalLocation write SetLocalLocation stored LocalLocation_Specified;
    property LocalOrientation: LocalOrientation  Index (IS_OPTN) read FLocalOrientation write SetLocalOrientation stored LocalOrientation_Specified;
  end;



  // ************************************************************************ //
  // XML       : LocalOrientation, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  LocalOrientation = class(TRemotable)
  private
    Fpan: Single;
    Fpan_Specified: boolean;
    Ftilt: Single;
    Ftilt_Specified: boolean;
    Froll: Single;
    Froll_Specified: boolean;
    procedure Setpan(Index: Integer; const ASingle: Single);
    function  pan_Specified(Index: Integer): boolean;
    procedure Settilt(Index: Integer; const ASingle: Single);
    function  tilt_Specified(Index: Integer): boolean;
    procedure Setroll(Index: Integer; const ASingle: Single);
    function  roll_Specified(Index: Integer): boolean;
  published
    property pan:  Single  Index (IS_ATTR or IS_OPTN) read Fpan write Setpan stored pan_Specified;
    property tilt: Single  Index (IS_ATTR or IS_OPTN) read Ftilt write Settilt stored tilt_Specified;
    property roll: Single  Index (IS_ATTR or IS_OPTN) read Froll write Setroll stored roll_Specified;
  end;



  // ************************************************************************ //
  // XML       : Color, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  Color = class(TRemotable)
  private
    FX: Single;
    FY: Single;
    FZ: Single;
    FColorspace: string;
    FColorspace_Specified: boolean;
    procedure SetColorspace(Index: Integer; const Astring: string);
    function  Colorspace_Specified(Index: Integer): boolean;
  published
    property X:          Single  Index (IS_ATTR) read FX write FX;
    property Y:          Single  Index (IS_ATTR) read FY write FY;
    property Z:          Single  Index (IS_ATTR) read FZ write FZ;
    property Colorspace: string  Index (IS_ATTR or IS_OPTN) read FColorspace write SetColorspace stored Colorspace_Specified;
  end;



  // ************************************************************************ //
  // XML       : User, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  User = class(TRemotable)
  private
    FUsername: string;
    FPassword: string;
    FPassword_Specified: boolean;
    FUserLevel: UserLevel;
    FExtension: UserExtension;
    FExtension_Specified: boolean;
    procedure SetPassword(Index: Integer; const Astring: string);
    function  Password_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const AUserExtension: UserExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Username:  string         read FUsername write FUsername;
    property Password:  string         Index (IS_OPTN) read FPassword write SetPassword stored Password_Specified;
    property UserLevel: UserLevel      read FUserLevel write FUserLevel;
    property Extension: UserExtension  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : GeoLocation, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  GeoLocation = class(TRemotable)
  private
    Flon: Double;
    Flon_Specified: boolean;
    Flat: Double;
    Flat_Specified: boolean;
    Felevation: Single;
    Felevation_Specified: boolean;
    procedure Setlon(Index: Integer; const ADouble: Double);
    function  lon_Specified(Index: Integer): boolean;
    procedure Setlat(Index: Integer; const ADouble: Double);
    function  lat_Specified(Index: Integer): boolean;
    procedure Setelevation(Index: Integer; const ASingle: Single);
    function  elevation_Specified(Index: Integer): boolean;
  published
    property lon:       Double  Index (IS_ATTR or IS_OPTN) read Flon write Setlon stored lon_Specified;
    property lat:       Double  Index (IS_ATTR or IS_OPTN) read Flat write Setlat stored lat_Specified;
    property elevation: Single  Index (IS_ATTR or IS_OPTN) read Felevation write Setelevation stored elevation_Specified;
  end;



  // ************************************************************************ //
  // XML       : RemoteUser, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  RemoteUser = class(TRemotable)
  private
    FUsername: string;
    FPassword: string;
    FPassword_Specified: boolean;
    FUseDerivedPassword: Boolean;
    procedure SetPassword(Index: Integer; const Astring: string);
    function  Password_Specified(Index: Integer): boolean;
  published
    property Username:           string   read FUsername write FUsername;
    property Password:           string   Index (IS_OPTN) read FPassword write SetPassword stored Password_Specified;
    property UseDerivedPassword: Boolean  read FUseDerivedPassword write FUseDerivedPassword;
  end;



  // ************************************************************************ //
  // XML       : CreateStorageConfigurationResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  CreateStorageConfigurationResponse = class(TRemotable)
  private
    FToken: ReferenceToken;
  public
    constructor Create; override;
  published
    property Token: ReferenceToken  read FToken write FToken;
  end;



  // ************************************************************************ //
  // XML       : GetStorageConfiguration, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetStorageConfiguration = class(TRemotable)
  private
    FToken: ReferenceToken;
  public
    constructor Create; override;
  published
    property Token: ReferenceToken  read FToken write FToken;
  end;



  // ************************************************************************ //
  // XML       : GetStorageConfigurationResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetStorageConfigurationResponse = class(TRemotable)
  private
    FStorageConfiguration: StorageConfiguration;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property StorageConfiguration: StorageConfiguration  read FStorageConfiguration write FStorageConfiguration;
  end;



  // ************************************************************************ //
  // XML       : GetStorageConfigurations, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetStorageConfigurations = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;

  GetStorageConfigurationsResponse = array of StorageConfiguration;   { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }


  // ************************************************************************ //
  // XML       : CreateStorageConfiguration, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  CreateStorageConfiguration = class(TRemotable)
  private
    FStorageConfiguration: StorageConfigurationData;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property StorageConfiguration: StorageConfigurationData  read FStorageConfiguration write FStorageConfiguration;
  end;



  // ************************************************************************ //
  // XML       : DeleteStorageConfigurationResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  DeleteStorageConfigurationResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : GetGeoLocation, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetGeoLocation = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;

  GetGeoLocationResponse = array of LocationEntity;   { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }


  // ************************************************************************ //
  // XML       : SetStorageConfiguration, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetStorageConfiguration = class(TRemotable)
  private
    FStorageConfiguration: StorageConfiguration;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property StorageConfiguration: StorageConfiguration  read FStorageConfiguration write FStorageConfiguration;
  end;



  // ************************************************************************ //
  // XML       : SetStorageConfigurationResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetStorageConfigurationResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : DeleteStorageConfiguration, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  DeleteStorageConfiguration = class(TRemotable)
  private
    FToken: ReferenceToken;
  public
    constructor Create; override;
  published
    property Token: ReferenceToken  read FToken write FToken;
  end;



  // ************************************************************************ //
  // XML       : ScanAvailableDot11Networks, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  ScanAvailableDot11Networks = class(TRemotable)
  private
    FInterfaceToken: ReferenceToken;
  public
    constructor Create; override;
  published
    property InterfaceToken: ReferenceToken  read FInterfaceToken write FInterfaceToken;
  end;

  ScanAvailableDot11NetworksResponse = array of Dot11AvailableNetworks;   { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }


  // ************************************************************************ //
  // XML       : GetSystemUris, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetSystemUris = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : GetDot11CapabilitiesResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetDot11CapabilitiesResponse = class(TRemotable)
  private
    FCapabilities: Dot11Capabilities;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Capabilities: Dot11Capabilities  read FCapabilities write FCapabilities;
  end;



  // ************************************************************************ //
  // XML       : GetDot11Status, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetDot11Status = class(TRemotable)
  private
    FInterfaceToken: ReferenceToken;
  public
    constructor Create; override;
  published
    property InterfaceToken: ReferenceToken  read FInterfaceToken write FInterfaceToken;
  end;



  // ************************************************************************ //
  // XML       : GetDot11StatusResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetDot11StatusResponse = class(TRemotable)
  private
    FStatus: Dot11Status;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Status: Dot11Status  read FStatus write FStatus;
  end;



  // ************************************************************************ //
  // XML       : StartSystemRestore, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  StartSystemRestore = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : GetSystemUrisResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetSystemUrisResponse = class(TRemotable)
  private
    FSystemLogUris: SystemLogUriList;
    FSystemLogUris_Specified: boolean;
    FSupportInfoUri: string;
    FSupportInfoUri_Specified: boolean;
    FSystemBackupUri: string;
    FSystemBackupUri_Specified: boolean;
    FExtension: Extension;
    FExtension_Specified: boolean;
    procedure SetSystemLogUris(Index: Integer; const ASystemLogUriList: SystemLogUriList);
    function  SystemLogUris_Specified(Index: Integer): boolean;
    procedure SetSupportInfoUri(Index: Integer; const Astring: string);
    function  SupportInfoUri_Specified(Index: Integer): boolean;
    procedure SetSystemBackupUri(Index: Integer; const Astring: string);
    function  SystemBackupUri_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const AExtension: Extension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property SystemLogUris:   SystemLogUriList  Index (IS_OPTN) read FSystemLogUris write SetSystemLogUris stored SystemLogUris_Specified;
    property SupportInfoUri:  string            Index (IS_OPTN) read FSupportInfoUri write SetSupportInfoUri stored SupportInfoUri_Specified;
    property SystemBackupUri: string            Index (IS_OPTN) read FSystemBackupUri write SetSystemBackupUri stored SystemBackupUri_Specified;
    property Extension:       Extension         Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : Extension, <complexType>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // ************************************************************************ //
  Extension = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : StartFirmwareUpgrade, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  StartFirmwareUpgrade = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;

  SetGeoLocation = array of LocationEntity;     { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }


  // ************************************************************************ //
  // XML       : AnalyticsDeviceExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  AnalyticsDeviceExtension = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : SystemLog, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  SystemLog = class(TRemotable)
  private
    FBinary: AttachmentData;
    FBinary_Specified: boolean;
    FString_: string;
    FString__Specified: boolean;
    procedure SetBinary(Index: Integer; const AAttachmentData: AttachmentData);
    function  Binary_Specified(Index: Integer): boolean;
    procedure SetString_(Index: Integer; const Astring: string);
    function  String__Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Binary:  AttachmentData  Index (IS_OPTN) read FBinary write SetBinary stored Binary_Specified;
    property String_: string          Index (IS_OPTN) read FString_ write SetString_ stored String__Specified;
  end;



  // ************************************************************************ //
  // XML       : AttachmentData, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  AttachmentData = class(TRemotable)
  private
    FcontentType: contentType;
    FcontentType_Specified: boolean;
    FInclude: Include;
    procedure SetcontentType(Index: Integer; const AcontentType: contentType);
    function  contentType_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property contentType: contentType  Index (IS_ATTR or IS_OPTN) read FcontentType write SetcontentType stored contentType_Specified;
    property Include:     Include      Index (IS_REF) read FInclude write FInclude;
  end;



  // ************************************************************************ //
  // XML       : SystemCapabilitiesExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  SystemCapabilitiesExtension = class(TRemotable)
  private
    FHttpFirmwareUpgrade: Boolean;
    FHttpFirmwareUpgrade_Specified: boolean;
    FHttpSystemBackup: Boolean;
    FHttpSystemBackup_Specified: boolean;
    FHttpSystemLogging: Boolean;
    FHttpSystemLogging_Specified: boolean;
    FHttpSupportInformation: Boolean;
    FHttpSupportInformation_Specified: boolean;
    FExtension: SystemCapabilitiesExtension2;
    FExtension_Specified: boolean;
    procedure SetHttpFirmwareUpgrade(Index: Integer; const ABoolean: Boolean);
    function  HttpFirmwareUpgrade_Specified(Index: Integer): boolean;
    procedure SetHttpSystemBackup(Index: Integer; const ABoolean: Boolean);
    function  HttpSystemBackup_Specified(Index: Integer): boolean;
    procedure SetHttpSystemLogging(Index: Integer; const ABoolean: Boolean);
    function  HttpSystemLogging_Specified(Index: Integer): boolean;
    procedure SetHttpSupportInformation(Index: Integer; const ABoolean: Boolean);
    function  HttpSupportInformation_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const ASystemCapabilitiesExtension2: SystemCapabilitiesExtension2);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property HttpFirmwareUpgrade:    Boolean                       Index (IS_OPTN) read FHttpFirmwareUpgrade write SetHttpFirmwareUpgrade stored HttpFirmwareUpgrade_Specified;
    property HttpSystemBackup:       Boolean                       Index (IS_OPTN) read FHttpSystemBackup write SetHttpSystemBackup stored HttpSystemBackup_Specified;
    property HttpSystemLogging:      Boolean                       Index (IS_OPTN) read FHttpSystemLogging write SetHttpSystemLogging stored HttpSystemLogging_Specified;
    property HttpSupportInformation: Boolean                       Index (IS_OPTN) read FHttpSupportInformation write SetHttpSupportInformation stored HttpSupportInformation_Specified;
    property Extension:              SystemCapabilitiesExtension2  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : SystemCapabilitiesExtension2, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  SystemCapabilitiesExtension2 = class(TRemotable)
  private
  published
  end;

  Array_Of_PrefixedIPv4Address = array of PrefixedIPv4Address;   { "http://www.onvif.org/ver10/schema"[GblUbnd] }
  Array_Of_IPAddress = array of IPAddress;      { "http://www.onvif.org/ver10/schema"[GblUbnd] }
  Array_Of_Dot3Configuration = array of Dot3Configuration;   { "http://www.onvif.org/ver10/schema"[GblUbnd] }
  Array_Of_Dot11Configuration = array of Dot11Configuration;   { "http://www.onvif.org/ver10/schema"[GblUbnd] }
  Array_Of_PrefixedIPv6Address = array of PrefixedIPv6Address;   { "http://www.onvif.org/ver10/schema"[GblUbnd] }


  // ************************************************************************ //
  // XML       : RealTimeStreamingCapabilities, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  RealTimeStreamingCapabilities = class(TRemotable)
  private
    FRTPMulticast: Boolean;
    FRTPMulticast_Specified: boolean;
    FRTP_TCP: Boolean;
    FRTP_TCP_Specified: boolean;
    FRTP_RTSP_TCP: Boolean;
    FRTP_RTSP_TCP_Specified: boolean;
    FExtension: RealTimeStreamingCapabilitiesExtension;
    FExtension_Specified: boolean;
    procedure SetRTPMulticast(Index: Integer; const ABoolean: Boolean);
    function  RTPMulticast_Specified(Index: Integer): boolean;
    procedure SetRTP_TCP(Index: Integer; const ABoolean: Boolean);
    function  RTP_TCP_Specified(Index: Integer): boolean;
    procedure SetRTP_RTSP_TCP(Index: Integer; const ABoolean: Boolean);
    function  RTP_RTSP_TCP_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const ARealTimeStreamingCapabilitiesExtension: RealTimeStreamingCapabilitiesExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property RTPMulticast: Boolean                                 Index (IS_OPTN) read FRTPMulticast write SetRTPMulticast stored RTPMulticast_Specified;
    property RTP_TCP:      Boolean                                 Index (IS_OPTN) read FRTP_TCP write SetRTP_TCP stored RTP_TCP_Specified;
    property RTP_RTSP_TCP: Boolean                                 Index (IS_OPTN) read FRTP_RTSP_TCP write SetRTP_RTSP_TCP stored RTP_RTSP_TCP_Specified;
    property Extension:    RealTimeStreamingCapabilitiesExtension  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : MediaCapabilitiesExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  MediaCapabilitiesExtension = class(TRemotable)
  private
    FProfileCapabilities: ProfileCapabilities;
  public
    destructor Destroy; override;
  published
    property ProfileCapabilities: ProfileCapabilities  read FProfileCapabilities write FProfileCapabilities;
  end;



  // ************************************************************************ //
  // XML       : SetGeoLocationResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetGeoLocationResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;

  DeleteGeoLocation = array of LocationEntity;   { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }


  // ************************************************************************ //
  // XML       : DeleteGeoLocationResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  DeleteGeoLocationResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : NetworkCapabilitiesExtension2, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  NetworkCapabilitiesExtension2 = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : SecurityCapabilitiesExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  SecurityCapabilitiesExtension = class(TRemotable)
  private
    FTLS1_0: Boolean;
    FExtension: SecurityCapabilitiesExtension2;
    FExtension_Specified: boolean;
    procedure SetExtension(Index: Integer; const ASecurityCapabilitiesExtension2: SecurityCapabilitiesExtension2);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property TLS1_0:    Boolean                         read FTLS1_0 write FTLS1_0;
    property Extension: SecurityCapabilitiesExtension2  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : RealTimeStreamingCapabilitiesExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  RealTimeStreamingCapabilitiesExtension = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : NetworkCapabilitiesExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  NetworkCapabilitiesExtension = class(TRemotable)
  private
    FDot11Configuration: Boolean;
    FDot11Configuration_Specified: boolean;
    FExtension: NetworkCapabilitiesExtension2;
    FExtension_Specified: boolean;
    procedure SetDot11Configuration(Index: Integer; const ABoolean: Boolean);
    function  Dot11Configuration_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const ANetworkCapabilitiesExtension2: NetworkCapabilitiesExtension2);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Dot11Configuration: Boolean                        Index (IS_OPTN) read FDot11Configuration write SetDot11Configuration stored Dot11Configuration_Specified;
    property Extension:          NetworkCapabilitiesExtension2  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : reasontext, global, <complexType>
  // Namespace : http://www.w3.org/2003/05/soap-envelope
  // ************************************************************************ //
  reasontext = class(TRemotable)
  private
    FText: string;
    Flang: string;
  published
    property Text: string  Index (IS_TEXT) read FText write FText;
    property lang: string  Index (IS_ATTR) read Flang write Flang;
  end;



  // ************************************************************************ //
  // XML       : CreateUsersResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  CreateUsersResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : IPv4NetworkInterfaceSetConfiguration, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  IPv4NetworkInterfaceSetConfiguration = class(TRemotable)
  private
    FEnabled: Boolean;
    FEnabled_Specified: boolean;
    FManual: Array_Of_PrefixedIPv4Address;
    FManual_Specified: boolean;
    FDHCP: Boolean;
    FDHCP_Specified: boolean;
    procedure SetEnabled(Index: Integer; const ABoolean: Boolean);
    function  Enabled_Specified(Index: Integer): boolean;
    procedure SetManual(Index: Integer; const AArray_Of_PrefixedIPv4Address: Array_Of_PrefixedIPv4Address);
    function  Manual_Specified(Index: Integer): boolean;
    procedure SetDHCP(Index: Integer; const ABoolean: Boolean);
    function  DHCP_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Enabled: Boolean                       Index (IS_OPTN) read FEnabled write SetEnabled stored Enabled_Specified;
    property Manual:  Array_Of_PrefixedIPv4Address  Index (IS_OPTN or IS_UNBD) read FManual write SetManual stored Manual_Specified;
    property DHCP:    Boolean                       Index (IS_OPTN) read FDHCP write SetDHCP stored DHCP_Specified;
  end;



  // ************************************************************************ //
  // XML       : NetworkInterfaceSetConfigurationExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  NetworkInterfaceSetConfigurationExtension = class(TRemotable)
  private
    FDot3: Array_Of_Dot3Configuration;
    FDot3_Specified: boolean;
    FDot11: Array_Of_Dot11Configuration;
    FDot11_Specified: boolean;
    FExtension: NetworkInterfaceSetConfigurationExtension2;
    FExtension_Specified: boolean;
    procedure SetDot3(Index: Integer; const AArray_Of_Dot3Configuration: Array_Of_Dot3Configuration);
    function  Dot3_Specified(Index: Integer): boolean;
    procedure SetDot11(Index: Integer; const AArray_Of_Dot11Configuration: Array_Of_Dot11Configuration);
    function  Dot11_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const ANetworkInterfaceSetConfigurationExtension2: NetworkInterfaceSetConfigurationExtension2);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Dot3:      Array_Of_Dot3Configuration                  Index (IS_OPTN or IS_UNBD) read FDot3 write SetDot3 stored Dot3_Specified;
    property Dot11:     Array_Of_Dot11Configuration                 Index (IS_OPTN or IS_UNBD) read FDot11 write SetDot11 stored Dot11_Specified;
    property Extension: NetworkInterfaceSetConfigurationExtension2  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : DynamicDNSInformationExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  DynamicDNSInformationExtension = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : CertificateWithPrivateKey, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  CertificateWithPrivateKey = class(TRemotable)
  private
    FCertificateID: string;
    FCertificateID_Specified: boolean;
    FCertificate: BinaryData;
    FPrivateKey: BinaryData;
    procedure SetCertificateID(Index: Integer; const Astring: string);
    function  CertificateID_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property CertificateID: string      Index (IS_OPTN) read FCertificateID write SetCertificateID stored CertificateID_Specified;
    property Certificate:   BinaryData  read FCertificate write FCertificate;
    property PrivateKey:    BinaryData  read FPrivateKey write FPrivateKey;
  end;



  // ************************************************************************ //
  // XML       : CertificateStatus, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  CertificateStatus = class(TRemotable)
  private
    FCertificateID: string;
    FStatus: Boolean;
  published
    property CertificateID: string   read FCertificateID write FCertificateID;
    property Status:        Boolean  read FStatus write FStatus;
  end;



  // ************************************************************************ //
  // XML       : Certificate, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  Certificate = class(TRemotable)
  private
    FCertificateID: string;
    FCertificate: BinaryData;
  public
    destructor Destroy; override;
  published
    property CertificateID: string      read FCertificateID write FCertificateID;
    property Certificate:   BinaryData  read FCertificate write FCertificate;
  end;



  // ************************************************************************ //
  // XML       : TimeZone, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  TimeZone = class(TRemotable)
  private
    FTZ: string;
  published
    property TZ: string  read FTZ write FTZ;
  end;



  // ************************************************************************ //
  // XML       : SetHostname, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetHostname = class(TRemotable)
  private
    FName_: string;
  public
    constructor Create; override;
  published
    property Name_: string  read FName_ write FName_;
  end;



  // ************************************************************************ //
  // XML       : GetCertificateInformation, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetCertificateInformation = class(TRemotable)
  private
    FCertificateID: string;
  public
    constructor Create; override;
  published
    property CertificateID: string  read FCertificateID write FCertificateID;
  end;



  // ************************************************************************ //
  // XML       : CreateCertificate, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  CreateCertificate = class(TRemotable)
  private
    FCertificateID: string;
    FCertificateID_Specified: boolean;
    FSubject: string;
    FSubject_Specified: boolean;
    FValidNotBefore: TXSDateTime;
    FValidNotBefore_Specified: boolean;
    FValidNotAfter: TXSDateTime;
    FValidNotAfter_Specified: boolean;
    procedure SetCertificateID(Index: Integer; const Astring: string);
    function  CertificateID_Specified(Index: Integer): boolean;
    procedure SetSubject(Index: Integer; const Astring: string);
    function  Subject_Specified(Index: Integer): boolean;
    procedure SetValidNotBefore(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  ValidNotBefore_Specified(Index: Integer): boolean;
    procedure SetValidNotAfter(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  ValidNotAfter_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property CertificateID:  string       Index (IS_OPTN) read FCertificateID write SetCertificateID stored CertificateID_Specified;
    property Subject:        string       Index (IS_OPTN) read FSubject write SetSubject stored Subject_Specified;
    property ValidNotBefore: TXSDateTime  Index (IS_OPTN) read FValidNotBefore write SetValidNotBefore stored ValidNotBefore_Specified;
    property ValidNotAfter:  TXSDateTime  Index (IS_OPTN) read FValidNotAfter write SetValidNotAfter stored ValidNotAfter_Specified;
  end;

  DeleteCertificates = array of string;         { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }


  // ************************************************************************ //
  // XML       : SetDNS, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetDNS = class(TRemotable)
  private
    FFromDHCP: Boolean;
    FSearchDomain: DeleteCertificates;
    FSearchDomain_Specified: boolean;
    FDNSManual: Array_Of_IPAddress;
    FDNSManual_Specified: boolean;
    procedure SetSearchDomain(Index: Integer; const ADeleteCertificates: DeleteCertificates);
    function  SearchDomain_Specified(Index: Integer): boolean;
    procedure SetDNSManual(Index: Integer; const AArray_Of_IPAddress: Array_Of_IPAddress);
    function  DNSManual_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property FromDHCP:     Boolean             read FFromDHCP write FFromDHCP;
    property SearchDomain: DeleteCertificates  Index (IS_OPTN or IS_UNBD) read FSearchDomain write SetSearchDomain stored SearchDomain_Specified;
    property DNSManual:    Array_Of_IPAddress  Index (IS_OPTN or IS_UNBD) read FDNSManual write SetDNSManual stored DNSManual_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetPkcs10Request, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetPkcs10Request = class(TRemotable)
  private
    FCertificateID: string;
    FSubject: string;
    FSubject_Specified: boolean;
    FAttributes: BinaryData;
    FAttributes_Specified: boolean;
    procedure SetSubject(Index: Integer; const Astring: string);
    function  Subject_Specified(Index: Integer): boolean;
    procedure SetAttributes(Index: Integer; const ABinaryData: BinaryData);
    function  Attributes_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property CertificateID: string      read FCertificateID write FCertificateID;
    property Subject:       string      Index (IS_OPTN) read FSubject write SetSubject stored Subject_Specified;
    property Attributes:    BinaryData  Index (IS_OPTN) read FAttributes write SetAttributes stored Attributes_Specified;
  end;



  // ************************************************************************ //
  // XML       : TLSConfiguration, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  TLSConfiguration = class(TRemotable)
  private
    FCertificateID: string;
  published
    property CertificateID: string  read FCertificateID write FCertificateID;
  end;



  // ************************************************************************ //
  // XML       : OSDPosConfiguration, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  OSDPosConfiguration = class(TRemotable)
  private
    FType_: string;
    FPos: Vector;
    FPos_Specified: boolean;
    FExtension: OSDPosConfigurationExtension;
    FExtension_Specified: boolean;
    procedure SetPos(Index: Integer; const AVector: Vector);
    function  Pos_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const AOSDPosConfigurationExtension: OSDPosConfigurationExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Type_:     string                        read FType_ write FType_;
    property Pos:       Vector                        Index (IS_OPTN) read FPos write SetPos stored Pos_Specified;
    property Extension: OSDPosConfigurationExtension  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : OSDPosConfigurationExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  OSDPosConfigurationExtension = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : NetworkInterfaceSetConfigurationExtension2, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  NetworkInterfaceSetConfigurationExtension2 = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : OSDReference, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  OSDReference = class(TRemotable)
  private
    FText: ReferenceToken;
  published
    property Text: ReferenceToken  Index (IS_TEXT) read FText write FText;
  end;



  // ************************************************************************ //
  // XML       : HostnameInformation, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  HostnameInformation = class(TRemotable)
  private
    FFromDHCP: Boolean;
    FName_: string;
    FName__Specified: boolean;
    FExtension: HostnameInformationExtension;
    FExtension_Specified: boolean;
    procedure SetName_(Index: Integer; const Astring: string);
    function  Name__Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const AHostnameInformationExtension: HostnameInformationExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property FromDHCP:  Boolean                       read FFromDHCP write FFromDHCP;
    property Name_:     string                        Index (IS_OPTN) read FName_ write SetName_ stored Name__Specified;
    property Extension: HostnameInformationExtension  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : HostnameInformationExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  HostnameInformationExtension = class(TRemotable)
  private
  published
  end;

  IPv6Address     =  type string;      { "http://www.onvif.org/ver10/schema"[GblSmpl] }
  Array_Of_IPv6Address = array of IPv6Address;   { "http://www.onvif.org/ver10/schema"[GblUbnd] }
  DNSName         =  type string;      { "http://www.onvif.org/ver10/schema"[GblSmpl] }


  // ************************************************************************ //
  // XML       : NetworkHostExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  NetworkHostExtension = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : NTPInformationExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  NTPInformationExtension = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : DNSInformation, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  DNSInformation = class(TRemotable)
  private
    FFromDHCP: Boolean;
    FSearchDomain: DeleteCertificates;
    FSearchDomain_Specified: boolean;
    FDNSFromDHCP: Array_Of_IPAddress;
    FDNSFromDHCP_Specified: boolean;
    FDNSManual: Array_Of_IPAddress;
    FDNSManual_Specified: boolean;
    FExtension: DNSInformationExtension;
    FExtension_Specified: boolean;
    procedure SetSearchDomain(Index: Integer; const ADeleteCertificates: DeleteCertificates);
    function  SearchDomain_Specified(Index: Integer): boolean;
    procedure SetDNSFromDHCP(Index: Integer; const AArray_Of_IPAddress: Array_Of_IPAddress);
    function  DNSFromDHCP_Specified(Index: Integer): boolean;
    procedure SetDNSManual(Index: Integer; const AArray_Of_IPAddress: Array_Of_IPAddress);
    function  DNSManual_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const ADNSInformationExtension: DNSInformationExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property FromDHCP:     Boolean                  read FFromDHCP write FFromDHCP;
    property SearchDomain: DeleteCertificates       Index (IS_OPTN or IS_UNBD) read FSearchDomain write SetSearchDomain stored SearchDomain_Specified;
    property DNSFromDHCP:  Array_Of_IPAddress       Index (IS_OPTN or IS_UNBD) read FDNSFromDHCP write SetDNSFromDHCP stored DNSFromDHCP_Specified;
    property DNSManual:    Array_Of_IPAddress       Index (IS_OPTN or IS_UNBD) read FDNSManual write SetDNSManual stored DNSManual_Specified;
    property Extension:    DNSInformationExtension  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : DNSInformationExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  DNSInformationExtension = class(TRemotable)
  private
  published
  end;

  Array_Of_Dot11Cipher = array of Dot11Cipher;   { "http://www.onvif.org/ver10/schema"[GblUbnd] }


  // ************************************************************************ //
  // XML       : Dot11SecurityConfiguration, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  Dot11SecurityConfiguration = class(TRemotable)
  private
    FMode: Dot11SecurityMode;
    FAlgorithm: Dot11Cipher;
    FAlgorithm_Specified: boolean;
    FPSK: Dot11PSKSet;
    FPSK_Specified: boolean;
    FDot1X: ReferenceToken;
    FDot1X_Specified: boolean;
    FExtension: Dot11SecurityConfigurationExtension;
    FExtension_Specified: boolean;
    procedure SetAlgorithm(Index: Integer; const ADot11Cipher: Dot11Cipher);
    function  Algorithm_Specified(Index: Integer): boolean;
    procedure SetPSK(Index: Integer; const ADot11PSKSet: Dot11PSKSet);
    function  PSK_Specified(Index: Integer): boolean;
    procedure SetDot1X(Index: Integer; const AReferenceToken: ReferenceToken);
    function  Dot1X_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const ADot11SecurityConfigurationExtension: Dot11SecurityConfigurationExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Mode:      Dot11SecurityMode                    read FMode write FMode;
    property Algorithm: Dot11Cipher                          Index (IS_OPTN) read FAlgorithm write SetAlgorithm stored Algorithm_Specified;
    property PSK:       Dot11PSKSet                          Index (IS_OPTN) read FPSK write SetPSK stored PSK_Specified;
    property Dot1X:     ReferenceToken                       Index (IS_OPTN) read FDot1X write SetDot1X stored Dot1X_Specified;
    property Extension: Dot11SecurityConfigurationExtension  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : Dot11PSKSetExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  Dot11PSKSetExtension = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : Dot11Capabilities, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  Dot11Capabilities = class(TRemotable)
  private
    FTKIP: Boolean;
    FScanAvailableNetworks: Boolean;
    FMultipleConfiguration: Boolean;
    FAdHocStationMode: Boolean;
    FWEP: Boolean;
  published
    property TKIP:                  Boolean  read FTKIP write FTKIP;
    property ScanAvailableNetworks: Boolean  read FScanAvailableNetworks write FScanAvailableNetworks;
    property MultipleConfiguration: Boolean  read FMultipleConfiguration write FMultipleConfiguration;
    property AdHocStationMode:      Boolean  read FAdHocStationMode write FAdHocStationMode;
    property WEP:                   Boolean  read FWEP write FWEP;
  end;



  // ************************************************************************ //
  // XML       : Dot11SecurityConfigurationExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  Dot11SecurityConfigurationExtension = class(TRemotable)
  private
  published
  end;

  Dot11PSK        = class(TXSHexBinary) end;      { "http://www.onvif.org/ver10/schema"[GblSmpl] }
  Dot11PSKPassphrase =  type string;      { "http://www.onvif.org/ver10/schema"[GblSmpl] }


  // ************************************************************************ //
  // XML       : Dot11PSKSet, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  Dot11PSKSet = class(TRemotable)
  private
    FKey: Dot11PSK;
    FKey_Specified: boolean;
    FPassphrase: Dot11PSKPassphrase;
    FPassphrase_Specified: boolean;
    FExtension: Dot11PSKSetExtension;
    FExtension_Specified: boolean;
    procedure SetKey(Index: Integer; const ADot11PSK: Dot11PSK);
    function  Key_Specified(Index: Integer): boolean;
    procedure SetPassphrase(Index: Integer; const ADot11PSKPassphrase: Dot11PSKPassphrase);
    function  Passphrase_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const ADot11PSKSetExtension: Dot11PSKSetExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Key:        Dot11PSK              Index (IS_OPTN) read FKey write SetKey stored Key_Specified;
    property Passphrase: Dot11PSKPassphrase    Index (IS_OPTN) read FPassphrase write SetPassphrase stored Passphrase_Specified;
    property Extension:  Dot11PSKSetExtension  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : NetworkZeroConfigurationExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  NetworkZeroConfigurationExtension = class(TRemotable)
  private
    FAdditional: Array_Of_NetworkZeroConfiguration;
    FAdditional_Specified: boolean;
    FExtension: NetworkZeroConfigurationExtension2;
    FExtension_Specified: boolean;
    procedure SetAdditional(Index: Integer; const AArray_Of_NetworkZeroConfiguration: Array_Of_NetworkZeroConfiguration);
    function  Additional_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const ANetworkZeroConfigurationExtension2: NetworkZeroConfigurationExtension2);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Additional: Array_Of_NetworkZeroConfiguration   Index (IS_OPTN or IS_UNBD) read FAdditional write SetAdditional stored Additional_Specified;
    property Extension:  NetworkZeroConfigurationExtension2  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : NetworkZeroConfigurationExtension2, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  NetworkZeroConfigurationExtension2 = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : OSDTextConfigurationExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  OSDTextConfigurationExtension = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : OSDImgConfiguration, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  OSDImgConfiguration = class(TRemotable)
  private
    FImgPath: string;
    FExtension: OSDImgConfigurationExtension;
    FExtension_Specified: boolean;
    procedure SetExtension(Index: Integer; const AOSDImgConfigurationExtension: OSDImgConfigurationExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property ImgPath:   string                        read FImgPath write FImgPath;
    property Extension: OSDImgConfigurationExtension  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : OSDImgConfigurationExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  OSDImgConfigurationExtension = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : Description, <complexType>
  // Namespace : http://docs.oasis-open.org/wsrf/bf-2
  // ************************************************************************ //
  Description = class(TRemotable)
  private
    FText: string;
    Flang: string;
    Flang_Specified: boolean;
    procedure Setlang(Index: Integer; const Astring: string);
    function  lang_Specified(Index: Integer): boolean;
  published
    property Text: string  Index (IS_TEXT) read FText write FText;
    property lang: string  Index (IS_ATTR or IS_OPTN) read Flang write Setlang stored lang_Specified;
  end;

  Dot11SSIDType   = class(TXSHexBinary) end;      { "http://www.onvif.org/ver10/schema"[GblSmpl] }


  // ************************************************************************ //
  // XML       : IPAddressFilter, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  IPAddressFilter = class(TRemotable)
  private
    FType_: IPAddressFilterType;
    FIPv4Address: Array_Of_PrefixedIPv4Address;
    FIPv4Address_Specified: boolean;
    FIPv6Address: Array_Of_PrefixedIPv6Address;
    FIPv6Address_Specified: boolean;
    FExtension: IPAddressFilterExtension;
    FExtension_Specified: boolean;
    procedure SetIPv4Address(Index: Integer; const AArray_Of_PrefixedIPv4Address: Array_Of_PrefixedIPv4Address);
    function  IPv4Address_Specified(Index: Integer): boolean;
    procedure SetIPv6Address(Index: Integer; const AArray_Of_PrefixedIPv6Address: Array_Of_PrefixedIPv6Address);
    function  IPv6Address_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const AIPAddressFilterExtension: IPAddressFilterExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Type_:       IPAddressFilterType           read FType_ write FType_;
    property IPv4Address: Array_Of_PrefixedIPv4Address  Index (IS_OPTN or IS_UNBD) read FIPv4Address write SetIPv4Address stored IPv4Address_Specified;
    property IPv6Address: Array_Of_PrefixedIPv6Address  Index (IS_OPTN or IS_UNBD) read FIPv6Address write SetIPv6Address stored IPv6Address_Specified;
    property Extension:   IPAddressFilterExtension      Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : IPAddressFilterExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  IPAddressFilterExtension = class(TRemotable)
  private
  published
  end;

  Name_           =  type string;      { "http://www.onvif.org/ver10/schema"[GblSmpl] }
  StringAttrList  =  type string;      { "http://www.onvif.org/ver10/schema"[GblSmpl] }


  // ************************************************************************ //
  // XML       : ImagingSettings20, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  ImagingSettings20 = class(TRemotable)
  private
    FBacklightCompensation: BacklightCompensation20;
    FBacklightCompensation_Specified: boolean;
    FBrightness: Single;
    FBrightness_Specified: boolean;
    FColorSaturation: Single;
    FColorSaturation_Specified: boolean;
    FContrast: Single;
    FContrast_Specified: boolean;
    FExposure: Exposure20;
    FExposure_Specified: boolean;
    FFocus: FocusConfiguration20;
    FFocus_Specified: boolean;
    FIrCutFilter: IrCutFilterMode;
    FIrCutFilter_Specified: boolean;
    FSharpness: Single;
    FSharpness_Specified: boolean;
    FWideDynamicRange: WideDynamicRange20;
    FWideDynamicRange_Specified: boolean;
    FWhiteBalance: WhiteBalance20;
    FWhiteBalance_Specified: boolean;
    FExtension: ImagingSettingsExtension20;
    FExtension_Specified: boolean;
    procedure SetBacklightCompensation(Index: Integer; const ABacklightCompensation20: BacklightCompensation20);
    function  BacklightCompensation_Specified(Index: Integer): boolean;
    procedure SetBrightness(Index: Integer; const ASingle: Single);
    function  Brightness_Specified(Index: Integer): boolean;
    procedure SetColorSaturation(Index: Integer; const ASingle: Single);
    function  ColorSaturation_Specified(Index: Integer): boolean;
    procedure SetContrast(Index: Integer; const ASingle: Single);
    function  Contrast_Specified(Index: Integer): boolean;
    procedure SetExposure(Index: Integer; const AExposure20: Exposure20);
    function  Exposure_Specified(Index: Integer): boolean;
    procedure SetFocus(Index: Integer; const AFocusConfiguration20: FocusConfiguration20);
    function  Focus_Specified(Index: Integer): boolean;
    procedure SetIrCutFilter(Index: Integer; const AIrCutFilterMode: IrCutFilterMode);
    function  IrCutFilter_Specified(Index: Integer): boolean;
    procedure SetSharpness(Index: Integer; const ASingle: Single);
    function  Sharpness_Specified(Index: Integer): boolean;
    procedure SetWideDynamicRange(Index: Integer; const AWideDynamicRange20: WideDynamicRange20);
    function  WideDynamicRange_Specified(Index: Integer): boolean;
    procedure SetWhiteBalance(Index: Integer; const AWhiteBalance20: WhiteBalance20);
    function  WhiteBalance_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const AImagingSettingsExtension20: ImagingSettingsExtension20);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property BacklightCompensation: BacklightCompensation20     Index (IS_OPTN) read FBacklightCompensation write SetBacklightCompensation stored BacklightCompensation_Specified;
    property Brightness:            Single                      Index (IS_OPTN) read FBrightness write SetBrightness stored Brightness_Specified;
    property ColorSaturation:       Single                      Index (IS_OPTN) read FColorSaturation write SetColorSaturation stored ColorSaturation_Specified;
    property Contrast:              Single                      Index (IS_OPTN) read FContrast write SetContrast stored Contrast_Specified;
    property Exposure:              Exposure20                  Index (IS_OPTN) read FExposure write SetExposure stored Exposure_Specified;
    property Focus:                 FocusConfiguration20        Index (IS_OPTN) read FFocus write SetFocus stored Focus_Specified;
    property IrCutFilter:           IrCutFilterMode             Index (IS_OPTN) read FIrCutFilter write SetIrCutFilter stored IrCutFilter_Specified;
    property Sharpness:             Single                      Index (IS_OPTN) read FSharpness write SetSharpness stored Sharpness_Specified;
    property WideDynamicRange:      WideDynamicRange20          Index (IS_OPTN) read FWideDynamicRange write SetWideDynamicRange stored WideDynamicRange_Specified;
    property WhiteBalance:          WhiteBalance20              Index (IS_OPTN) read FWhiteBalance write SetWhiteBalance stored WhiteBalance_Specified;
    property Extension:             ImagingSettingsExtension20  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : VideoSourceExtension2, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  VideoSourceExtension2 = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : Scope, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  Scope = class(TRemotable)
  private
    FScopeDef: ScopeDefinition;
    FScopeItem: string;
  published
    property ScopeDef:  ScopeDefinition  read FScopeDef write FScopeDef;
    property ScopeItem: string           read FScopeItem write FScopeItem;
  end;



  // ************************************************************************ //
  // XML       : Layout, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  Layout = class(TRemotable)
  private
    FPaneLayout: Array_Of_PaneLayout;
    FExtension: LayoutExtension;
    FExtension_Specified: boolean;
    procedure SetExtension(Index: Integer; const ALayoutExtension: LayoutExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property PaneLayout: Array_Of_PaneLayout  Index (IS_UNBD) read FPaneLayout write FPaneLayout;
    property Extension:  LayoutExtension      Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : VideoOutputExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  VideoOutputExtension = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : DeviceEntity, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  DeviceEntity = class(TRemotable)
  private
    Ftoken: ReferenceToken;
  published
    property token: ReferenceToken  Index (IS_ATTR) read Ftoken write Ftoken;
  end;



  // ************************************************************************ //
  // XML       : AudioOutput, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  AudioOutput = class(DeviceEntity)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : VideoOutput, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  VideoOutput = class(DeviceEntity)
  private
    FLayout: Layout;
    FResolution: VideoResolution;
    FResolution_Specified: boolean;
    FRefreshRate: Single;
    FRefreshRate_Specified: boolean;
    FAspectRatio: Single;
    FAspectRatio_Specified: boolean;
    FExtension: VideoOutputExtension;
    FExtension_Specified: boolean;
    procedure SetResolution(Index: Integer; const AVideoResolution: VideoResolution);
    function  Resolution_Specified(Index: Integer): boolean;
    procedure SetRefreshRate(Index: Integer; const ASingle: Single);
    function  RefreshRate_Specified(Index: Integer): boolean;
    procedure SetAspectRatio(Index: Integer; const ASingle: Single);
    function  AspectRatio_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const AVideoOutputExtension: VideoOutputExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Layout:      Layout                read FLayout write FLayout;
    property Resolution:  VideoResolution       Index (IS_OPTN) read FResolution write SetResolution stored Resolution_Specified;
    property RefreshRate: Single                Index (IS_OPTN) read FRefreshRate write SetRefreshRate stored RefreshRate_Specified;
    property AspectRatio: Single                Index (IS_OPTN) read FAspectRatio write SetAspectRatio stored AspectRatio_Specified;
    property Extension:   VideoOutputExtension  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : OSDConfiguration, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  OSDConfiguration = class(DeviceEntity)
  private
    FVideoSourceConfigurationToken: OSDReference;
    FType_: OSDType;
    FPosition: OSDPosConfiguration;
    FTextString: OSDTextConfiguration;
    FTextString_Specified: boolean;
    FImage: OSDImgConfiguration;
    FImage_Specified: boolean;
    FExtension: OSDConfigurationExtension;
    FExtension_Specified: boolean;
    procedure SetTextString(Index: Integer; const AOSDTextConfiguration: OSDTextConfiguration);
    function  TextString_Specified(Index: Integer): boolean;
    procedure SetImage(Index: Integer; const AOSDImgConfiguration: OSDImgConfiguration);
    function  Image_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const AOSDConfigurationExtension: OSDConfigurationExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property VideoSourceConfigurationToken: OSDReference               read FVideoSourceConfigurationToken write FVideoSourceConfigurationToken;
    property Type_:                         OSDType                    read FType_ write FType_;
    property Position:                      OSDPosConfiguration        read FPosition write FPosition;
    property TextString:                    OSDTextConfiguration       Index (IS_OPTN) read FTextString write SetTextString stored TextString_Specified;
    property Image:                         OSDImgConfiguration        Index (IS_OPTN) read FImage write SetImage stored Image_Specified;
    property Extension:                     OSDConfigurationExtension  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : DigitalInput, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  DigitalInput = class(DeviceEntity)
  private
    FIdleState: DigitalIdleState;
    FIdleState_Specified: boolean;
    procedure SetIdleState(Index: Integer; const ADigitalIdleState: DigitalIdleState);
    function  IdleState_Specified(Index: Integer): boolean;
  published
    property IdleState: DigitalIdleState  Index (IS_ATTR or IS_OPTN) read FIdleState write SetIdleState stored IdleState_Specified;
  end;



  // ************************************************************************ //
  // XML       : RelayOutput, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  RelayOutput = class(DeviceEntity)
  private
    FProperties: RelayOutputSettings;
  public
    destructor Destroy; override;
  published
    property Properties: RelayOutputSettings  read FProperties write FProperties;
  end;



  // ************************************************************************ //
  // XML       : AudioSource, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  AudioSource = class(DeviceEntity)
  private
    FChannels: Integer;
  published
    property Channels: Integer  read FChannels write FChannels;
  end;



  // ************************************************************************ //
  // XML       : OSDTextConfiguration, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  OSDTextConfiguration = class(TRemotable)
  private
    FIsPersistentText: Boolean;
    FIsPersistentText_Specified: boolean;
    FType_: string;
    FDateFormat: string;
    FDateFormat_Specified: boolean;
    FTimeFormat: string;
    FTimeFormat_Specified: boolean;
    FFontSize: Integer;
    FFontSize_Specified: boolean;
    FFontColor: OSDColor;
    FFontColor_Specified: boolean;
    FBackgroundColor: OSDColor;
    FBackgroundColor_Specified: boolean;
    FPlainText: string;
    FPlainText_Specified: boolean;
    FExtension: OSDTextConfigurationExtension;
    FExtension_Specified: boolean;
    procedure SetIsPersistentText(Index: Integer; const ABoolean: Boolean);
    function  IsPersistentText_Specified(Index: Integer): boolean;
    procedure SetDateFormat(Index: Integer; const Astring: string);
    function  DateFormat_Specified(Index: Integer): boolean;
    procedure SetTimeFormat(Index: Integer; const Astring: string);
    function  TimeFormat_Specified(Index: Integer): boolean;
    procedure SetFontSize(Index: Integer; const AInteger: Integer);
    function  FontSize_Specified(Index: Integer): boolean;
    procedure SetFontColor(Index: Integer; const AOSDColor: OSDColor);
    function  FontColor_Specified(Index: Integer): boolean;
    procedure SetBackgroundColor(Index: Integer; const AOSDColor: OSDColor);
    function  BackgroundColor_Specified(Index: Integer): boolean;
    procedure SetPlainText(Index: Integer; const Astring: string);
    function  PlainText_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const AOSDTextConfigurationExtension: OSDTextConfigurationExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property IsPersistentText: Boolean                        Index (IS_ATTR or IS_OPTN) read FIsPersistentText write SetIsPersistentText stored IsPersistentText_Specified;
    property Type_:            string                         read FType_ write FType_;
    property DateFormat:       string                         Index (IS_OPTN) read FDateFormat write SetDateFormat stored DateFormat_Specified;
    property TimeFormat:       string                         Index (IS_OPTN) read FTimeFormat write SetTimeFormat stored TimeFormat_Specified;
    property FontSize:         Integer                        Index (IS_OPTN) read FFontSize write SetFontSize stored FontSize_Specified;
    property FontColor:        OSDColor                       Index (IS_OPTN) read FFontColor write SetFontColor stored FontColor_Specified;
    property BackgroundColor:  OSDColor                       Index (IS_OPTN) read FBackgroundColor write SetBackgroundColor stored BackgroundColor_Specified;
    property PlainText:        string                         Index (IS_OPTN) read FPlainText write SetPlainText stored PlainText_Specified;
    property Extension:        OSDTextConfigurationExtension  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : OSDColor, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  OSDColor = class(TRemotable)
  private
    FTransparent: Integer;
    FTransparent_Specified: boolean;
    FColor: Color;
    procedure SetTransparent(Index: Integer; const AInteger: Integer);
    function  Transparent_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Transparent: Integer  Index (IS_ATTR or IS_OPTN) read FTransparent write SetTransparent stored Transparent_Specified;
    property Color:       Color    read FColor write FColor;
  end;



  // ************************************************************************ //
  // XML       : NetworkInterfaceSetConfiguration, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  NetworkInterfaceSetConfiguration = class(TRemotable)
  private
    FEnabled: Boolean;
    FEnabled_Specified: boolean;
    FLink: NetworkInterfaceConnectionSetting;
    FLink_Specified: boolean;
    FMTU: Integer;
    FMTU_Specified: boolean;
    FIPv4: IPv4NetworkInterfaceSetConfiguration;
    FIPv4_Specified: boolean;
    FIPv6: IPv6NetworkInterfaceSetConfiguration;
    FIPv6_Specified: boolean;
    FExtension: NetworkInterfaceSetConfigurationExtension;
    FExtension_Specified: boolean;
    procedure SetEnabled(Index: Integer; const ABoolean: Boolean);
    function  Enabled_Specified(Index: Integer): boolean;
    procedure SetLink(Index: Integer; const ANetworkInterfaceConnectionSetting: NetworkInterfaceConnectionSetting);
    function  Link_Specified(Index: Integer): boolean;
    procedure SetMTU(Index: Integer; const AInteger: Integer);
    function  MTU_Specified(Index: Integer): boolean;
    procedure SetIPv4(Index: Integer; const AIPv4NetworkInterfaceSetConfiguration: IPv4NetworkInterfaceSetConfiguration);
    function  IPv4_Specified(Index: Integer): boolean;
    procedure SetIPv6(Index: Integer; const AIPv6NetworkInterfaceSetConfiguration: IPv6NetworkInterfaceSetConfiguration);
    function  IPv6_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const ANetworkInterfaceSetConfigurationExtension: NetworkInterfaceSetConfigurationExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Enabled:   Boolean                                    Index (IS_OPTN) read FEnabled write SetEnabled stored Enabled_Specified;
    property Link:      NetworkInterfaceConnectionSetting          Index (IS_OPTN) read FLink write SetLink stored Link_Specified;
    property MTU:       Integer                                    Index (IS_OPTN) read FMTU write SetMTU stored MTU_Specified;
    property IPv4:      IPv4NetworkInterfaceSetConfiguration       Index (IS_OPTN) read FIPv4 write SetIPv4 stored IPv4_Specified;
    property IPv6:      IPv6NetworkInterfaceSetConfiguration       Index (IS_OPTN) read FIPv6 write SetIPv6 stored IPv6_Specified;
    property Extension: NetworkInterfaceSetConfigurationExtension  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : ProfileCapabilities, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  ProfileCapabilities = class(TRemotable)
  private
    FMaximumNumberOfProfiles: Integer;
  published
    property MaximumNumberOfProfiles: Integer  read FMaximumNumberOfProfiles write FMaximumNumberOfProfiles;
  end;



  // ************************************************************************ //
  // XML       : OnvifVersion, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  OnvifVersion = class(TRemotable)
  private
    FMajor: Integer;
    FMinor: Integer;
  published
    property Major: Integer  read FMajor write FMajor;
    property Minor: Integer  read FMinor write FMinor;
  end;



  // ************************************************************************ //
  // XML       : Date, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  Date = class(TRemotable)
  private
    FYear: Integer;
    FMonth: Integer;
    FDay: Integer;
  published
    property Year:  Integer  read FYear write FYear;
    property Month: Integer  read FMonth write FMonth;
    property Day:   Integer  read FDay write FDay;
  end;



  // ************************************************************************ //
  // XML       : CertificateInformation, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  CertificateInformation = class(TRemotable)
  private
    FCertificateID: string;
    FIssuerDN: string;
    FIssuerDN_Specified: boolean;
    FSubjectDN: string;
    FSubjectDN_Specified: boolean;
    FKeyUsage: CertificateUsage;
    FKeyUsage_Specified: boolean;
    FExtendedKeyUsage: CertificateUsage;
    FExtendedKeyUsage_Specified: boolean;
    FKeyLength: Integer;
    FKeyLength_Specified: boolean;
    FVersion: string;
    FVersion_Specified: boolean;
    FSerialNum: string;
    FSerialNum_Specified: boolean;
    FSignatureAlgorithm: string;
    FSignatureAlgorithm_Specified: boolean;
    FValidity: DateTimeRange;
    FValidity_Specified: boolean;
    FExtension: CertificateInformationExtension;
    FExtension_Specified: boolean;
    procedure SetIssuerDN(Index: Integer; const Astring: string);
    function  IssuerDN_Specified(Index: Integer): boolean;
    procedure SetSubjectDN(Index: Integer; const Astring: string);
    function  SubjectDN_Specified(Index: Integer): boolean;
    procedure SetKeyUsage(Index: Integer; const ACertificateUsage: CertificateUsage);
    function  KeyUsage_Specified(Index: Integer): boolean;
    procedure SetExtendedKeyUsage(Index: Integer; const ACertificateUsage: CertificateUsage);
    function  ExtendedKeyUsage_Specified(Index: Integer): boolean;
    procedure SetKeyLength(Index: Integer; const AInteger: Integer);
    function  KeyLength_Specified(Index: Integer): boolean;
    procedure SetVersion(Index: Integer; const Astring: string);
    function  Version_Specified(Index: Integer): boolean;
    procedure SetSerialNum(Index: Integer; const Astring: string);
    function  SerialNum_Specified(Index: Integer): boolean;
    procedure SetSignatureAlgorithm(Index: Integer; const Astring: string);
    function  SignatureAlgorithm_Specified(Index: Integer): boolean;
    procedure SetValidity(Index: Integer; const ADateTimeRange: DateTimeRange);
    function  Validity_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const ACertificateInformationExtension: CertificateInformationExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property CertificateID:      string                           read FCertificateID write FCertificateID;
    property IssuerDN:           string                           Index (IS_OPTN) read FIssuerDN write SetIssuerDN stored IssuerDN_Specified;
    property SubjectDN:          string                           Index (IS_OPTN) read FSubjectDN write SetSubjectDN stored SubjectDN_Specified;
    property KeyUsage:           CertificateUsage                 Index (IS_OPTN) read FKeyUsage write SetKeyUsage stored KeyUsage_Specified;
    property ExtendedKeyUsage:   CertificateUsage                 Index (IS_OPTN) read FExtendedKeyUsage write SetExtendedKeyUsage stored ExtendedKeyUsage_Specified;
    property KeyLength:          Integer                          Index (IS_OPTN) read FKeyLength write SetKeyLength stored KeyLength_Specified;
    property Version:            string                           Index (IS_OPTN) read FVersion write SetVersion stored Version_Specified;
    property SerialNum:          string                           Index (IS_OPTN) read FSerialNum write SetSerialNum stored SerialNum_Specified;
    property SignatureAlgorithm: string                           Index (IS_OPTN) read FSignatureAlgorithm write SetSignatureAlgorithm stored SignatureAlgorithm_Specified;
    property Validity:           DateTimeRange                    Index (IS_OPTN) read FValidity write SetValidity stored Validity_Specified;
    property Extension:          CertificateInformationExtension  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : Time, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  Time = class(TRemotable)
  private
    FHour: Integer;
    FMinute: Integer;
    FSecond: Integer;
  published
    property Hour:   Integer  read FHour write FHour;
    property Minute: Integer  read FMinute write FMinute;
    property Second: Integer  read FSecond write FSecond;
  end;



  // ************************************************************************ //
  // XML       : PTZPresetTourSupported, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  PTZPresetTourSupported = class(TRemotable)
  private
    FMaximumNumberOfPresetTours: Integer;
    FPTZPresetTourOperation: Array_Of_PTZPresetTourOperation;
    FPTZPresetTourOperation_Specified: boolean;
    FExtension: PTZPresetTourSupportedExtension;
    FExtension_Specified: boolean;
    procedure SetPTZPresetTourOperation(Index: Integer; const AArray_Of_PTZPresetTourOperation: Array_Of_PTZPresetTourOperation);
    function  PTZPresetTourOperation_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const APTZPresetTourSupportedExtension: PTZPresetTourSupportedExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property MaximumNumberOfPresetTours: Integer                          read FMaximumNumberOfPresetTours write FMaximumNumberOfPresetTours;
    property PTZPresetTourOperation:     Array_Of_PTZPresetTourOperation  Index (IS_OPTN or IS_UNBD) read FPTZPresetTourOperation write SetPTZPresetTourOperation stored PTZPresetTourOperation_Specified;
    property Extension:                  PTZPresetTourSupportedExtension  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : Dot1XConfiguration, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  Dot1XConfiguration = class(TRemotable)
  private
    FDot1XConfigurationToken: ReferenceToken;
    FIdentity: string;
    FAnonymousID: string;
    FAnonymousID_Specified: boolean;
    FEAPMethod: Integer;
    FCACertificateID: DeleteCertificates;
    FCACertificateID_Specified: boolean;
    FEAPMethodConfiguration: EAPMethodConfiguration;
    FEAPMethodConfiguration_Specified: boolean;
    FExtension: Dot1XConfigurationExtension;
    FExtension_Specified: boolean;
    procedure SetAnonymousID(Index: Integer; const Astring: string);
    function  AnonymousID_Specified(Index: Integer): boolean;
    procedure SetCACertificateID(Index: Integer; const ADeleteCertificates: DeleteCertificates);
    function  CACertificateID_Specified(Index: Integer): boolean;
    procedure SetEAPMethodConfiguration(Index: Integer; const AEAPMethodConfiguration: EAPMethodConfiguration);
    function  EAPMethodConfiguration_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const ADot1XConfigurationExtension: Dot1XConfigurationExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Dot1XConfigurationToken: ReferenceToken               read FDot1XConfigurationToken write FDot1XConfigurationToken;
    property Identity:                string                       read FIdentity write FIdentity;
    property AnonymousID:             string                       Index (IS_OPTN) read FAnonymousID write SetAnonymousID stored AnonymousID_Specified;
    property EAPMethod:               Integer                      read FEAPMethod write FEAPMethod;
    property CACertificateID:         DeleteCertificates           Index (IS_OPTN or IS_UNBD) read FCACertificateID write SetCACertificateID stored CACertificateID_Specified;
    property EAPMethodConfiguration:  EAPMethodConfiguration       Index (IS_OPTN) read FEAPMethodConfiguration write SetEAPMethodConfiguration stored EAPMethodConfiguration_Specified;
    property Extension:               Dot1XConfigurationExtension  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : FloatRange, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  FloatRange = class(TRemotable)
  private
    FMin: Single;
    FMax: Single;
  published
    property Min: Single  read FMin write FMin;
    property Max: Single  read FMax write FMax;
  end;



  // ************************************************************************ //
  // XML       : Include, global, <complexType>
  // Namespace : http://www.w3.org/2004/08/xop/include
  // ************************************************************************ //
  Include2 = class(TRemotable)
  private
    Fhref: string;
  published
    property href: string  Index (IS_ATTR) read Fhref write Fhref;
  end;



  // ************************************************************************ //
  // XML       : Include, global, <element>
  // Namespace : http://www.w3.org/2004/08/xop/include
  // ************************************************************************ //
  Include = class(Include2)
  private
  published
  end;

  NetworkInterfaceConfigPriority =  type Int64;      { "http://www.onvif.org/ver10/schema"[GblSmpl] }


  // ************************************************************************ //
  // XML       : VideoResolution, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  VideoResolution = class(TRemotable)
  private
    FWidth: Integer;
    FHeight: Integer;
  published
    property Width:  Integer  read FWidth write FWidth;
    property Height: Integer  read FHeight write FHeight;
  end;



  // ************************************************************************ //
  // XML       : ImagingSettings, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  ImagingSettings = class(TRemotable)
  private
    FBacklightCompensation: BacklightCompensation;
    FBacklightCompensation_Specified: boolean;
    FBrightness: Single;
    FBrightness_Specified: boolean;
    FColorSaturation: Single;
    FColorSaturation_Specified: boolean;
    FContrast: Single;
    FContrast_Specified: boolean;
    FExposure: Exposure;
    FExposure_Specified: boolean;
    FFocus: FocusConfiguration;
    FFocus_Specified: boolean;
    FIrCutFilter: IrCutFilterMode;
    FIrCutFilter_Specified: boolean;
    FSharpness: Single;
    FSharpness_Specified: boolean;
    FWideDynamicRange: WideDynamicRange;
    FWideDynamicRange_Specified: boolean;
    FWhiteBalance: WhiteBalance;
    FWhiteBalance_Specified: boolean;
    FExtension: ImagingSettingsExtension;
    FExtension_Specified: boolean;
    procedure SetBacklightCompensation(Index: Integer; const ABacklightCompensation: BacklightCompensation);
    function  BacklightCompensation_Specified(Index: Integer): boolean;
    procedure SetBrightness(Index: Integer; const ASingle: Single);
    function  Brightness_Specified(Index: Integer): boolean;
    procedure SetColorSaturation(Index: Integer; const ASingle: Single);
    function  ColorSaturation_Specified(Index: Integer): boolean;
    procedure SetContrast(Index: Integer; const ASingle: Single);
    function  Contrast_Specified(Index: Integer): boolean;
    procedure SetExposure(Index: Integer; const AExposure: Exposure);
    function  Exposure_Specified(Index: Integer): boolean;
    procedure SetFocus(Index: Integer; const AFocusConfiguration: FocusConfiguration);
    function  Focus_Specified(Index: Integer): boolean;
    procedure SetIrCutFilter(Index: Integer; const AIrCutFilterMode: IrCutFilterMode);
    function  IrCutFilter_Specified(Index: Integer): boolean;
    procedure SetSharpness(Index: Integer; const ASingle: Single);
    function  Sharpness_Specified(Index: Integer): boolean;
    procedure SetWideDynamicRange(Index: Integer; const AWideDynamicRange: WideDynamicRange);
    function  WideDynamicRange_Specified(Index: Integer): boolean;
    procedure SetWhiteBalance(Index: Integer; const AWhiteBalance: WhiteBalance);
    function  WhiteBalance_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const AImagingSettingsExtension: ImagingSettingsExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property BacklightCompensation: BacklightCompensation     Index (IS_OPTN) read FBacklightCompensation write SetBacklightCompensation stored BacklightCompensation_Specified;
    property Brightness:            Single                    Index (IS_OPTN) read FBrightness write SetBrightness stored Brightness_Specified;
    property ColorSaturation:       Single                    Index (IS_OPTN) read FColorSaturation write SetColorSaturation stored ColorSaturation_Specified;
    property Contrast:              Single                    Index (IS_OPTN) read FContrast write SetContrast stored Contrast_Specified;
    property Exposure:              Exposure                  Index (IS_OPTN) read FExposure write SetExposure stored Exposure_Specified;
    property Focus:                 FocusConfiguration        Index (IS_OPTN) read FFocus write SetFocus stored Focus_Specified;
    property IrCutFilter:           IrCutFilterMode           Index (IS_OPTN) read FIrCutFilter write SetIrCutFilter stored IrCutFilter_Specified;
    property Sharpness:             Single                    Index (IS_OPTN) read FSharpness write SetSharpness stored Sharpness_Specified;
    property WideDynamicRange:      WideDynamicRange          Index (IS_OPTN) read FWideDynamicRange write SetWideDynamicRange stored WideDynamicRange_Specified;
    property WhiteBalance:          WhiteBalance              Index (IS_OPTN) read FWhiteBalance write SetWhiteBalance stored WhiteBalance_Specified;
    property Extension:             ImagingSettingsExtension  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : VideoSourceExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  VideoSourceExtension = class(TRemotable)
  private
    FImaging: ImagingSettings20;
    FImaging_Specified: boolean;
    FExtension: VideoSourceExtension2;
    FExtension_Specified: boolean;
    procedure SetImaging(Index: Integer; const AImagingSettings20: ImagingSettings20);
    function  Imaging_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const AVideoSourceExtension2: VideoSourceExtension2);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Imaging:   ImagingSettings20      Index (IS_OPTN) read FImaging write SetImaging stored Imaging_Specified;
    property Extension: VideoSourceExtension2  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : DynamicDNSInformation, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  DynamicDNSInformation = class(TRemotable)
  private
    FType_: DynamicDNSType;
    FName_: DNSName;
    FName__Specified: boolean;
    FTTL: TXSDuration;
    FTTL_Specified: boolean;
    FExtension: DynamicDNSInformationExtension;
    FExtension_Specified: boolean;
    procedure SetName_(Index: Integer; const ADNSName: DNSName);
    function  Name__Specified(Index: Integer): boolean;
    procedure SetTTL(Index: Integer; const ATXSDuration: TXSDuration);
    function  TTL_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const ADynamicDNSInformationExtension: DynamicDNSInformationExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Type_:     DynamicDNSType                  read FType_ write FType_;
    property Name_:     DNSName                         Index (IS_OPTN) read FName_ write SetName_ stored Name__Specified;
    property TTL:       TXSDuration                     Index (IS_OPTN) read FTTL write SetTTL stored TTL_Specified;
    property Extension: DynamicDNSInformationExtension  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : StartSystemRestoreResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  StartSystemRestoreResponse = class(TRemotable)
  private
    FUploadUri: string;
    FExpectedDownTime: TXSDuration;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property UploadUri:        string       read FUploadUri write FUploadUri;
    property ExpectedDownTime: TXSDuration  read FExpectedDownTime write FExpectedDownTime;
  end;



  // ************************************************************************ //
  // XML       : StartFirmwareUpgradeResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  StartFirmwareUpgradeResponse = class(TRemotable)
  private
    FUploadUri: string;
    FUploadDelay: TXSDuration;
    FExpectedDownTime: TXSDuration;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property UploadUri:        string       read FUploadUri write FUploadUri;
    property UploadDelay:      TXSDuration  read FUploadDelay write FUploadDelay;
    property ExpectedDownTime: TXSDuration  read FExpectedDownTime write FExpectedDownTime;
  end;



  // ************************************************************************ //
  // XML       : SetDynamicDNS, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetDynamicDNS = class(TRemotable)
  private
    FType_: DynamicDNSType;
    FName_: DNSName;
    FName__Specified: boolean;
    FTTL: TXSDuration;
    FTTL_Specified: boolean;
    procedure SetName_(Index: Integer; const ADNSName: DNSName);
    function  Name__Specified(Index: Integer): boolean;
    procedure SetTTL(Index: Integer; const ATXSDuration: TXSDuration);
    function  TTL_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Type_: DynamicDNSType  read FType_ write FType_;
    property Name_: DNSName         Index (IS_OPTN) read FName_ write SetName_ stored Name__Specified;
    property TTL:   TXSDuration     Index (IS_OPTN) read FTTL write SetTTL stored TTL_Specified;
  end;



  // ************************************************************************ //
  // XML       : IrCutFilterAutoAdjustment, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  IrCutFilterAutoAdjustment = class(TRemotable)
  private
    FBoundaryType: string;
    FBoundaryOffset: Single;
    FBoundaryOffset_Specified: boolean;
    FResponseTime: TXSDuration;
    FResponseTime_Specified: boolean;
    FExtension: IrCutFilterAutoAdjustmentExtension;
    FExtension_Specified: boolean;
    procedure SetBoundaryOffset(Index: Integer; const ASingle: Single);
    function  BoundaryOffset_Specified(Index: Integer): boolean;
    procedure SetResponseTime(Index: Integer; const ATXSDuration: TXSDuration);
    function  ResponseTime_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const AIrCutFilterAutoAdjustmentExtension: IrCutFilterAutoAdjustmentExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property BoundaryType:   string                              read FBoundaryType write FBoundaryType;
    property BoundaryOffset: Single                              Index (IS_OPTN) read FBoundaryOffset write SetBoundaryOffset stored BoundaryOffset_Specified;
    property ResponseTime:   TXSDuration                         Index (IS_OPTN) read FResponseTime write SetResponseTime stored ResponseTime_Specified;
    property Extension:      IrCutFilterAutoAdjustmentExtension  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : RelayOutputSettings, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  RelayOutputSettings = class(TRemotable)
  private
    FMode: RelayMode;
    FDelayTime: TXSDuration;
    FIdleState: RelayIdleState;
  public
    destructor Destroy; override;
  published
    property Mode:      RelayMode       read FMode write FMode;
    property DelayTime: TXSDuration     read FDelayTime write FDelayTime;
    property IdleState: RelayIdleState  read FIdleState write FIdleState;
  end;

  IntList    = array of Integer;                { "http://www.onvif.org/ver10/schema"[GblCplx] }


  // ************************************************************************ //
  // XML       : SecurityCapabilitiesExtension2, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  SecurityCapabilitiesExtension2 = class(TRemotable)
  private
    FDot1X: Boolean;
    FSupportedEAPMethod: IntList;
    FSupportedEAPMethod_Specified: boolean;
    FRemoteUserHandling: Boolean;
    procedure SetSupportedEAPMethod(Index: Integer; const AIntList: IntList);
    function  SupportedEAPMethod_Specified(Index: Integer): boolean;
  published
    property Dot1X:              Boolean  read FDot1X write FDot1X;
    property SupportedEAPMethod: IntList  Index (IS_OPTN or IS_UNBD) read FSupportedEAPMethod write SetSupportedEAPMethod stored SupportedEAPMethod_Specified;
    property RemoteUserHandling: Boolean  read FRemoteUserHandling write FRemoteUserHandling;
  end;



  // ************************************************************************ //
  // XML       : VideoSource, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  VideoSource = class(DeviceEntity)
  private
    FFramerate: Single;
    FResolution: VideoResolution;
    FImaging: ImagingSettings;
    FImaging_Specified: boolean;
    FExtension: VideoSourceExtension;
    FExtension_Specified: boolean;
    procedure SetImaging(Index: Integer; const AImagingSettings: ImagingSettings);
    function  Imaging_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const AVideoSourceExtension: VideoSourceExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Framerate:  Single                read FFramerate write FFramerate;
    property Resolution: VideoResolution       read FResolution write FResolution;
    property Imaging:    ImagingSettings       Index (IS_OPTN) read FImaging write SetImaging stored Imaging_Specified;
    property Extension:  VideoSourceExtension  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : NetworkInterface, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  NetworkInterface = class(DeviceEntity)
  private
    FEnabled: Boolean;
    FInfo: NetworkInterfaceInfo;
    FInfo_Specified: boolean;
    FLink: NetworkInterfaceLink;
    FLink_Specified: boolean;
    FIPv4: IPv4NetworkInterface;
    FIPv4_Specified: boolean;
    FIPv6: IPv6NetworkInterface;
    FIPv6_Specified: boolean;
    FExtension: NetworkInterfaceExtension;
    FExtension_Specified: boolean;
    procedure SetInfo(Index: Integer; const ANetworkInterfaceInfo: NetworkInterfaceInfo);
    function  Info_Specified(Index: Integer): boolean;
    procedure SetLink(Index: Integer; const ANetworkInterfaceLink: NetworkInterfaceLink);
    function  Link_Specified(Index: Integer): boolean;
    procedure SetIPv4(Index: Integer; const AIPv4NetworkInterface: IPv4NetworkInterface);
    function  IPv4_Specified(Index: Integer): boolean;
    procedure SetIPv6(Index: Integer; const AIPv6NetworkInterface: IPv6NetworkInterface);
    function  IPv6_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const ANetworkInterfaceExtension: NetworkInterfaceExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Enabled:   Boolean                    read FEnabled write FEnabled;
    property Info:      NetworkInterfaceInfo       Index (IS_OPTN) read FInfo write SetInfo stored Info_Specified;
    property Link:      NetworkInterfaceLink       Index (IS_OPTN) read FLink write SetLink stored Link_Specified;
    property IPv4:      IPv4NetworkInterface       Index (IS_OPTN) read FIPv4 write SetIPv4 stored IPv4_Specified;
    property IPv6:      IPv6NetworkInterface       Index (IS_OPTN) read FIPv6 write SetIPv6 stored IPv6_Specified;
    property Extension: NetworkInterfaceExtension  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : IPv6NetworkInterfaceSetConfiguration, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  IPv6NetworkInterfaceSetConfiguration = class(TRemotable)
  private
    FEnabled: Boolean;
    FEnabled_Specified: boolean;
    FAcceptRouterAdvert: Boolean;
    FAcceptRouterAdvert_Specified: boolean;
    FManual: Array_Of_PrefixedIPv6Address;
    FManual_Specified: boolean;
    FDHCP: IPv6DHCPConfiguration;
    FDHCP_Specified: boolean;
    procedure SetEnabled(Index: Integer; const ABoolean: Boolean);
    function  Enabled_Specified(Index: Integer): boolean;
    procedure SetAcceptRouterAdvert(Index: Integer; const ABoolean: Boolean);
    function  AcceptRouterAdvert_Specified(Index: Integer): boolean;
    procedure SetManual(Index: Integer; const AArray_Of_PrefixedIPv6Address: Array_Of_PrefixedIPv6Address);
    function  Manual_Specified(Index: Integer): boolean;
    procedure SetDHCP(Index: Integer; const AIPv6DHCPConfiguration: IPv6DHCPConfiguration);
    function  DHCP_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Enabled:            Boolean                       Index (IS_OPTN) read FEnabled write SetEnabled stored Enabled_Specified;
    property AcceptRouterAdvert: Boolean                       Index (IS_OPTN) read FAcceptRouterAdvert write SetAcceptRouterAdvert stored AcceptRouterAdvert_Specified;
    property Manual:             Array_Of_PrefixedIPv6Address  Index (IS_OPTN or IS_UNBD) read FManual write SetManual stored Manual_Specified;
    property DHCP:               IPv6DHCPConfiguration         Index (IS_OPTN) read FDHCP write SetDHCP stored DHCP_Specified;
  end;



  // ************************************************************************ //
  // XML       : PrefixedIPv6Address, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  PrefixedIPv6Address = class(TRemotable)
  private
    FAddress: IPv6Address;
    FPrefixLength: Integer;
  published
    property Address:      IPv6Address  read FAddress write FAddress;
    property PrefixLength: Integer      read FPrefixLength write FPrefixLength;
  end;



  // ************************************************************************ //
  // XML       : IPv6ConfigurationExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  IPv6ConfigurationExtension = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : IPv6Configuration, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  IPv6Configuration = class(TRemotable)
  private
    FAcceptRouterAdvert: Boolean;
    FAcceptRouterAdvert_Specified: boolean;
    FDHCP: IPv6DHCPConfiguration;
    FManual: Array_Of_PrefixedIPv6Address;
    FManual_Specified: boolean;
    FLinkLocal: Array_Of_PrefixedIPv6Address;
    FLinkLocal_Specified: boolean;
    FFromDHCP: Array_Of_PrefixedIPv6Address;
    FFromDHCP_Specified: boolean;
    FFromRA: Array_Of_PrefixedIPv6Address;
    FFromRA_Specified: boolean;
    FExtension: IPv6ConfigurationExtension;
    FExtension_Specified: boolean;
    procedure SetAcceptRouterAdvert(Index: Integer; const ABoolean: Boolean);
    function  AcceptRouterAdvert_Specified(Index: Integer): boolean;
    procedure SetManual(Index: Integer; const AArray_Of_PrefixedIPv6Address: Array_Of_PrefixedIPv6Address);
    function  Manual_Specified(Index: Integer): boolean;
    procedure SetLinkLocal(Index: Integer; const AArray_Of_PrefixedIPv6Address: Array_Of_PrefixedIPv6Address);
    function  LinkLocal_Specified(Index: Integer): boolean;
    procedure SetFromDHCP(Index: Integer; const AArray_Of_PrefixedIPv6Address: Array_Of_PrefixedIPv6Address);
    function  FromDHCP_Specified(Index: Integer): boolean;
    procedure SetFromRA(Index: Integer; const AArray_Of_PrefixedIPv6Address: Array_Of_PrefixedIPv6Address);
    function  FromRA_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const AIPv6ConfigurationExtension: IPv6ConfigurationExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property AcceptRouterAdvert: Boolean                       Index (IS_OPTN) read FAcceptRouterAdvert write SetAcceptRouterAdvert stored AcceptRouterAdvert_Specified;
    property DHCP:               IPv6DHCPConfiguration         read FDHCP write FDHCP;
    property Manual:             Array_Of_PrefixedIPv6Address  Index (IS_OPTN or IS_UNBD) read FManual write SetManual stored Manual_Specified;
    property LinkLocal:          Array_Of_PrefixedIPv6Address  Index (IS_OPTN or IS_UNBD) read FLinkLocal write SetLinkLocal stored LinkLocal_Specified;
    property FromDHCP:           Array_Of_PrefixedIPv6Address  Index (IS_OPTN or IS_UNBD) read FFromDHCP write SetFromDHCP stored FromDHCP_Specified;
    property FromRA:             Array_Of_PrefixedIPv6Address  Index (IS_OPTN or IS_UNBD) read FFromRA write SetFromRA stored FromRA_Specified;
    property Extension:          IPv6ConfigurationExtension    Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : IPv4Configuration, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  IPv4Configuration = class(TRemotable)
  private
    FManual: Array_Of_PrefixedIPv4Address;
    FManual_Specified: boolean;
    FLinkLocal: PrefixedIPv4Address;
    FLinkLocal_Specified: boolean;
    FFromDHCP: PrefixedIPv4Address;
    FFromDHCP_Specified: boolean;
    FDHCP: Boolean;
    procedure SetManual(Index: Integer; const AArray_Of_PrefixedIPv4Address: Array_Of_PrefixedIPv4Address);
    function  Manual_Specified(Index: Integer): boolean;
    procedure SetLinkLocal(Index: Integer; const APrefixedIPv4Address: PrefixedIPv4Address);
    function  LinkLocal_Specified(Index: Integer): boolean;
    procedure SetFromDHCP(Index: Integer; const APrefixedIPv4Address: PrefixedIPv4Address);
    function  FromDHCP_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Manual:    Array_Of_PrefixedIPv4Address  Index (IS_OPTN or IS_UNBD) read FManual write SetManual stored Manual_Specified;
    property LinkLocal: PrefixedIPv4Address           Index (IS_OPTN) read FLinkLocal write SetLinkLocal stored LinkLocal_Specified;
    property FromDHCP:  PrefixedIPv4Address           Index (IS_OPTN) read FFromDHCP write SetFromDHCP stored FromDHCP_Specified;
    property DHCP:      Boolean                       read FDHCP write FDHCP;
  end;

  IPv4Address     =  type string;      { "http://www.onvif.org/ver10/schema"[GblSmpl] }


  // ************************************************************************ //
  // XML       : NetworkHost, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  NetworkHost = class(TRemotable)
  private
    FType_: NetworkHostType;
    FIPv4Address: IPv4Address;
    FIPv4Address_Specified: boolean;
    FIPv6Address: IPv6Address;
    FIPv6Address_Specified: boolean;
    FDNSname: DNSName;
    FDNSname_Specified: boolean;
    FExtension: NetworkHostExtension;
    FExtension_Specified: boolean;
    procedure SetIPv4Address(Index: Integer; const AIPv4Address: IPv4Address);
    function  IPv4Address_Specified(Index: Integer): boolean;
    procedure SetIPv6Address(Index: Integer; const AIPv6Address: IPv6Address);
    function  IPv6Address_Specified(Index: Integer): boolean;
    procedure SetDNSname(Index: Integer; const ADNSName: DNSName);
    function  DNSname_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const ANetworkHostExtension: NetworkHostExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Type_:       NetworkHostType       read FType_ write FType_;
    property IPv4Address: IPv4Address           Index (IS_OPTN) read FIPv4Address write SetIPv4Address stored IPv4Address_Specified;
    property IPv6Address: IPv6Address           Index (IS_OPTN) read FIPv6Address write SetIPv6Address stored IPv6Address_Specified;
    property DNSname:     DNSName               Index (IS_OPTN) read FDNSname write SetDNSname stored DNSname_Specified;
    property Extension:   NetworkHostExtension  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : PrefixedIPv4Address, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  PrefixedIPv4Address = class(TRemotable)
  private
    FAddress: IPv4Address;
    FPrefixLength: Integer;
  published
    property Address:      IPv4Address  read FAddress write FAddress;
    property PrefixLength: Integer      read FPrefixLength write FPrefixLength;
  end;



  // ************************************************************************ //
  // XML       : IPAddress, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  IPAddress = class(TRemotable)
  private
    FType_: IPType;
    FIPv4Address: IPv4Address;
    FIPv4Address_Specified: boolean;
    FIPv6Address: IPv6Address;
    FIPv6Address_Specified: boolean;
    procedure SetIPv4Address(Index: Integer; const AIPv4Address: IPv4Address);
    function  IPv4Address_Specified(Index: Integer): boolean;
    procedure SetIPv6Address(Index: Integer; const AIPv6Address: IPv6Address);
    function  IPv6Address_Specified(Index: Integer): boolean;
  published
    property Type_:       IPType       read FType_ write FType_;
    property IPv4Address: IPv4Address  Index (IS_OPTN) read FIPv4Address write SetIPv4Address stored IPv4Address_Specified;
    property IPv6Address: IPv6Address  Index (IS_OPTN) read FIPv6Address write SetIPv6Address stored IPv6Address_Specified;
  end;

  Array_Of_IPv4Address = array of IPv4Address;   { "http://www.onvif.org/ver10/schema"[GblUbnd] }


  // ************************************************************************ //
  // XML       : NetworkZeroConfiguration, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  NetworkZeroConfiguration = class(TRemotable)
  private
    FInterfaceToken: ReferenceToken;
    FEnabled: Boolean;
    FAddresses: Array_Of_IPv4Address;
    FAddresses_Specified: boolean;
    FExtension: NetworkZeroConfigurationExtension;
    FExtension_Specified: boolean;
    procedure SetAddresses(Index: Integer; const AArray_Of_IPv4Address: Array_Of_IPv4Address);
    function  Addresses_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const ANetworkZeroConfigurationExtension: NetworkZeroConfigurationExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property InterfaceToken: ReferenceToken                     read FInterfaceToken write FInterfaceToken;
    property Enabled:        Boolean                            read FEnabled write FEnabled;
    property Addresses:      Array_Of_IPv4Address               Index (IS_OPTN or IS_UNBD) read FAddresses write SetAddresses stored Addresses_Specified;
    property Extension:      NetworkZeroConfigurationExtension  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : NetworkGateway, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  NetworkGateway = class(TRemotable)
  private
    FIPv4Address: Array_Of_IPv4Address;
    FIPv4Address_Specified: boolean;
    FIPv6Address: Array_Of_IPv6Address;
    FIPv6Address_Specified: boolean;
    procedure SetIPv4Address(Index: Integer; const AArray_Of_IPv4Address: Array_Of_IPv4Address);
    function  IPv4Address_Specified(Index: Integer): boolean;
    procedure SetIPv6Address(Index: Integer; const AArray_Of_IPv6Address: Array_Of_IPv6Address);
    function  IPv6Address_Specified(Index: Integer): boolean;
  published
    property IPv4Address: Array_Of_IPv4Address  Index (IS_OPTN or IS_UNBD) read FIPv4Address write SetIPv4Address stored IPv4Address_Specified;
    property IPv6Address: Array_Of_IPv6Address  Index (IS_OPTN or IS_UNBD) read FIPv6Address write SetIPv6Address stored IPv6Address_Specified;
  end;



  // ************************************************************************ //
  // XML       : SetNetworkDefaultGateway, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetNetworkDefaultGateway = class(TRemotable)
  private
    FIPv4Address: Array_Of_IPv4Address;
    FIPv4Address_Specified: boolean;
    FIPv6Address: Array_Of_IPv6Address;
    FIPv6Address_Specified: boolean;
    procedure SetIPv4Address(Index: Integer; const AArray_Of_IPv4Address: Array_Of_IPv4Address);
    function  IPv4Address_Specified(Index: Integer): boolean;
    procedure SetIPv6Address(Index: Integer; const AArray_Of_IPv6Address: Array_Of_IPv6Address);
    function  IPv6Address_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property IPv4Address: Array_Of_IPv4Address  Index (IS_OPTN or IS_UNBD) read FIPv4Address write SetIPv4Address stored IPv4Address_Specified;
    property IPv6Address: Array_Of_IPv6Address  Index (IS_OPTN or IS_UNBD) read FIPv6Address write SetIPv6Address stored IPv6Address_Specified;
  end;



  // ************************************************************************ //
  // XML       : NetworkProtocol, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  NetworkProtocol = class(TRemotable)
  private
    FName_: NetworkProtocolType;
    FEnabled: Boolean;
    FPort: IntList;
    FExtension: NetworkProtocolExtension;
    FExtension_Specified: boolean;
    procedure SetExtension(Index: Integer; const ANetworkProtocolExtension: NetworkProtocolExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Name_:     NetworkProtocolType       read FName_ write FName_;
    property Enabled:   Boolean                   read FEnabled write FEnabled;
    property Port:      IntList                   Index (IS_UNBD) read FPort write FPort;
    property Extension: NetworkProtocolExtension  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : NetworkProtocolExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  NetworkProtocolExtension = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : IPv6NetworkInterface, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  IPv6NetworkInterface = class(TRemotable)
  private
    FEnabled: Boolean;
    FConfig: IPv6Configuration;
    FConfig_Specified: boolean;
    procedure SetConfig(Index: Integer; const AIPv6Configuration: IPv6Configuration);
    function  Config_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Enabled: Boolean            read FEnabled write FEnabled;
    property Config:  IPv6Configuration  Index (IS_OPTN) read FConfig write SetConfig stored Config_Specified;
  end;

  IANA_IfTypes    =  type Integer;      { "http://www.onvif.org/ver10/schema"[GblSmpl] }


  // ************************************************************************ //
  // XML       : NetworkInterfaceExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  NetworkInterfaceExtension = class(TRemotable)
  private
    FInterfaceType: IANA_IfTypes;
    FDot3: Array_Of_Dot3Configuration;
    FDot3_Specified: boolean;
    FDot11: Array_Of_Dot11Configuration;
    FDot11_Specified: boolean;
    FExtension: NetworkInterfaceExtension2;
    FExtension_Specified: boolean;
    procedure SetDot3(Index: Integer; const AArray_Of_Dot3Configuration: Array_Of_Dot3Configuration);
    function  Dot3_Specified(Index: Integer): boolean;
    procedure SetDot11(Index: Integer; const AArray_Of_Dot11Configuration: Array_Of_Dot11Configuration);
    function  Dot11_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const ANetworkInterfaceExtension2: NetworkInterfaceExtension2);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property InterfaceType: IANA_IfTypes                 read FInterfaceType write FInterfaceType;
    property Dot3:          Array_Of_Dot3Configuration   Index (IS_OPTN or IS_UNBD) read FDot3 write SetDot3 stored Dot3_Specified;
    property Dot11:         Array_Of_Dot11Configuration  Index (IS_OPTN or IS_UNBD) read FDot11 write SetDot11 stored Dot11_Specified;
    property Extension:     NetworkInterfaceExtension2   Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : NetworkInterfaceLink, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  NetworkInterfaceLink = class(TRemotable)
  private
    FAdminSettings: NetworkInterfaceConnectionSetting;
    FOperSettings: NetworkInterfaceConnectionSetting;
    FInterfaceType: IANA_IfTypes;
  public
    destructor Destroy; override;
  published
    property AdminSettings: NetworkInterfaceConnectionSetting  read FAdminSettings write FAdminSettings;
    property OperSettings:  NetworkInterfaceConnectionSetting  read FOperSettings write FOperSettings;
    property InterfaceType: IANA_IfTypes                       read FInterfaceType write FInterfaceType;
  end;



  // ************************************************************************ //
  // XML       : IPv4NetworkInterface, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  IPv4NetworkInterface = class(TRemotable)
  private
    FEnabled: Boolean;
    FConfig: IPv4Configuration;
  public
    destructor Destroy; override;
  published
    property Enabled: Boolean            read FEnabled write FEnabled;
    property Config:  IPv4Configuration  read FConfig write FConfig;
  end;



  // ************************************************************************ //
  // XML       : NetworkInterfaceConnectionSetting, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  NetworkInterfaceConnectionSetting = class(TRemotable)
  private
    FAutoNegotiation: Boolean;
    FSpeed: Integer;
    FDuplex: Duplex;
  published
    property AutoNegotiation: Boolean  read FAutoNegotiation write FAutoNegotiation;
    property Speed:           Integer  read FSpeed write FSpeed;
    property Duplex:          Duplex   read FDuplex write FDuplex;
  end;

  HwAddress       =  type string;      { "http://www.onvif.org/ver10/schema"[GblSmpl] }


  // ************************************************************************ //
  // XML       : NetworkInterfaceInfo, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  NetworkInterfaceInfo = class(TRemotable)
  private
    FName_: string;
    FName__Specified: boolean;
    FHwAddress: HwAddress;
    FMTU: Integer;
    FMTU_Specified: boolean;
    procedure SetName_(Index: Integer; const Astring: string);
    function  Name__Specified(Index: Integer): boolean;
    procedure SetMTU(Index: Integer; const AInteger: Integer);
    function  MTU_Specified(Index: Integer): boolean;
  published
    property Name_:     string     Index (IS_OPTN) read FName_ write SetName_ stored Name__Specified;
    property HwAddress: HwAddress  read FHwAddress write FHwAddress;
    property MTU:       Integer    Index (IS_OPTN) read FMTU write SetMTU stored MTU_Specified;
  end;



  // ************************************************************************ //
  // XML       : Dot3Configuration, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  Dot3Configuration = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : Dot11Configuration, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  Dot11Configuration = class(TRemotable)
  private
    FSSID: Dot11SSIDType;
    FMode: Dot11StationMode;
    FAlias: Name_;
    FPriority: NetworkInterfaceConfigPriority;
    FSecurity: Dot11SecurityConfiguration;
  public
    destructor Destroy; override;
  published
    property SSID:     Dot11SSIDType                   read FSSID write FSSID;
    property Mode:     Dot11StationMode                read FMode write FMode;
    property Alias:    Name_                           read FAlias write FAlias;
    property Priority: NetworkInterfaceConfigPriority  read FPriority write FPriority;
    property Security: Dot11SecurityConfiguration      read FSecurity write FSecurity;
  end;



  // ************************************************************************ //
  // XML       : NetworkInterfaceExtension2, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  NetworkInterfaceExtension2 = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : Dot11Status, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  Dot11Status = class(TRemotable)
  private
    FSSID: Dot11SSIDType;
    FBSSID: string;
    FBSSID_Specified: boolean;
    FPairCipher: Dot11Cipher;
    FPairCipher_Specified: boolean;
    FGroupCipher: Dot11Cipher;
    FGroupCipher_Specified: boolean;
    FSignalStrength: Dot11SignalStrength;
    FSignalStrength_Specified: boolean;
    FActiveConfigAlias: ReferenceToken;
    procedure SetBSSID(Index: Integer; const Astring: string);
    function  BSSID_Specified(Index: Integer): boolean;
    procedure SetPairCipher(Index: Integer; const ADot11Cipher: Dot11Cipher);
    function  PairCipher_Specified(Index: Integer): boolean;
    procedure SetGroupCipher(Index: Integer; const ADot11Cipher: Dot11Cipher);
    function  GroupCipher_Specified(Index: Integer): boolean;
    procedure SetSignalStrength(Index: Integer; const ADot11SignalStrength: Dot11SignalStrength);
    function  SignalStrength_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property SSID:              Dot11SSIDType        read FSSID write FSSID;
    property BSSID:             string               Index (IS_OPTN) read FBSSID write SetBSSID stored BSSID_Specified;
    property PairCipher:        Dot11Cipher          Index (IS_OPTN) read FPairCipher write SetPairCipher stored PairCipher_Specified;
    property GroupCipher:       Dot11Cipher          Index (IS_OPTN) read FGroupCipher write SetGroupCipher stored GroupCipher_Specified;
    property SignalStrength:    Dot11SignalStrength  Index (IS_OPTN) read FSignalStrength write SetSignalStrength stored SignalStrength_Specified;
    property ActiveConfigAlias: ReferenceToken       read FActiveConfigAlias write FActiveConfigAlias;
  end;

  GetSystemBackupResponse = array of BackupFile;   { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }


  // ************************************************************************ //
  // XML       : GetSystemSupportInformation, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetSystemSupportInformation = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : GetSystemSupportInformationResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetSystemSupportInformationResponse = class(TRemotable)
  private
    FSupportInformation: SupportInformation;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property SupportInformation: SupportInformation  read FSupportInformation write FSupportInformation;
  end;

  RestoreSystem = array of BackupFile;          { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }


  // ************************************************************************ //
  // XML       : RestoreSystemResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  RestoreSystemResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : GetSystemBackup, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetSystemBackup = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;

  GetScopesResponse = array of Scope;           { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  SetScopes  = array of string;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }


  // ************************************************************************ //
  // XML       : SetScopesResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetScopesResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : GetSystemLog, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetSystemLog = class(TRemotable)
  private
    FLogType: SystemLogType;
  public
    constructor Create; override;
  published
    property LogType: SystemLogType  read FLogType write FLogType;
  end;



  // ************************************************************************ //
  // XML       : GetSystemLogResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetSystemLogResponse = class(TRemotable)
  private
    FSystemLog: SystemLog;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property SystemLog: SystemLog  read FSystemLog write FSystemLog;
  end;



  // ************************************************************************ //
  // XML       : GetScopes, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetScopes = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : SetSystemDateAndTimeResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetSystemDateAndTimeResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : GetSystemDateAndTime, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetSystemDateAndTime = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : GetSystemDateAndTimeResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetSystemDateAndTimeResponse = class(TRemotable)
  private
    FSystemDateAndTime: SystemDateTime;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property SystemDateAndTime: SystemDateTime  read FSystemDateAndTime write FSystemDateAndTime;
  end;



  // ************************************************************************ //
  // XML       : GetDeviceInformation, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetDeviceInformation = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : GetDeviceInformationResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetDeviceInformationResponse = class(TRemotable)
  private
    FManufacturer: string;
    FModel: string;
    FFirmwareVersion: string;
    FSerialNumber: string;
    FHardwareId: string;
  public
    constructor Create; override;
  published
    property Manufacturer:    string  read FManufacturer write FManufacturer;
    property Model:           string  read FModel write FModel;
    property FirmwareVersion: string  read FFirmwareVersion write FFirmwareVersion;
    property SerialNumber:    string  read FSerialNumber write FSerialNumber;
    property HardwareId:      string  read FHardwareId write FHardwareId;
  end;



  // ************************************************************************ //
  // XML       : SetSystemDateAndTime, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetSystemDateAndTime = class(TRemotable)
  private
    FDateTimeType: SetDateTimeType;
    FDaylightSavings: Boolean;
    FTimeZone: TimeZone;
    FTimeZone_Specified: boolean;
    FUTCDateTime: DateTime;
    FUTCDateTime_Specified: boolean;
    procedure SetTimeZone(Index: Integer; const ATimeZone: TimeZone);
    function  TimeZone_Specified(Index: Integer): boolean;
    procedure SetUTCDateTime(Index: Integer; const ADateTime: DateTime);
    function  UTCDateTime_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property DateTimeType:    SetDateTimeType  read FDateTimeType write FDateTimeType;
    property DaylightSavings: Boolean          read FDaylightSavings write FDaylightSavings;
    property TimeZone:        TimeZone         Index (IS_OPTN) read FTimeZone write SetTimeZone stored TimeZone_Specified;
    property UTCDateTime:     DateTime         Index (IS_OPTN) read FUTCDateTime write SetUTCDateTime stored UTCDateTime_Specified;
  end;



  // ************************************************************************ //
  // XML       : UpgradeSystemFirmwareResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UpgradeSystemFirmwareResponse = class(TRemotable)
  private
    FMessage_: string;
    FMessage__Specified: boolean;
    procedure SetMessage_(Index: Integer; const Astring: string);
    function  Message__Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property Message_: string  Index (IS_OPTN) read FMessage_ write SetMessage_ stored Message__Specified;
  end;



  // ************************************************************************ //
  // XML       : SystemReboot, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SystemReboot = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : SystemRebootResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SystemRebootResponse = class(TRemotable)
  private
    FMessage_: string;
  public
    constructor Create; override;
  published
    property Message_: string  read FMessage_ write FMessage_;
  end;



  // ************************************************************************ //
  // XML       : SetSystemFactoryDefaultResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetSystemFactoryDefaultResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : UpgradeSystemFirmware, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UpgradeSystemFirmware = class(TRemotable)
  private
    FFirmware: AttachmentData;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Firmware: AttachmentData  read FFirmware write FFirmware;
  end;

  AddScopes  = array of string;                 { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }


  // ************************************************************************ //
  // XML       : GetEndpointReference, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetEndpointReference = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : GetEndpointReferenceResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetEndpointReferenceResponse = class(TRemotable)
  private
    FGUID: string;
  public
    constructor Create; override;
  published
    property GUID: string  read FGUID write FGUID;
  end;



  // ************************************************************************ //
  // XML       : GetRemoteUser, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetRemoteUser = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;

  GetDPAddressesResponse = array of NetworkHost;   { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }


  // ************************************************************************ //
  // XML       : NTPInformation, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  NTPInformation = class(TRemotable)
  private
    FFromDHCP: Boolean;
    FNTPFromDHCP: GetDPAddressesResponse;
    FNTPFromDHCP_Specified: boolean;
    FNTPManual: GetDPAddressesResponse;
    FNTPManual_Specified: boolean;
    FExtension: NTPInformationExtension;
    FExtension_Specified: boolean;
    procedure SetNTPFromDHCP(Index: Integer; const AGetDPAddressesResponse: GetDPAddressesResponse);
    function  NTPFromDHCP_Specified(Index: Integer): boolean;
    procedure SetNTPManual(Index: Integer; const AGetDPAddressesResponse: GetDPAddressesResponse);
    function  NTPManual_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const ANTPInformationExtension: NTPInformationExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property FromDHCP:    Boolean                  read FFromDHCP write FFromDHCP;
    property NTPFromDHCP: GetDPAddressesResponse   Index (IS_OPTN or IS_UNBD) read FNTPFromDHCP write SetNTPFromDHCP stored NTPFromDHCP_Specified;
    property NTPManual:   GetDPAddressesResponse   Index (IS_OPTN or IS_UNBD) read FNTPManual write SetNTPManual stored NTPManual_Specified;
    property Extension:   NTPInformationExtension  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : SetNTP, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetNTP = class(TRemotable)
  private
    FFromDHCP: Boolean;
    FNTPManual: GetDPAddressesResponse;
    FNTPManual_Specified: boolean;
    procedure SetNTPManual(Index: Integer; const AGetDPAddressesResponse: GetDPAddressesResponse);
    function  NTPManual_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property FromDHCP:  Boolean                 read FFromDHCP write FFromDHCP;
    property NTPManual: GetDPAddressesResponse  Index (IS_OPTN or IS_UNBD) read FNTPManual write SetNTPManual stored NTPManual_Specified;
  end;

  SetDPAddresses = array of NetworkHost;        { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }


  // ************************************************************************ //
  // XML       : SetDPAddressesResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetDPAddressesResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : GetUsers, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetUsers = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;

  GetUsersResponse = array of User;             { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  CreateUsers = array of User;                  { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }


  // ************************************************************************ //
  // XML       : GetRemoteUserResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetRemoteUserResponse = class(TRemotable)
  private
    FRemoteUser: RemoteUser;
    FRemoteUser_Specified: boolean;
    procedure SetRemoteUser(Index: Integer; const ARemoteUser: RemoteUser);
    function  RemoteUser_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property RemoteUser: RemoteUser  Index (IS_OPTN) read FRemoteUser write SetRemoteUser stored RemoteUser_Specified;
  end;



  // ************************************************************************ //
  // XML       : SetRemoteUser, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetRemoteUser = class(TRemotable)
  private
    FRemoteUser: RemoteUser;
    FRemoteUser_Specified: boolean;
    procedure SetRemoteUser(Index: Integer; const ARemoteUser: RemoteUser);
    function  RemoteUser_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property RemoteUser: RemoteUser  Index (IS_OPTN) read FRemoteUser write SetRemoteUser stored RemoteUser_Specified;
  end;



  // ************************************************************************ //
  // XML       : SetRemoteUserResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetRemoteUserResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : GetDiscoveryMode, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetDiscoveryMode = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : AddScopesResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  AddScopesResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;

  RemoveScopes = array of string;               { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }
  RemoveScopesResponse = array of string;       { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }


  // ************************************************************************ //
  // XML       : SetRemoteDiscoveryModeResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetRemoteDiscoveryModeResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : GetDPAddresses, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetDPAddresses = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : SetDiscoveryModeResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetDiscoveryModeResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : GetRemoteDiscoveryMode, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetRemoteDiscoveryMode = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : DeviceIOCapabilities, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  DeviceIOCapabilities = class(TRemotable)
  private
    FXAddr: string;
    FVideoSources: Integer;
    FVideoOutputs: Integer;
    FAudioSources: Integer;
    FAudioOutputs: Integer;
    FRelayOutputs: Integer;
  published
    property XAddr:        string   read FXAddr write FXAddr;
    property VideoSources: Integer  read FVideoSources write FVideoSources;
    property VideoOutputs: Integer  read FVideoOutputs write FVideoOutputs;
    property AudioSources: Integer  read FAudioSources write FAudioSources;
    property AudioOutputs: Integer  read FAudioOutputs write FAudioOutputs;
    property RelayOutputs: Integer  read FRelayOutputs write FRelayOutputs;
  end;



  // ************************************************************************ //
  // XML       : DisplayCapabilities, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  DisplayCapabilities = class(TRemotable)
  private
    FXAddr: string;
    FFixedLayout: Boolean;
  published
    property XAddr:       string   read FXAddr write FXAddr;
    property FixedLayout: Boolean  read FFixedLayout write FFixedLayout;
  end;



  // ************************************************************************ //
  // XML       : RecordingCapabilities, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  RecordingCapabilities = class(TRemotable)
  private
    FXAddr: string;
    FReceiverSource: Boolean;
    FMediaProfileSource: Boolean;
    FDynamicRecordings: Boolean;
    FDynamicTracks: Boolean;
    FMaxStringLength: Integer;
  published
    property XAddr:              string   read FXAddr write FXAddr;
    property ReceiverSource:     Boolean  read FReceiverSource write FReceiverSource;
    property MediaProfileSource: Boolean  read FMediaProfileSource write FMediaProfileSource;
    property DynamicRecordings:  Boolean  read FDynamicRecordings write FDynamicRecordings;
    property DynamicTracks:      Boolean  read FDynamicTracks write FDynamicTracks;
    property MaxStringLength:    Integer  read FMaxStringLength write FMaxStringLength;
  end;



  // ************************************************************************ //
  // XML       : MediaCapabilities, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  MediaCapabilities = class(TRemotable)
  private
    FXAddr: string;
    FStreamingCapabilities: RealTimeStreamingCapabilities;
    FExtension: MediaCapabilitiesExtension;
    FExtension_Specified: boolean;
    procedure SetExtension(Index: Integer; const AMediaCapabilitiesExtension: MediaCapabilitiesExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property XAddr:                 string                         read FXAddr write FXAddr;
    property StreamingCapabilities: RealTimeStreamingCapabilities  read FStreamingCapabilities write FStreamingCapabilities;
    property Extension:             MediaCapabilitiesExtension     Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : PTZCapabilities, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  PTZCapabilities = class(TRemotable)
  private
    FXAddr: string;
  published
    property XAddr: string  read FXAddr write FXAddr;
  end;



  // ************************************************************************ //
  // XML       : CapabilitiesExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  CapabilitiesExtension = class(TRemotable)
  private
    FDeviceIO: DeviceIOCapabilities;
    FDeviceIO_Specified: boolean;
    FDisplay: DisplayCapabilities;
    FDisplay_Specified: boolean;
    FRecording: RecordingCapabilities;
    FRecording_Specified: boolean;
    FSearch: SearchCapabilities;
    FSearch_Specified: boolean;
    FReplay: ReplayCapabilities;
    FReplay_Specified: boolean;
    FReceiver: ReceiverCapabilities;
    FReceiver_Specified: boolean;
    FAnalyticsDevice: AnalyticsDeviceCapabilities;
    FAnalyticsDevice_Specified: boolean;
    FExtensions: CapabilitiesExtension2;
    FExtensions_Specified: boolean;
    procedure SetDeviceIO(Index: Integer; const ADeviceIOCapabilities: DeviceIOCapabilities);
    function  DeviceIO_Specified(Index: Integer): boolean;
    procedure SetDisplay(Index: Integer; const ADisplayCapabilities: DisplayCapabilities);
    function  Display_Specified(Index: Integer): boolean;
    procedure SetRecording(Index: Integer; const ARecordingCapabilities: RecordingCapabilities);
    function  Recording_Specified(Index: Integer): boolean;
    procedure SetSearch(Index: Integer; const ASearchCapabilities: SearchCapabilities);
    function  Search_Specified(Index: Integer): boolean;
    procedure SetReplay(Index: Integer; const AReplayCapabilities: ReplayCapabilities);
    function  Replay_Specified(Index: Integer): boolean;
    procedure SetReceiver(Index: Integer; const AReceiverCapabilities: ReceiverCapabilities);
    function  Receiver_Specified(Index: Integer): boolean;
    procedure SetAnalyticsDevice(Index: Integer; const AAnalyticsDeviceCapabilities: AnalyticsDeviceCapabilities);
    function  AnalyticsDevice_Specified(Index: Integer): boolean;
    procedure SetExtensions(Index: Integer; const ACapabilitiesExtension2: CapabilitiesExtension2);
    function  Extensions_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property DeviceIO:        DeviceIOCapabilities         Index (IS_OPTN) read FDeviceIO write SetDeviceIO stored DeviceIO_Specified;
    property Display:         DisplayCapabilities          Index (IS_OPTN) read FDisplay write SetDisplay stored Display_Specified;
    property Recording:       RecordingCapabilities        Index (IS_OPTN) read FRecording write SetRecording stored Recording_Specified;
    property Search:          SearchCapabilities           Index (IS_OPTN) read FSearch write SetSearch stored Search_Specified;
    property Replay:          ReplayCapabilities           Index (IS_OPTN) read FReplay write SetReplay stored Replay_Specified;
    property Receiver:        ReceiverCapabilities         Index (IS_OPTN) read FReceiver write SetReceiver stored Receiver_Specified;
    property AnalyticsDevice: AnalyticsDeviceCapabilities  Index (IS_OPTN) read FAnalyticsDevice write SetAnalyticsDevice stored AnalyticsDevice_Specified;
    property Extensions:      CapabilitiesExtension2       Index (IS_OPTN) read FExtensions write SetExtensions stored Extensions_Specified;
  end;



  // ************************************************************************ //
  // XML       : AnalyticsDeviceCapabilities, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  AnalyticsDeviceCapabilities = class(TRemotable)
  private
    FXAddr: string;
    FRuleSupport: Boolean;
    FRuleSupport_Specified: boolean;
    FExtension: AnalyticsDeviceExtension;
    FExtension_Specified: boolean;
    procedure SetRuleSupport(Index: Integer; const ABoolean: Boolean);
    function  RuleSupport_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const AAnalyticsDeviceExtension: AnalyticsDeviceExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property XAddr:       string                    read FXAddr write FXAddr;
    property RuleSupport: Boolean                   Index (IS_OPTN) read FRuleSupport write SetRuleSupport stored RuleSupport_Specified;
    property Extension:   AnalyticsDeviceExtension  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : CapabilitiesExtension2, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  CapabilitiesExtension2 = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : NetworkCapabilities, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  NetworkCapabilities = class(TRemotable)
  private
    FIPFilter: Boolean;
    FIPFilter_Specified: boolean;
    FZeroConfiguration: Boolean;
    FZeroConfiguration_Specified: boolean;
    FIPVersion6: Boolean;
    FIPVersion6_Specified: boolean;
    FDynDNS: Boolean;
    FDynDNS_Specified: boolean;
    FExtension: NetworkCapabilitiesExtension;
    FExtension_Specified: boolean;
    procedure SetIPFilter(Index: Integer; const ABoolean: Boolean);
    function  IPFilter_Specified(Index: Integer): boolean;
    procedure SetZeroConfiguration(Index: Integer; const ABoolean: Boolean);
    function  ZeroConfiguration_Specified(Index: Integer): boolean;
    procedure SetIPVersion6(Index: Integer; const ABoolean: Boolean);
    function  IPVersion6_Specified(Index: Integer): boolean;
    procedure SetDynDNS(Index: Integer; const ABoolean: Boolean);
    function  DynDNS_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const ANetworkCapabilitiesExtension: NetworkCapabilitiesExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property IPFilter:          Boolean                       Index (IS_OPTN) read FIPFilter write SetIPFilter stored IPFilter_Specified;
    property ZeroConfiguration: Boolean                       Index (IS_OPTN) read FZeroConfiguration write SetZeroConfiguration stored ZeroConfiguration_Specified;
    property IPVersion6:        Boolean                       Index (IS_OPTN) read FIPVersion6 write SetIPVersion6 stored IPVersion6_Specified;
    property DynDNS:            Boolean                       Index (IS_OPTN) read FDynDNS write SetDynDNS stored DynDNS_Specified;
    property Extension:         NetworkCapabilitiesExtension  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : SearchCapabilities, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  SearchCapabilities = class(TRemotable)
  private
    FXAddr: string;
    FMetadataSearch: Boolean;
  published
    property XAddr:          string   read FXAddr write FXAddr;
    property MetadataSearch: Boolean  read FMetadataSearch write FMetadataSearch;
  end;



  // ************************************************************************ //
  // XML       : ReplayCapabilities, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  ReplayCapabilities = class(TRemotable)
  private
    FXAddr: string;
  published
    property XAddr: string  read FXAddr write FXAddr;
  end;



  // ************************************************************************ //
  // XML       : ReceiverCapabilities, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  ReceiverCapabilities = class(TRemotable)
  private
    FXAddr: string;
    FRTP_Multicast: Boolean;
    FRTP_TCP: Boolean;
    FRTP_RTSP_TCP: Boolean;
    FSupportedReceivers: Integer;
    FMaximumRTSPURILength: Integer;
  published
    property XAddr:                string   read FXAddr write FXAddr;
    property RTP_Multicast:        Boolean  read FRTP_Multicast write FRTP_Multicast;
    property RTP_TCP:              Boolean  read FRTP_TCP write FRTP_TCP;
    property RTP_RTSP_TCP:         Boolean  read FRTP_RTSP_TCP write FRTP_RTSP_TCP;
    property SupportedReceivers:   Integer  read FSupportedReceivers write FSupportedReceivers;
    property MaximumRTSPURILength: Integer  read FMaximumRTSPURILength write FMaximumRTSPURILength;
  end;



  // ************************************************************************ //
  // XML       : Capabilities, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  Capabilities2 = class(TRemotable)
  private
    FAnalytics: AnalyticsCapabilities;
    FAnalytics_Specified: boolean;
    FDevice: DeviceCapabilities;
    FDevice_Specified: boolean;
    FEvents: EventCapabilities;
    FEvents_Specified: boolean;
    FImaging: ImagingCapabilities;
    FImaging_Specified: boolean;
    FMedia: MediaCapabilities;
    FMedia_Specified: boolean;
    FPTZ: PTZCapabilities;
    FPTZ_Specified: boolean;
    FExtension: CapabilitiesExtension;
    FExtension_Specified: boolean;
    procedure SetAnalytics(Index: Integer; const AAnalyticsCapabilities: AnalyticsCapabilities);
    function  Analytics_Specified(Index: Integer): boolean;
    procedure SetDevice(Index: Integer; const ADeviceCapabilities: DeviceCapabilities);
    function  Device_Specified(Index: Integer): boolean;
    procedure SetEvents(Index: Integer; const AEventCapabilities: EventCapabilities);
    function  Events_Specified(Index: Integer): boolean;
    procedure SetImaging(Index: Integer; const AImagingCapabilities: ImagingCapabilities);
    function  Imaging_Specified(Index: Integer): boolean;
    procedure SetMedia(Index: Integer; const AMediaCapabilities: MediaCapabilities);
    function  Media_Specified(Index: Integer): boolean;
    procedure SetPTZ(Index: Integer; const APTZCapabilities: PTZCapabilities);
    function  PTZ_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const ACapabilitiesExtension: CapabilitiesExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Analytics: AnalyticsCapabilities  Index (IS_OPTN) read FAnalytics write SetAnalytics stored Analytics_Specified;
    property Device:    DeviceCapabilities     Index (IS_OPTN) read FDevice write SetDevice stored Device_Specified;
    property Events:    EventCapabilities      Index (IS_OPTN) read FEvents write SetEvents stored Events_Specified;
    property Imaging:   ImagingCapabilities    Index (IS_OPTN) read FImaging write SetImaging stored Imaging_Specified;
    property Media:     MediaCapabilities      Index (IS_OPTN) read FMedia write SetMedia stored Media_Specified;
    property PTZ:       PTZCapabilities        Index (IS_OPTN) read FPTZ write SetPTZ stored PTZ_Specified;
    property Extension: CapabilitiesExtension  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetRemoteDiscoveryModeResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetRemoteDiscoveryModeResponse = class(TRemotable)
  private
    FRemoteDiscoveryMode: DiscoveryMode;
  public
    constructor Create; override;
  published
    property RemoteDiscoveryMode: DiscoveryMode  read FRemoteDiscoveryMode write FRemoteDiscoveryMode;
  end;



  // ************************************************************************ //
  // XML       : SetRemoteDiscoveryMode, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetRemoteDiscoveryMode = class(TRemotable)
  private
    FRemoteDiscoveryMode: DiscoveryMode;
  public
    constructor Create; override;
  published
    property RemoteDiscoveryMode: DiscoveryMode  read FRemoteDiscoveryMode write FRemoteDiscoveryMode;
  end;



  // ************************************************************************ //
  // XML       : SetDiscoveryMode, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetDiscoveryMode = class(TRemotable)
  private
    FDiscoveryMode: DiscoveryMode;
  public
    constructor Create; override;
  published
    property DiscoveryMode: DiscoveryMode  read FDiscoveryMode write FDiscoveryMode;
  end;



  // ************************************************************************ //
  // XML       : GetDiscoveryModeResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetDiscoveryModeResponse = class(TRemotable)
  private
    FDiscoveryMode: DiscoveryMode;
  public
    constructor Create; override;
  published
    property DiscoveryMode: DiscoveryMode  read FDiscoveryMode write FDiscoveryMode;
  end;



  // ************************************************************************ //
  // XML       : AnalyticsCapabilities, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  AnalyticsCapabilities = class(TRemotable)
  private
    FXAddr: string;
    FRuleSupport: Boolean;
    FAnalyticsModuleSupport: Boolean;
  published
    property XAddr:                  string   read FXAddr write FXAddr;
    property RuleSupport:            Boolean  read FRuleSupport write FRuleSupport;
    property AnalyticsModuleSupport: Boolean  read FAnalyticsModuleSupport write FAnalyticsModuleSupport;
  end;

  Array_Of_Dot11AuthAndMangementSuite = array of Dot11AuthAndMangementSuite;   { "http://www.onvif.org/ver10/schema"[GblUbnd] }


  // ************************************************************************ //
  // XML       : Dot11AvailableNetworks, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  Dot11AvailableNetworks = class(TRemotable)
  private
    FSSID: Dot11SSIDType;
    FBSSID: string;
    FBSSID_Specified: boolean;
    FAuthAndMangementSuite: Array_Of_Dot11AuthAndMangementSuite;
    FAuthAndMangementSuite_Specified: boolean;
    FPairCipher: Array_Of_Dot11Cipher;
    FPairCipher_Specified: boolean;
    FGroupCipher: Array_Of_Dot11Cipher;
    FGroupCipher_Specified: boolean;
    FSignalStrength: Dot11SignalStrength;
    FSignalStrength_Specified: boolean;
    FExtension: Dot11AvailableNetworksExtension;
    FExtension_Specified: boolean;
    procedure SetBSSID(Index: Integer; const Astring: string);
    function  BSSID_Specified(Index: Integer): boolean;
    procedure SetAuthAndMangementSuite(Index: Integer; const AArray_Of_Dot11AuthAndMangementSuite: Array_Of_Dot11AuthAndMangementSuite);
    function  AuthAndMangementSuite_Specified(Index: Integer): boolean;
    procedure SetPairCipher(Index: Integer; const AArray_Of_Dot11Cipher: Array_Of_Dot11Cipher);
    function  PairCipher_Specified(Index: Integer): boolean;
    procedure SetGroupCipher(Index: Integer; const AArray_Of_Dot11Cipher: Array_Of_Dot11Cipher);
    function  GroupCipher_Specified(Index: Integer): boolean;
    procedure SetSignalStrength(Index: Integer; const ADot11SignalStrength: Dot11SignalStrength);
    function  SignalStrength_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const ADot11AvailableNetworksExtension: Dot11AvailableNetworksExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property SSID:                  Dot11SSIDType                        read FSSID write FSSID;
    property BSSID:                 string                               Index (IS_OPTN) read FBSSID write SetBSSID stored BSSID_Specified;
    property AuthAndMangementSuite: Array_Of_Dot11AuthAndMangementSuite  Index (IS_OPTN or IS_UNBD) read FAuthAndMangementSuite write SetAuthAndMangementSuite stored AuthAndMangementSuite_Specified;
    property PairCipher:            Array_Of_Dot11Cipher                 Index (IS_OPTN or IS_UNBD) read FPairCipher write SetPairCipher stored PairCipher_Specified;
    property GroupCipher:           Array_Of_Dot11Cipher                 Index (IS_OPTN or IS_UNBD) read FGroupCipher write SetGroupCipher stored GroupCipher_Specified;
    property SignalStrength:        Dot11SignalStrength                  Index (IS_OPTN) read FSignalStrength write SetSignalStrength stored SignalStrength_Specified;
    property Extension:             Dot11AvailableNetworksExtension      Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : Dot11AvailableNetworksExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  Dot11AvailableNetworksExtension = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : DeviceCapabilities, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  DeviceCapabilities = class(TRemotable)
  private
    FXAddr: string;
    FNetwork: NetworkCapabilities;
    FNetwork_Specified: boolean;
    FSystem: SystemCapabilities;
    FSystem_Specified: boolean;
    FIO: IOCapabilities;
    FIO_Specified: boolean;
    FSecurity: SecurityCapabilities;
    FSecurity_Specified: boolean;
    FExtension: DeviceCapabilitiesExtension;
    FExtension_Specified: boolean;
    procedure SetNetwork(Index: Integer; const ANetworkCapabilities: NetworkCapabilities);
    function  Network_Specified(Index: Integer): boolean;
    procedure SetSystem(Index: Integer; const ASystemCapabilities: SystemCapabilities);
    function  System_Specified(Index: Integer): boolean;
    procedure SetIO(Index: Integer; const AIOCapabilities: IOCapabilities);
    function  IO_Specified(Index: Integer): boolean;
    procedure SetSecurity(Index: Integer; const ASecurityCapabilities: SecurityCapabilities);
    function  Security_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const ADeviceCapabilitiesExtension: DeviceCapabilitiesExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property XAddr:     string                       read FXAddr write FXAddr;
    property Network:   NetworkCapabilities          Index (IS_OPTN) read FNetwork write SetNetwork stored Network_Specified;
    property System:    SystemCapabilities           Index (IS_OPTN) read FSystem write SetSystem stored System_Specified;
    property IO:        IOCapabilities               Index (IS_OPTN) read FIO write SetIO stored IO_Specified;
    property Security:  SecurityCapabilities         Index (IS_OPTN) read FSecurity write SetSecurity stored Security_Specified;
    property Extension: DeviceCapabilitiesExtension  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : EventCapabilities, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  EventCapabilities = class(TRemotable)
  private
    FXAddr: string;
    FWSSubscriptionPolicySupport: Boolean;
    FWSPullPointSupport: Boolean;
    FWSPausableSubscriptionManagerInterfaceSupport: Boolean;
  published
    property XAddr:                                         string   read FXAddr write FXAddr;
    property WSSubscriptionPolicySupport:                   Boolean  read FWSSubscriptionPolicySupport write FWSSubscriptionPolicySupport;
    property WSPullPointSupport:                            Boolean  read FWSPullPointSupport write FWSPullPointSupport;
    property WSPausableSubscriptionManagerInterfaceSupport: Boolean  read FWSPausableSubscriptionManagerInterfaceSupport write FWSPausableSubscriptionManagerInterfaceSupport;
  end;



  // ************************************************************************ //
  // XML       : ImagingCapabilities, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  ImagingCapabilities = class(TRemotable)
  private
    FXAddr: string;
  published
    property XAddr: string  read FXAddr write FXAddr;
  end;

  GetCapabilities = array of CapabilityCategory;   { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }


  // ************************************************************************ //
  // XML       : SetSystemFactoryDefault, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetSystemFactoryDefault = class(TRemotable)
  private
    FFactoryDefault: FactoryDefaultType;
  public
    constructor Create; override;
  published
    property FactoryDefault: FactoryDefaultType  read FFactoryDefault write FFactoryDefault;
  end;



  // ************************************************************************ //
  // XML       : SetRelayOutputState, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetRelayOutputState = class(TRemotable)
  private
    FRelayOutputToken: ReferenceToken;
    FLogicalState: RelayLogicalState;
  public
    constructor Create; override;
  published
    property RelayOutputToken: ReferenceToken     read FRelayOutputToken write FRelayOutputToken;
    property LogicalState:     RelayLogicalState  read FLogicalState write FLogicalState;
  end;



  // ************************************************************************ //
  // XML       : SystemCapabilities, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  SystemCapabilities = class(TRemotable)
  private
    FDiscoveryResolve: Boolean;
    FDiscoveryBye: Boolean;
    FRemoteDiscovery: Boolean;
    FSystemBackup: Boolean;
    FSystemLogging: Boolean;
    FFirmwareUpgrade: Boolean;
    FSupportedVersions: Array_Of_OnvifVersion;
    FExtension: SystemCapabilitiesExtension;
    FExtension_Specified: boolean;
    procedure SetExtension(Index: Integer; const ASystemCapabilitiesExtension: SystemCapabilitiesExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property DiscoveryResolve:  Boolean                      read FDiscoveryResolve write FDiscoveryResolve;
    property DiscoveryBye:      Boolean                      read FDiscoveryBye write FDiscoveryBye;
    property RemoteDiscovery:   Boolean                      read FRemoteDiscovery write FRemoteDiscovery;
    property SystemBackup:      Boolean                      read FSystemBackup write FSystemBackup;
    property SystemLogging:     Boolean                      read FSystemLogging write FSystemLogging;
    property FirmwareUpgrade:   Boolean                      read FFirmwareUpgrade write FFirmwareUpgrade;
    property SupportedVersions: Array_Of_OnvifVersion        Index (IS_UNBD) read FSupportedVersions write FSupportedVersions;
    property Extension:         SystemCapabilitiesExtension  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : Extension, <complexType>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // ************************************************************************ //
  Extension2 = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : StorageConfiguration, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // ************************************************************************ //
  StorageConfiguration = class(DeviceEntity)
  private
    FData: StorageConfigurationData;
  public
    destructor Destroy; override;
  published
    property Data: StorageConfigurationData  read FData write FData;
  end;

  AuxiliaryData   =  type string;      { "http://www.onvif.org/ver10/schema"[GblSmpl] }
  Array_Of_AuxiliaryData = array of AuxiliaryData;   { "http://www.onvif.org/ver10/schema"[GblUbnd] }


  // ************************************************************************ //
  // XML       : PTZNode, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  PTZNode = class(DeviceEntity)
  private
    FFixedHomePosition: Boolean;
    FFixedHomePosition_Specified: boolean;
    FGeoMove: Boolean;
    FGeoMove_Specified: boolean;
    FName_: Name_;
    FName__Specified: boolean;
    FSupportedPTZSpaces: PTZSpaces;
    FMaximumNumberOfPresets: Integer;
    FHomeSupported: Boolean;
    FAuxiliaryCommands: Array_Of_AuxiliaryData;
    FAuxiliaryCommands_Specified: boolean;
    FExtension: PTZNodeExtension;
    FExtension_Specified: boolean;
    procedure SetFixedHomePosition(Index: Integer; const ABoolean: Boolean);
    function  FixedHomePosition_Specified(Index: Integer): boolean;
    procedure SetGeoMove(Index: Integer; const ABoolean: Boolean);
    function  GeoMove_Specified(Index: Integer): boolean;
    procedure SetName_(Index: Integer; const AName_: Name_);
    function  Name__Specified(Index: Integer): boolean;
    procedure SetAuxiliaryCommands(Index: Integer; const AArray_Of_AuxiliaryData: Array_Of_AuxiliaryData);
    function  AuxiliaryCommands_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const APTZNodeExtension: PTZNodeExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property FixedHomePosition:      Boolean                 Index (IS_ATTR or IS_OPTN) read FFixedHomePosition write SetFixedHomePosition stored FixedHomePosition_Specified;
    property GeoMove:                Boolean                 Index (IS_ATTR or IS_OPTN) read FGeoMove write SetGeoMove stored GeoMove_Specified;
    property Name_:                  Name_                   Index (IS_OPTN) read FName_ write SetName_ stored Name__Specified;
    property SupportedPTZSpaces:     PTZSpaces               read FSupportedPTZSpaces write FSupportedPTZSpaces;
    property MaximumNumberOfPresets: Integer                 read FMaximumNumberOfPresets write FMaximumNumberOfPresets;
    property HomeSupported:          Boolean                 read FHomeSupported write FHomeSupported;
    property AuxiliaryCommands:      Array_Of_AuxiliaryData  Index (IS_OPTN or IS_UNBD) read FAuxiliaryCommands write SetAuxiliaryCommands stored AuxiliaryCommands_Specified;
    property Extension:              PTZNodeExtension        Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : SendAuxiliaryCommandResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SendAuxiliaryCommandResponse = class(TRemotable)
  private
    FAuxiliaryCommandResponse: AuxiliaryData;
    FAuxiliaryCommandResponse_Specified: boolean;
    procedure SetAuxiliaryCommandResponse(Index: Integer; const AAuxiliaryData: AuxiliaryData);
    function  AuxiliaryCommandResponse_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property AuxiliaryCommandResponse: AuxiliaryData  Index (IS_OPTN) read FAuxiliaryCommandResponse write SetAuxiliaryCommandResponse stored AuxiliaryCommandResponse_Specified;
  end;



  // ************************************************************************ //
  // XML       : SendAuxiliaryCommand, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SendAuxiliaryCommand = class(TRemotable)
  private
    FAuxiliaryCommand: AuxiliaryData;
  public
    constructor Create; override;
  published
    property AuxiliaryCommand: AuxiliaryData  read FAuxiliaryCommand write FAuxiliaryCommand;
  end;



  // ************************************************************************ //
  // XML       : UserCredential, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // ************************************************************************ //
  UserCredential = class(TRemotable)
  private
    FUserName: string;
    FPassword: string;
    FPassword_Specified: boolean;
    FExtension: Extension3;
    FExtension_Specified: boolean;
    procedure SetPassword(Index: Integer; const Astring: string);
    function  Password_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const AExtension3: Extension3);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property UserName:  string      read FUserName write FUserName;
    property Password:  string      Index (IS_OPTN) read FPassword write SetPassword stored Password_Specified;
    property Extension: Extension3  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : Extension, <complexType>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // ************************************************************************ //
  Extension3 = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : StorageConfigurationData, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // ************************************************************************ //
  StorageConfigurationData = class(TRemotable)
  private
    Ftype_: string;
    FLocalPath: string;
    FLocalPath_Specified: boolean;
    FStorageUri: string;
    FStorageUri_Specified: boolean;
    FUser: UserCredential;
    FUser_Specified: boolean;
    FExtension: Extension2;
    FExtension_Specified: boolean;
    procedure SetLocalPath(Index: Integer; const Astring: string);
    function  LocalPath_Specified(Index: Integer): boolean;
    procedure SetStorageUri(Index: Integer; const Astring: string);
    function  StorageUri_Specified(Index: Integer): boolean;
    procedure SetUser(Index: Integer; const AUserCredential: UserCredential);
    function  User_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const AExtension2: Extension2);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property type_:      string          Index (IS_ATTR) read Ftype_ write Ftype_;
    property LocalPath:  string          Index (IS_OPTN) read FLocalPath write SetLocalPath stored LocalPath_Specified;
    property StorageUri: string          Index (IS_OPTN) read FStorageUri write SetStorageUri stored StorageUri_Specified;
    property User:       UserCredential  Index (IS_OPTN) read FUser write SetUser stored User_Specified;
    property Extension:  Extension2      Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetServiceCapabilities, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetServiceCapabilities = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : GetServiceCapabilitiesResponse, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetServiceCapabilitiesResponse = class(TRemotable)
  private
    FCapabilities: DeviceServiceCapabilities;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Capabilities: DeviceServiceCapabilities  read FCapabilities write FCapabilities;
  end;



  // ************************************************************************ //
  // XML       : IOCapabilitiesExtension2, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  IOCapabilitiesExtension2 = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : GetServices, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetServices = class(TRemotable)
  private
    FIncludeCapability: Boolean;
  public
    constructor Create; override;
  published
    property IncludeCapability: Boolean  read FIncludeCapability write FIncludeCapability;
  end;

  GetServicesResponse = array of Service;       { "http://www.onvif.org/ver10/device/wsdl"[Lit][GblElm] }


  // ************************************************************************ //
  // XML       : IOCapabilitiesExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  IOCapabilitiesExtension = class(TRemotable)
  private
    FAuxiliary: Boolean;
    FAuxiliary_Specified: boolean;
    FAuxiliaryCommands: Array_Of_AuxiliaryData;
    FAuxiliaryCommands_Specified: boolean;
    FExtension: IOCapabilitiesExtension2;
    procedure SetAuxiliary(Index: Integer; const ABoolean: Boolean);
    function  Auxiliary_Specified(Index: Integer): boolean;
    procedure SetAuxiliaryCommands(Index: Integer; const AArray_Of_AuxiliaryData: Array_Of_AuxiliaryData);
    function  AuxiliaryCommands_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Auxiliary:         Boolean                   Index (IS_OPTN) read FAuxiliary write SetAuxiliary stored Auxiliary_Specified;
    property AuxiliaryCommands: Array_Of_AuxiliaryData    Index (IS_OPTN or IS_UNBD) read FAuxiliaryCommands write SetAuxiliaryCommands stored AuxiliaryCommands_Specified;
    property Extension:         IOCapabilitiesExtension2  read FExtension write FExtension;
  end;



  // ************************************************************************ //
  // XML       : Service, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // ************************************************************************ //
  Service = class(TRemotable)
  private
    FNamespace: string;
    FXAddr: string;
    FCapabilities: Capabilities3;
    FCapabilities_Specified: boolean;
    FVersion: OnvifVersion;
    procedure SetCapabilities(Index: Integer; const ACapabilities3: Capabilities3);
    function  Capabilities_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Namespace:    string         read FNamespace write FNamespace;
    property XAddr:        string         read FXAddr write FXAddr;
    property Capabilities: Capabilities3  Index (IS_OPTN) read FCapabilities write SetCapabilities stored Capabilities_Specified;
    property Version:      OnvifVersion   read FVersion write FVersion;
  end;



  // ************************************************************************ //
  // XML       : Capabilities, <complexType>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // ************************************************************************ //
  Capabilities3 = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : IOCapabilities, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  IOCapabilities = class(TRemotable)
  private
    FInputConnectors: Integer;
    FInputConnectors_Specified: boolean;
    FRelayOutputs: Integer;
    FRelayOutputs_Specified: boolean;
    FExtension: IOCapabilitiesExtension;
    FExtension_Specified: boolean;
    procedure SetInputConnectors(Index: Integer; const AInteger: Integer);
    function  InputConnectors_Specified(Index: Integer): boolean;
    procedure SetRelayOutputs(Index: Integer; const AInteger: Integer);
    function  RelayOutputs_Specified(Index: Integer): boolean;
    procedure SetExtension(Index: Integer; const AIOCapabilitiesExtension: IOCapabilitiesExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property InputConnectors: Integer                  Index (IS_OPTN) read FInputConnectors write SetInputConnectors stored InputConnectors_Specified;
    property RelayOutputs:    Integer                  Index (IS_OPTN) read FRelayOutputs write SetRelayOutputs stored RelayOutputs_Specified;
    property Extension:       IOCapabilitiesExtension  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : SecurityCapabilities, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  SecurityCapabilities = class(TRemotable)
  private
    FTLS1_1: Boolean;
    FTLS1_2: Boolean;
    FOnboardKeyGeneration: Boolean;
    FAccessPolicyConfig: Boolean;
    FX_509Token: Boolean;
    FSAMLToken: Boolean;
    FKerberosToken: Boolean;
    FRELToken: Boolean;
    FExtension: SecurityCapabilitiesExtension;
    FExtension_Specified: boolean;
    procedure SetExtension(Index: Integer; const ASecurityCapabilitiesExtension: SecurityCapabilitiesExtension);
    function  Extension_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property TLS1_1:               Boolean                        read FTLS1_1 write FTLS1_1;
    property TLS1_2:               Boolean                        read FTLS1_2 write FTLS1_2;
    property OnboardKeyGeneration: Boolean                        read FOnboardKeyGeneration write FOnboardKeyGeneration;
    property AccessPolicyConfig:   Boolean                        read FAccessPolicyConfig write FAccessPolicyConfig;
    property X_509Token:           Boolean                        read FX_509Token write FX_509Token;
    property SAMLToken:            Boolean                        read FSAMLToken write FSAMLToken;
    property KerberosToken:        Boolean                        read FKerberosToken write FKerberosToken;
    property RELToken:             Boolean                        read FRELToken write FRELToken;
    property Extension:            SecurityCapabilitiesExtension  Index (IS_OPTN) read FExtension write SetExtension stored Extension_Specified;
  end;



  // ************************************************************************ //
  // XML       : DeviceCapabilitiesExtension, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/schema
  // ************************************************************************ //
  DeviceCapabilitiesExtension = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : SystemCapabilities, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // ************************************************************************ //
  SystemCapabilities2 = class(TRemotable)
  private
    FDiscoveryResolve: Boolean;
    FDiscoveryResolve_Specified: boolean;
    FDiscoveryBye: Boolean;
    FDiscoveryBye_Specified: boolean;
    FRemoteDiscovery: Boolean;
    FRemoteDiscovery_Specified: boolean;
    FSystemBackup: Boolean;
    FSystemBackup_Specified: boolean;
    FSystemLogging: Boolean;
    FSystemLogging_Specified: boolean;
    FFirmwareUpgrade: Boolean;
    FFirmwareUpgrade_Specified: boolean;
    FHttpFirmwareUpgrade: Boolean;
    FHttpFirmwareUpgrade_Specified: boolean;
    FHttpSystemBackup: Boolean;
    FHttpSystemBackup_Specified: boolean;
    FHttpSystemLogging: Boolean;
    FHttpSystemLogging_Specified: boolean;
    FHttpSupportInformation: Boolean;
    FHttpSupportInformation_Specified: boolean;
    FStorageConfiguration: Boolean;
    FStorageConfiguration_Specified: boolean;
    FMaxStorageConfigurations: Integer;
    FMaxStorageConfigurations_Specified: boolean;
    FGeoLocationEntries: Integer;
    FGeoLocationEntries_Specified: boolean;
    FAutoGeo: StringAttrList;
    FAutoGeo_Specified: boolean;
    FStorageTypesSupported: StringAttrList;
    FStorageTypesSupported_Specified: boolean;
    procedure SetDiscoveryResolve(Index: Integer; const ABoolean: Boolean);
    function  DiscoveryResolve_Specified(Index: Integer): boolean;
    procedure SetDiscoveryBye(Index: Integer; const ABoolean: Boolean);
    function  DiscoveryBye_Specified(Index: Integer): boolean;
    procedure SetRemoteDiscovery(Index: Integer; const ABoolean: Boolean);
    function  RemoteDiscovery_Specified(Index: Integer): boolean;
    procedure SetSystemBackup(Index: Integer; const ABoolean: Boolean);
    function  SystemBackup_Specified(Index: Integer): boolean;
    procedure SetSystemLogging(Index: Integer; const ABoolean: Boolean);
    function  SystemLogging_Specified(Index: Integer): boolean;
    procedure SetFirmwareUpgrade(Index: Integer; const ABoolean: Boolean);
    function  FirmwareUpgrade_Specified(Index: Integer): boolean;
    procedure SetHttpFirmwareUpgrade(Index: Integer; const ABoolean: Boolean);
    function  HttpFirmwareUpgrade_Specified(Index: Integer): boolean;
    procedure SetHttpSystemBackup(Index: Integer; const ABoolean: Boolean);
    function  HttpSystemBackup_Specified(Index: Integer): boolean;
    procedure SetHttpSystemLogging(Index: Integer; const ABoolean: Boolean);
    function  HttpSystemLogging_Specified(Index: Integer): boolean;
    procedure SetHttpSupportInformation(Index: Integer; const ABoolean: Boolean);
    function  HttpSupportInformation_Specified(Index: Integer): boolean;
    procedure SetStorageConfiguration(Index: Integer; const ABoolean: Boolean);
    function  StorageConfiguration_Specified(Index: Integer): boolean;
    procedure SetMaxStorageConfigurations(Index: Integer; const AInteger: Integer);
    function  MaxStorageConfigurations_Specified(Index: Integer): boolean;
    procedure SetGeoLocationEntries(Index: Integer; const AInteger: Integer);
    function  GeoLocationEntries_Specified(Index: Integer): boolean;
    procedure SetAutoGeo(Index: Integer; const AStringAttrList: StringAttrList);
    function  AutoGeo_Specified(Index: Integer): boolean;
    procedure SetStorageTypesSupported(Index: Integer; const AStringAttrList: StringAttrList);
    function  StorageTypesSupported_Specified(Index: Integer): boolean;
  published
    property DiscoveryResolve:         Boolean         Index (IS_ATTR or IS_OPTN) read FDiscoveryResolve write SetDiscoveryResolve stored DiscoveryResolve_Specified;
    property DiscoveryBye:             Boolean         Index (IS_ATTR or IS_OPTN) read FDiscoveryBye write SetDiscoveryBye stored DiscoveryBye_Specified;
    property RemoteDiscovery:          Boolean         Index (IS_ATTR or IS_OPTN) read FRemoteDiscovery write SetRemoteDiscovery stored RemoteDiscovery_Specified;
    property SystemBackup:             Boolean         Index (IS_ATTR or IS_OPTN) read FSystemBackup write SetSystemBackup stored SystemBackup_Specified;
    property SystemLogging:            Boolean         Index (IS_ATTR or IS_OPTN) read FSystemLogging write SetSystemLogging stored SystemLogging_Specified;
    property FirmwareUpgrade:          Boolean         Index (IS_ATTR or IS_OPTN) read FFirmwareUpgrade write SetFirmwareUpgrade stored FirmwareUpgrade_Specified;
    property HttpFirmwareUpgrade:      Boolean         Index (IS_ATTR or IS_OPTN) read FHttpFirmwareUpgrade write SetHttpFirmwareUpgrade stored HttpFirmwareUpgrade_Specified;
    property HttpSystemBackup:         Boolean         Index (IS_ATTR or IS_OPTN) read FHttpSystemBackup write SetHttpSystemBackup stored HttpSystemBackup_Specified;
    property HttpSystemLogging:        Boolean         Index (IS_ATTR or IS_OPTN) read FHttpSystemLogging write SetHttpSystemLogging stored HttpSystemLogging_Specified;
    property HttpSupportInformation:   Boolean         Index (IS_ATTR or IS_OPTN) read FHttpSupportInformation write SetHttpSupportInformation stored HttpSupportInformation_Specified;
    property StorageConfiguration:     Boolean         Index (IS_ATTR or IS_OPTN) read FStorageConfiguration write SetStorageConfiguration stored StorageConfiguration_Specified;
    property MaxStorageConfigurations: Integer         Index (IS_ATTR or IS_OPTN) read FMaxStorageConfigurations write SetMaxStorageConfigurations stored MaxStorageConfigurations_Specified;
    property GeoLocationEntries:       Integer         Index (IS_ATTR or IS_OPTN) read FGeoLocationEntries write SetGeoLocationEntries stored GeoLocationEntries_Specified;
    property AutoGeo:                  StringAttrList  Index (IS_ATTR or IS_OPTN) read FAutoGeo write SetAutoGeo stored AutoGeo_Specified;
    property StorageTypesSupported:    StringAttrList  Index (IS_ATTR or IS_OPTN) read FStorageTypesSupported write SetStorageTypesSupported stored StorageTypesSupported_Specified;
  end;



  // ************************************************************************ //
  // XML       : MiscCapabilities, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // ************************************************************************ //
  MiscCapabilities = class(TRemotable)
  private
    FAuxiliaryCommands: StringAttrList;
    FAuxiliaryCommands_Specified: boolean;
    procedure SetAuxiliaryCommands(Index: Integer; const AStringAttrList: StringAttrList);
    function  AuxiliaryCommands_Specified(Index: Integer): boolean;
  published
    property AuxiliaryCommands: StringAttrList  Index (IS_ATTR or IS_OPTN) read FAuxiliaryCommands write SetAuxiliaryCommands stored AuxiliaryCommands_Specified;
  end;

  EAPMethodTypes  =  type string;      { "http://www.onvif.org/ver10/device/wsdl"[GblSmpl] }


  // ************************************************************************ //
  // XML       : DeviceServiceCapabilities, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // ************************************************************************ //
  DeviceServiceCapabilities = class(TRemotable)
  private
    FNetwork: NetworkCapabilities2;
    FSecurity: SecurityCapabilities2;
    FSystem: SystemCapabilities2;
    FMisc: MiscCapabilities;
    FMisc_Specified: boolean;
    procedure SetMisc(Index: Integer; const AMiscCapabilities: MiscCapabilities);
    function  Misc_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Network:  NetworkCapabilities2   read FNetwork write FNetwork;
    property Security: SecurityCapabilities2  read FSecurity write FSecurity;
    property System:   SystemCapabilities2    read FSystem write FSystem;
    property Misc:     MiscCapabilities       Index (IS_OPTN) read FMisc write SetMisc stored Misc_Specified;
  end;



  // ************************************************************************ //
  // XML       : Capabilities, global, <element>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // ************************************************************************ //
  Capabilities = class(DeviceServiceCapabilities)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : NetworkCapabilities, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // ************************************************************************ //
  NetworkCapabilities2 = class(TRemotable)
  private
    FIPFilter: Boolean;
    FIPFilter_Specified: boolean;
    FZeroConfiguration: Boolean;
    FZeroConfiguration_Specified: boolean;
    FIPVersion6: Boolean;
    FIPVersion6_Specified: boolean;
    FDynDNS: Boolean;
    FDynDNS_Specified: boolean;
    FDot11Configuration: Boolean;
    FDot11Configuration_Specified: boolean;
    FDot1XConfigurations: Integer;
    FDot1XConfigurations_Specified: boolean;
    FHostnameFromDHCP: Boolean;
    FHostnameFromDHCP_Specified: boolean;
    FNTP: Integer;
    FNTP_Specified: boolean;
    FDHCPv6: Boolean;
    FDHCPv6_Specified: boolean;
    procedure SetIPFilter(Index: Integer; const ABoolean: Boolean);
    function  IPFilter_Specified(Index: Integer): boolean;
    procedure SetZeroConfiguration(Index: Integer; const ABoolean: Boolean);
    function  ZeroConfiguration_Specified(Index: Integer): boolean;
    procedure SetIPVersion6(Index: Integer; const ABoolean: Boolean);
    function  IPVersion6_Specified(Index: Integer): boolean;
    procedure SetDynDNS(Index: Integer; const ABoolean: Boolean);
    function  DynDNS_Specified(Index: Integer): boolean;
    procedure SetDot11Configuration(Index: Integer; const ABoolean: Boolean);
    function  Dot11Configuration_Specified(Index: Integer): boolean;
    procedure SetDot1XConfigurations(Index: Integer; const AInteger: Integer);
    function  Dot1XConfigurations_Specified(Index: Integer): boolean;
    procedure SetHostnameFromDHCP(Index: Integer; const ABoolean: Boolean);
    function  HostnameFromDHCP_Specified(Index: Integer): boolean;
    procedure SetNTP(Index: Integer; const AInteger: Integer);
    function  NTP_Specified(Index: Integer): boolean;
    procedure SetDHCPv6(Index: Integer; const ABoolean: Boolean);
    function  DHCPv6_Specified(Index: Integer): boolean;
  published
    property IPFilter:            Boolean  Index (IS_ATTR or IS_OPTN) read FIPFilter write SetIPFilter stored IPFilter_Specified;
    property ZeroConfiguration:   Boolean  Index (IS_ATTR or IS_OPTN) read FZeroConfiguration write SetZeroConfiguration stored ZeroConfiguration_Specified;
    property IPVersion6:          Boolean  Index (IS_ATTR or IS_OPTN) read FIPVersion6 write SetIPVersion6 stored IPVersion6_Specified;
    property DynDNS:              Boolean  Index (IS_ATTR or IS_OPTN) read FDynDNS write SetDynDNS stored DynDNS_Specified;
    property Dot11Configuration:  Boolean  Index (IS_ATTR or IS_OPTN) read FDot11Configuration write SetDot11Configuration stored Dot11Configuration_Specified;
    property Dot1XConfigurations: Integer  Index (IS_ATTR or IS_OPTN) read FDot1XConfigurations write SetDot1XConfigurations stored Dot1XConfigurations_Specified;
    property HostnameFromDHCP:    Boolean  Index (IS_ATTR or IS_OPTN) read FHostnameFromDHCP write SetHostnameFromDHCP stored HostnameFromDHCP_Specified;
    property NTP:                 Integer  Index (IS_ATTR or IS_OPTN) read FNTP write SetNTP stored NTP_Specified;
    property DHCPv6:              Boolean  Index (IS_ATTR or IS_OPTN) read FDHCPv6 write SetDHCPv6 stored DHCPv6_Specified;
  end;



  // ************************************************************************ //
  // XML       : SecurityCapabilities, global, <complexType>
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // ************************************************************************ //
  SecurityCapabilities2 = class(TRemotable)
  private
    FTLS1_0: Boolean;
    FTLS1_0_Specified: boolean;
    FTLS1_1: Boolean;
    FTLS1_1_Specified: boolean;
    FTLS1_2: Boolean;
    FTLS1_2_Specified: boolean;
    FOnboardKeyGeneration: Boolean;
    FOnboardKeyGeneration_Specified: boolean;
    FAccessPolicyConfig: Boolean;
    FAccessPolicyConfig_Specified: boolean;
    FDefaultAccessPolicy: Boolean;
    FDefaultAccessPolicy_Specified: boolean;
    FDot1X: Boolean;
    FDot1X_Specified: boolean;
    FRemoteUserHandling: Boolean;
    FRemoteUserHandling_Specified: boolean;
    FX_509Token: Boolean;
    FX_509Token_Specified: boolean;
    FSAMLToken: Boolean;
    FSAMLToken_Specified: boolean;
    FKerberosToken: Boolean;
    FKerberosToken_Specified: boolean;
    FUsernameToken: Boolean;
    FUsernameToken_Specified: boolean;
    FHttpDigest: Boolean;
    FHttpDigest_Specified: boolean;
    FRELToken: Boolean;
    FRELToken_Specified: boolean;
    FSupportedEAPMethods: EAPMethodTypes;
    FSupportedEAPMethods_Specified: boolean;
    FMaxUsers: Integer;
    FMaxUsers_Specified: boolean;
    FMaxUserNameLength: Integer;
    FMaxUserNameLength_Specified: boolean;
    FMaxPasswordLength: Integer;
    FMaxPasswordLength_Specified: boolean;
    procedure SetTLS1_0(Index: Integer; const ABoolean: Boolean);
    function  TLS1_0_Specified(Index: Integer): boolean;
    procedure SetTLS1_1(Index: Integer; const ABoolean: Boolean);
    function  TLS1_1_Specified(Index: Integer): boolean;
    procedure SetTLS1_2(Index: Integer; const ABoolean: Boolean);
    function  TLS1_2_Specified(Index: Integer): boolean;
    procedure SetOnboardKeyGeneration(Index: Integer; const ABoolean: Boolean);
    function  OnboardKeyGeneration_Specified(Index: Integer): boolean;
    procedure SetAccessPolicyConfig(Index: Integer; const ABoolean: Boolean);
    function  AccessPolicyConfig_Specified(Index: Integer): boolean;
    procedure SetDefaultAccessPolicy(Index: Integer; const ABoolean: Boolean);
    function  DefaultAccessPolicy_Specified(Index: Integer): boolean;
    procedure SetDot1X(Index: Integer; const ABoolean: Boolean);
    function  Dot1X_Specified(Index: Integer): boolean;
    procedure SetRemoteUserHandling(Index: Integer; const ABoolean: Boolean);
    function  RemoteUserHandling_Specified(Index: Integer): boolean;
    procedure SetX_509Token(Index: Integer; const ABoolean: Boolean);
    function  X_509Token_Specified(Index: Integer): boolean;
    procedure SetSAMLToken(Index: Integer; const ABoolean: Boolean);
    function  SAMLToken_Specified(Index: Integer): boolean;
    procedure SetKerberosToken(Index: Integer; const ABoolean: Boolean);
    function  KerberosToken_Specified(Index: Integer): boolean;
    procedure SetUsernameToken(Index: Integer; const ABoolean: Boolean);
    function  UsernameToken_Specified(Index: Integer): boolean;
    procedure SetHttpDigest(Index: Integer; const ABoolean: Boolean);
    function  HttpDigest_Specified(Index: Integer): boolean;
    procedure SetRELToken(Index: Integer; const ABoolean: Boolean);
    function  RELToken_Specified(Index: Integer): boolean;
    procedure SetSupportedEAPMethods(Index: Integer; const AEAPMethodTypes: EAPMethodTypes);
    function  SupportedEAPMethods_Specified(Index: Integer): boolean;
    procedure SetMaxUsers(Index: Integer; const AInteger: Integer);
    function  MaxUsers_Specified(Index: Integer): boolean;
    procedure SetMaxUserNameLength(Index: Integer; const AInteger: Integer);
    function  MaxUserNameLength_Specified(Index: Integer): boolean;
    procedure SetMaxPasswordLength(Index: Integer; const AInteger: Integer);
    function  MaxPasswordLength_Specified(Index: Integer): boolean;
  published
    property TLS1_0:               Boolean         Index (IS_ATTR or IS_OPTN) read FTLS1_0 write SetTLS1_0 stored TLS1_0_Specified;
    property TLS1_1:               Boolean         Index (IS_ATTR or IS_OPTN) read FTLS1_1 write SetTLS1_1 stored TLS1_1_Specified;
    property TLS1_2:               Boolean         Index (IS_ATTR or IS_OPTN) read FTLS1_2 write SetTLS1_2 stored TLS1_2_Specified;
    property OnboardKeyGeneration: Boolean         Index (IS_ATTR or IS_OPTN) read FOnboardKeyGeneration write SetOnboardKeyGeneration stored OnboardKeyGeneration_Specified;
    property AccessPolicyConfig:   Boolean         Index (IS_ATTR or IS_OPTN) read FAccessPolicyConfig write SetAccessPolicyConfig stored AccessPolicyConfig_Specified;
    property DefaultAccessPolicy:  Boolean         Index (IS_ATTR or IS_OPTN) read FDefaultAccessPolicy write SetDefaultAccessPolicy stored DefaultAccessPolicy_Specified;
    property Dot1X:                Boolean         Index (IS_ATTR or IS_OPTN) read FDot1X write SetDot1X stored Dot1X_Specified;
    property RemoteUserHandling:   Boolean         Index (IS_ATTR or IS_OPTN) read FRemoteUserHandling write SetRemoteUserHandling stored RemoteUserHandling_Specified;
    property X_509Token:           Boolean         Index (IS_ATTR or IS_OPTN) read FX_509Token write SetX_509Token stored X_509Token_Specified;
    property SAMLToken:            Boolean         Index (IS_ATTR or IS_OPTN) read FSAMLToken write SetSAMLToken stored SAMLToken_Specified;
    property KerberosToken:        Boolean         Index (IS_ATTR or IS_OPTN) read FKerberosToken write SetKerberosToken stored KerberosToken_Specified;
    property UsernameToken:        Boolean         Index (IS_ATTR or IS_OPTN) read FUsernameToken write SetUsernameToken stored UsernameToken_Specified;
    property HttpDigest:           Boolean         Index (IS_ATTR or IS_OPTN) read FHttpDigest write SetHttpDigest stored HttpDigest_Specified;
    property RELToken:             Boolean         Index (IS_ATTR or IS_OPTN) read FRELToken write SetRELToken stored RELToken_Specified;
    property SupportedEAPMethods:  EAPMethodTypes  Index (IS_ATTR or IS_OPTN) read FSupportedEAPMethods write SetSupportedEAPMethods stored SupportedEAPMethods_Specified;
    property MaxUsers:             Integer         Index (IS_ATTR or IS_OPTN) read FMaxUsers write SetMaxUsers stored MaxUsers_Specified;
    property MaxUserNameLength:    Integer         Index (IS_ATTR or IS_OPTN) read FMaxUserNameLength write SetMaxUserNameLength stored MaxUserNameLength_Specified;
    property MaxPasswordLength:    Integer         Index (IS_ATTR or IS_OPTN) read FMaxPasswordLength write SetMaxPasswordLength stored MaxPasswordLength_Specified;
  end;


  // ************************************************************************ //
  // Namespace : http://www.onvif.org/ver10/device/wsdl
  // soapAction: http://www.onvif.org/ver10/device/wsdl/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : DeviceBinding
  // ************************************************************************ //


  Device = interface(IInvokable)   //Device
  ['{FE6AA774-56F4-AE13-BA63-9533CF5AF99E}']
    function  GetServices(const parameters: GetServices): GetServicesResponse; stdcall;
    function  GetServiceCapabilities(const parameters: GetServiceCapabilities): GetServiceCapabilitiesResponse; stdcall;

    // Cannot unwrap: 
    //     - More than one strictly out element was found
    function  GetDeviceInformation(const parameters: GetDeviceInformation): GetDeviceInformationResponse; stdcall;
    function  SetSystemDateAndTime(const parameters: SetSystemDateAndTime): SetSystemDateAndTimeResponse; stdcall;
    function  GetSystemDateAndTime(const parameters: GetSystemDateAndTime): GetSystemDateAndTimeResponse; stdcall;
    function  SetSystemFactoryDefault(const parameters: SetSystemFactoryDefault): SetSystemFactoryDefaultResponse; stdcall;
    function  UpgradeSystemFirmware(const parameters: UpgradeSystemFirmware): UpgradeSystemFirmwareResponse; stdcall;
    function  SystemReboot(const parameters: SystemReboot): SystemRebootResponse; stdcall;
    function  RestoreSystem(const parameters: RestoreSystem): RestoreSystemResponse; stdcall;
    function  GetSystemBackup(const parameters: GetSystemBackup): GetSystemBackupResponse; stdcall;
    function  GetSystemLog(const parameters: GetSystemLog): GetSystemLogResponse; stdcall;
    function  GetSystemSupportInformation(const parameters: GetSystemSupportInformation): GetSystemSupportInformationResponse; stdcall;
    function  GetScopes(const parameters: GetScopes): GetScopesResponse; stdcall;
    function  SetScopes(const parameters: SetScopes): SetScopesResponse; stdcall;
    function  AddScopes(const parameters: AddScopes): AddScopesResponse; stdcall;
    function  RemoveScopes(const parameters: RemoveScopes): RemoveScopesResponse; stdcall;
    function  GetDiscoveryMode(const parameters: GetDiscoveryMode): GetDiscoveryModeResponse; stdcall;
    function  SetDiscoveryMode(const parameters: SetDiscoveryMode): SetDiscoveryModeResponse; stdcall;
    function  GetRemoteDiscoveryMode(const parameters: GetRemoteDiscoveryMode): GetRemoteDiscoveryModeResponse; stdcall;
    function  SetRemoteDiscoveryMode(const parameters: SetRemoteDiscoveryMode): SetRemoteDiscoveryModeResponse; stdcall;
    function  GetDPAddresses(const parameters: GetDPAddresses): GetDPAddressesResponse; stdcall;
    function  SetDPAddresses(const parameters: SetDPAddresses): SetDPAddressesResponse; stdcall;
    function  GetEndpointReference(const parameters: GetEndpointReference): GetEndpointReferenceResponse; stdcall;
    function  GetRemoteUser(const parameters: GetRemoteUser): GetRemoteUserResponse; stdcall;
    function  SetRemoteUser(const parameters: SetRemoteUser): SetRemoteUserResponse; stdcall;
    function  GetUsers(const parameters: GetUsers): GetUsersResponse; stdcall;
    function  CreateUsers(const parameters: CreateUsers): CreateUsersResponse; stdcall;
    function  DeleteUsers(const parameters: DeleteUsers): DeleteUsersResponse; stdcall;
    function  SetUser(const parameters: SetUser): SetUserResponse; stdcall;
    function  GetWsdlUrl(const parameters: GetWsdlUrl): GetWsdlUrlResponse; stdcall;
    function  GetCapabilities(const parameters: GetCapabilities): GetCapabilitiesResponse; stdcall;
    function  GetHostname(const parameters: GetHostname): GetHostnameResponse; stdcall;
    function  SetHostname(const parameters: SetHostname): SetHostnameResponse; stdcall;
    function  SetHostnameFromDHCP(const parameters: SetHostnameFromDHCP): SetHostnameFromDHCPResponse; stdcall;
    function  GetDNS(const parameters: GetDNS): GetDNSResponse; stdcall;
    function  SetDNS(const parameters: SetDNS): SetDNSResponse; stdcall;
    function  GetNTP(const parameters: GetNTP): GetNTPResponse; stdcall;
    function  SetNTP(const parameters: SetNTP): SetNTPResponse; stdcall;
    function  GetDynamicDNS(const parameters: GetDynamicDNS): GetDynamicDNSResponse; stdcall;
    function  SetDynamicDNS(const parameters: SetDynamicDNS): SetDynamicDNSResponse; stdcall;
    function  GetNetworkInterfaces(const parameters: GetNetworkInterfaces): GetNetworkInterfacesResponse; stdcall;
    function  SetNetworkInterfaces(const parameters: SetNetworkInterfaces): SetNetworkInterfacesResponse; stdcall;
    function  GetNetworkProtocols(const parameters: GetNetworkProtocols): GetNetworkProtocolsResponse; stdcall;
    function  SetNetworkProtocols(const parameters: SetNetworkProtocols): SetNetworkProtocolsResponse; stdcall;
    function  GetNetworkDefaultGateway(const parameters: GetNetworkDefaultGateway): GetNetworkDefaultGatewayResponse; stdcall;
    function  SetNetworkDefaultGateway(const parameters: SetNetworkDefaultGateway): SetNetworkDefaultGatewayResponse; stdcall;
    function  GetZeroConfiguration(const parameters: GetZeroConfiguration): GetZeroConfigurationResponse; stdcall;
    function  SetZeroConfiguration(const parameters: SetZeroConfiguration): SetZeroConfigurationResponse; stdcall;
    function  GetIPAddressFilter(const parameters: GetIPAddressFilter): GetIPAddressFilterResponse; stdcall;
    function  SetIPAddressFilter(const parameters: SetIPAddressFilter): SetIPAddressFilterResponse; stdcall;
    function  AddIPAddressFilter(const parameters: AddIPAddressFilter): AddIPAddressFilterResponse; stdcall;
    function  RemoveIPAddressFilter(const parameters: RemoveIPAddressFilter): RemoveIPAddressFilterResponse; stdcall;
    function  GetAccessPolicy(const parameters: GetAccessPolicy): GetAccessPolicyResponse; stdcall;
    function  SetAccessPolicy(const parameters: SetAccessPolicy): SetAccessPolicyResponse; stdcall;
    function  CreateCertificate(const parameters: CreateCertificate): CreateCertificateResponse; stdcall;
    function  GetCertificates(const parameters: GetCertificates): GetCertificatesResponse; stdcall;
    function  GetCertificatesStatus(const parameters: GetCertificatesStatus): GetCertificatesStatusResponse; stdcall;
    function  SetCertificatesStatus(const parameters: SetCertificatesStatus): SetCertificatesStatusResponse; stdcall;
    function  DeleteCertificates(const parameters: DeleteCertificates): DeleteCertificatesResponse; stdcall;
    function  GetPkcs10Request(const parameters: GetPkcs10Request): GetPkcs10RequestResponse; stdcall;
    function  LoadCertificates(const parameters: LoadCertificates): LoadCertificatesResponse; stdcall;
    function  GetClientCertificateMode(const parameters: GetClientCertificateMode): GetClientCertificateModeResponse; stdcall;
    function  SetClientCertificateMode(const parameters: SetClientCertificateMode): SetClientCertificateModeResponse; stdcall;
    function  GetRelayOutputs(const parameters: GetRelayOutputs): GetRelayOutputsResponse; stdcall;
    function  SetRelayOutputSettings(const parameters: SetRelayOutputSettings): SetRelayOutputSettingsResponse; stdcall;
    function  SetRelayOutputState(const parameters: SetRelayOutputState): SetRelayOutputStateResponse; stdcall;
    function  SendAuxiliaryCommand(const parameters: SendAuxiliaryCommand): SendAuxiliaryCommandResponse; stdcall;
    function  GetCACertificates(const parameters: GetCACertificates): GetCACertificatesResponse; stdcall;
    function  LoadCertificateWithPrivateKey(const parameters: LoadCertificateWithPrivateKey): LoadCertificateWithPrivateKeyResponse; stdcall;
    function  GetCertificateInformation(const parameters: GetCertificateInformation): GetCertificateInformationResponse; stdcall;
    function  LoadCACertificates(const parameters: LoadCACertificates): LoadCACertificatesResponse; stdcall;
    function  CreateDot1XConfiguration(const parameters: CreateDot1XConfiguration): CreateDot1XConfigurationResponse; stdcall;
    function  SetDot1XConfiguration(const parameters: SetDot1XConfiguration): SetDot1XConfigurationResponse; stdcall;
    function  GetDot1XConfiguration(const parameters: GetDot1XConfiguration): GetDot1XConfigurationResponse; stdcall;
    function  GetDot1XConfigurations(const parameters: GetDot1XConfigurations): GetDot1XConfigurationsResponse; stdcall;
    function  DeleteDot1XConfiguration(const parameters: DeleteDot1XConfiguration): DeleteDot1XConfigurationResponse; stdcall;
    function  GetDot11Capabilities(const parameters: GetDot11Capabilities): GetDot11CapabilitiesResponse; stdcall;
    function  GetDot11Status(const parameters: GetDot11Status): GetDot11StatusResponse; stdcall;
    function  ScanAvailableDot11Networks(const parameters: ScanAvailableDot11Networks): ScanAvailableDot11NetworksResponse; stdcall;

    // Cannot unwrap: 
    //     - More than one strictly out element was found
    function  GetSystemUris(const parameters: GetSystemUris): GetSystemUrisResponse; stdcall;

    // Cannot unwrap: 
    //     - More than one strictly out element was found
    function  StartFirmwareUpgrade(const parameters: StartFirmwareUpgrade): StartFirmwareUpgradeResponse; stdcall;

    // Cannot unwrap: 
    //     - More than one strictly out element was found
    function  StartSystemRestore(const parameters: StartSystemRestore): StartSystemRestoreResponse; stdcall;
    function  GetStorageConfigurations(const parameters: GetStorageConfigurations): GetStorageConfigurationsResponse; stdcall;
    function  CreateStorageConfiguration(const parameters: CreateStorageConfiguration): CreateStorageConfigurationResponse; stdcall;
    function  GetStorageConfiguration(const parameters: GetStorageConfiguration): GetStorageConfigurationResponse; stdcall;
    function  SetStorageConfiguration(const parameters: SetStorageConfiguration): SetStorageConfigurationResponse; stdcall;
    function  DeleteStorageConfiguration(const parameters: DeleteStorageConfiguration): DeleteStorageConfigurationResponse; stdcall;
    function  GetGeoLocation(const parameters: GetGeoLocation): GetGeoLocationResponse; stdcall;
    function  SetGeoLocation(const parameters: SetGeoLocation): SetGeoLocationResponse; stdcall;
    function  DeleteGeoLocation(const parameters: DeleteGeoLocation): DeleteGeoLocationResponse; stdcall;
  end;



implementation
  uses SysUtils;

destructor PTZNodeExtension.Destroy;
begin
  SysUtils.FreeAndNil(FSupportedPresetTour);
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure PTZNodeExtension.SetSupportedPresetTour(Index: Integer; const APTZPresetTourSupported: PTZPresetTourSupported);
begin
  FSupportedPresetTour := APTZPresetTourSupported;
  FSupportedPresetTour_Specified := True;
end;

function PTZNodeExtension.SupportedPresetTour_Specified(Index: Integer): boolean;
begin
  Result := FSupportedPresetTour_Specified;
end;

procedure PTZNodeExtension.SetExtension(Index: Integer; const APTZNodeExtension2: PTZNodeExtension2);
begin
  FExtension := APTZNodeExtension2;
  FExtension_Specified := True;
end;

function PTZNodeExtension.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

destructor ImagingSettingsExtension203.Destroy;
begin
  SysUtils.FreeAndNil(FToneCompensation);
  SysUtils.FreeAndNil(FDefogging);
  SysUtils.FreeAndNil(FNoiseReduction);
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure ImagingSettingsExtension203.SetToneCompensation(Index: Integer; const AToneCompensation: ToneCompensation);
begin
  FToneCompensation := AToneCompensation;
  FToneCompensation_Specified := True;
end;

function ImagingSettingsExtension203.ToneCompensation_Specified(Index: Integer): boolean;
begin
  Result := FToneCompensation_Specified;
end;

procedure ImagingSettingsExtension203.SetDefogging(Index: Integer; const ADefogging: Defogging);
begin
  FDefogging := ADefogging;
  FDefogging_Specified := True;
end;

function ImagingSettingsExtension203.Defogging_Specified(Index: Integer): boolean;
begin
  Result := FDefogging_Specified;
end;

procedure ImagingSettingsExtension203.SetNoiseReduction(Index: Integer; const ANoiseReduction: NoiseReduction);
begin
  FNoiseReduction := ANoiseReduction;
  FNoiseReduction_Specified := True;
end;

function ImagingSettingsExtension203.NoiseReduction_Specified(Index: Integer): boolean;
begin
  Result := FNoiseReduction_Specified;
end;

procedure ImagingSettingsExtension203.SetExtension(Index: Integer; const AImagingSettingsExtension204: ImagingSettingsExtension204);
begin
  FExtension := AImagingSettingsExtension204;
  FExtension_Specified := True;
end;

function ImagingSettingsExtension203.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

destructor ImagingSettingsExtension20.Destroy;
begin
  SysUtils.FreeAndNil(FImageStabilization);
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure ImagingSettingsExtension20.SetImageStabilization(Index: Integer; const AImageStabilization: ImageStabilization);
begin
  FImageStabilization := AImageStabilization;
  FImageStabilization_Specified := True;
end;

function ImagingSettingsExtension20.ImageStabilization_Specified(Index: Integer): boolean;
begin
  Result := FImageStabilization_Specified;
end;

procedure ImagingSettingsExtension20.SetExtension(Index: Integer; const AImagingSettingsExtension202: ImagingSettingsExtension202);
begin
  FExtension := AImagingSettingsExtension202;
  FExtension_Specified := True;
end;

function ImagingSettingsExtension20.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

destructor ImagingSettingsExtension202.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FIrCutFilterAutoAdjustment)-1 do
    SysUtils.FreeAndNil(FIrCutFilterAutoAdjustment[I]);
  System.SetLength(FIrCutFilterAutoAdjustment, 0);
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure ImagingSettingsExtension202.SetIrCutFilterAutoAdjustment(Index: Integer; const AArray_Of_IrCutFilterAutoAdjustment: Array_Of_IrCutFilterAutoAdjustment);
begin
  FIrCutFilterAutoAdjustment := AArray_Of_IrCutFilterAutoAdjustment;
  FIrCutFilterAutoAdjustment_Specified := True;
end;

function ImagingSettingsExtension202.IrCutFilterAutoAdjustment_Specified(Index: Integer): boolean;
begin
  Result := FIrCutFilterAutoAdjustment_Specified;
end;

procedure ImagingSettingsExtension202.SetExtension(Index: Integer; const AImagingSettingsExtension203: ImagingSettingsExtension203);
begin
  FExtension := AImagingSettingsExtension203;
  FExtension_Specified := True;
end;

function ImagingSettingsExtension202.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

destructor PTZSpaces.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FAbsolutePanTiltPositionSpace)-1 do
    SysUtils.FreeAndNil(FAbsolutePanTiltPositionSpace[I]);
  System.SetLength(FAbsolutePanTiltPositionSpace, 0);
  for I := 0 to System.Length(FAbsoluteZoomPositionSpace)-1 do
    SysUtils.FreeAndNil(FAbsoluteZoomPositionSpace[I]);
  System.SetLength(FAbsoluteZoomPositionSpace, 0);
  for I := 0 to System.Length(FRelativePanTiltTranslationSpace)-1 do
    SysUtils.FreeAndNil(FRelativePanTiltTranslationSpace[I]);
  System.SetLength(FRelativePanTiltTranslationSpace, 0);
  for I := 0 to System.Length(FRelativeZoomTranslationSpace)-1 do
    SysUtils.FreeAndNil(FRelativeZoomTranslationSpace[I]);
  System.SetLength(FRelativeZoomTranslationSpace, 0);
  for I := 0 to System.Length(FContinuousPanTiltVelocitySpace)-1 do
    SysUtils.FreeAndNil(FContinuousPanTiltVelocitySpace[I]);
  System.SetLength(FContinuousPanTiltVelocitySpace, 0);
  for I := 0 to System.Length(FContinuousZoomVelocitySpace)-1 do
    SysUtils.FreeAndNil(FContinuousZoomVelocitySpace[I]);
  System.SetLength(FContinuousZoomVelocitySpace, 0);
  for I := 0 to System.Length(FPanTiltSpeedSpace)-1 do
    SysUtils.FreeAndNil(FPanTiltSpeedSpace[I]);
  System.SetLength(FPanTiltSpeedSpace, 0);
  for I := 0 to System.Length(FZoomSpeedSpace)-1 do
    SysUtils.FreeAndNil(FZoomSpeedSpace[I]);
  System.SetLength(FZoomSpeedSpace, 0);
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure PTZSpaces.SetAbsolutePanTiltPositionSpace(Index: Integer; const AArray_Of_Space2DDescription: Array_Of_Space2DDescription);
begin
  FAbsolutePanTiltPositionSpace := AArray_Of_Space2DDescription;
  FAbsolutePanTiltPositionSpace_Specified := True;
end;

function PTZSpaces.AbsolutePanTiltPositionSpace_Specified(Index: Integer): boolean;
begin
  Result := FAbsolutePanTiltPositionSpace_Specified;
end;

procedure PTZSpaces.SetAbsoluteZoomPositionSpace(Index: Integer; const AArray_Of_Space1DDescription: Array_Of_Space1DDescription);
begin
  FAbsoluteZoomPositionSpace := AArray_Of_Space1DDescription;
  FAbsoluteZoomPositionSpace_Specified := True;
end;

function PTZSpaces.AbsoluteZoomPositionSpace_Specified(Index: Integer): boolean;
begin
  Result := FAbsoluteZoomPositionSpace_Specified;
end;

procedure PTZSpaces.SetRelativePanTiltTranslationSpace(Index: Integer; const AArray_Of_Space2DDescription: Array_Of_Space2DDescription);
begin
  FRelativePanTiltTranslationSpace := AArray_Of_Space2DDescription;
  FRelativePanTiltTranslationSpace_Specified := True;
end;

function PTZSpaces.RelativePanTiltTranslationSpace_Specified(Index: Integer): boolean;
begin
  Result := FRelativePanTiltTranslationSpace_Specified;
end;

procedure PTZSpaces.SetRelativeZoomTranslationSpace(Index: Integer; const AArray_Of_Space1DDescription: Array_Of_Space1DDescription);
begin
  FRelativeZoomTranslationSpace := AArray_Of_Space1DDescription;
  FRelativeZoomTranslationSpace_Specified := True;
end;

function PTZSpaces.RelativeZoomTranslationSpace_Specified(Index: Integer): boolean;
begin
  Result := FRelativeZoomTranslationSpace_Specified;
end;

procedure PTZSpaces.SetContinuousPanTiltVelocitySpace(Index: Integer; const AArray_Of_Space2DDescription: Array_Of_Space2DDescription);
begin
  FContinuousPanTiltVelocitySpace := AArray_Of_Space2DDescription;
  FContinuousPanTiltVelocitySpace_Specified := True;
end;

function PTZSpaces.ContinuousPanTiltVelocitySpace_Specified(Index: Integer): boolean;
begin
  Result := FContinuousPanTiltVelocitySpace_Specified;
end;

procedure PTZSpaces.SetContinuousZoomVelocitySpace(Index: Integer; const AArray_Of_Space1DDescription: Array_Of_Space1DDescription);
begin
  FContinuousZoomVelocitySpace := AArray_Of_Space1DDescription;
  FContinuousZoomVelocitySpace_Specified := True;
end;

function PTZSpaces.ContinuousZoomVelocitySpace_Specified(Index: Integer): boolean;
begin
  Result := FContinuousZoomVelocitySpace_Specified;
end;

procedure PTZSpaces.SetPanTiltSpeedSpace(Index: Integer; const AArray_Of_Space1DDescription: Array_Of_Space1DDescription);
begin
  FPanTiltSpeedSpace := AArray_Of_Space1DDescription;
  FPanTiltSpeedSpace_Specified := True;
end;

function PTZSpaces.PanTiltSpeedSpace_Specified(Index: Integer): boolean;
begin
  Result := FPanTiltSpeedSpace_Specified;
end;

procedure PTZSpaces.SetZoomSpeedSpace(Index: Integer; const AArray_Of_Space1DDescription: Array_Of_Space1DDescription);
begin
  FZoomSpeedSpace := AArray_Of_Space1DDescription;
  FZoomSpeedSpace_Specified := True;
end;

function PTZSpaces.ZoomSpeedSpace_Specified(Index: Integer): boolean;
begin
  Result := FZoomSpeedSpace_Specified;
end;

procedure PTZSpaces.SetExtension(Index: Integer; const APTZSpacesExtension: PTZSpacesExtension);
begin
  FExtension := APTZSpacesExtension;
  FExtension_Specified := True;
end;

function PTZSpaces.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

constructor GetPkcs10RequestResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetPkcs10RequestResponse.Destroy;
begin
  SysUtils.FreeAndNil(FPkcs10Request);
  inherited Destroy;
end;

constructor SetCertificatesStatusResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor DeleteCertificatesResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor SetClientCertificateModeResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetCACertificates.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor LoadCertificatesResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetClientCertificateMode.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetAccessPolicy.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor RemoveIPAddressFilterResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor SetAccessPolicy.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SetAccessPolicy.Destroy;
begin
  SysUtils.FreeAndNil(FPolicyFile);
  inherited Destroy;
end;

constructor SetAccessPolicyResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetAccessPolicyResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetAccessPolicyResponse.Destroy;
begin
  SysUtils.FreeAndNil(FPolicyFile);
  inherited Destroy;
end;

constructor GetCertificatesStatus.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor CreateCertificateResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor CreateCertificateResponse.Destroy;
begin
  SysUtils.FreeAndNil(FNvtCertificate);
  inherited Destroy;
end;

constructor GetCertificates.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor DeleteDot1XConfigurationResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetRelayOutputs.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetDot1XConfigurations.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor SetRelayOutputStateResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor SetRelayOutputSettingsResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetCertificateInformationResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetCertificateInformationResponse.Destroy;
begin
  SysUtils.FreeAndNil(FCertificateInformation);
  inherited Destroy;
end;

constructor LoadCACertificatesResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor LoadCertificateWithPrivateKeyResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor SetDot1XConfigurationResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetDot1XConfigurationResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetDot1XConfigurationResponse.Destroy;
begin
  SysUtils.FreeAndNil(FDot1XConfiguration);
  inherited Destroy;
end;

constructor CreateDot1XConfiguration.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor CreateDot1XConfiguration.Destroy;
begin
  SysUtils.FreeAndNil(FDot1XConfiguration);
  inherited Destroy;
end;

constructor CreateDot1XConfigurationResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor SetDot1XConfiguration.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SetDot1XConfiguration.Destroy;
begin
  SysUtils.FreeAndNil(FDot1XConfiguration);
  inherited Destroy;
end;

constructor GetDNSResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetDNSResponse.Destroy;
begin
  SysUtils.FreeAndNil(FDNSInformation);
  inherited Destroy;
end;

constructor SetDNSResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetDNS.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor SetNTPResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetDynamicDNS.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetDynamicDNSResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetDynamicDNSResponse.Destroy;
begin
  SysUtils.FreeAndNil(FDynamicDNSInformation);
  inherited Destroy;
end;

constructor GetNTP.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetNTPResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetNTPResponse.Destroy;
begin
  SysUtils.FreeAndNil(FNTPInformation);
  inherited Destroy;
end;

constructor SetUserResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetWsdlUrl.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor DeleteUsersResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetHostnameResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetHostnameResponse.Destroy;
begin
  SysUtils.FreeAndNil(FHostnameInformation);
  inherited Destroy;
end;

constructor SetHostnameResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetCapabilitiesResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetCapabilitiesResponse.Destroy;
begin
  SysUtils.FreeAndNil(FCapabilities);
  inherited Destroy;
end;

constructor GetHostname.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor SetZeroConfigurationResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetIPAddressFilter.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor SetNetworkDefaultGatewayResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetZeroConfiguration.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetZeroConfigurationResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetZeroConfigurationResponse.Destroy;
begin
  SysUtils.FreeAndNil(FZeroConfiguration);
  inherited Destroy;
end;

constructor AddIPAddressFilter.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor AddIPAddressFilter.Destroy;
begin
  SysUtils.FreeAndNil(FIPAddressFilter);
  inherited Destroy;
end;

constructor AddIPAddressFilterResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor RemoveIPAddressFilter.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor RemoveIPAddressFilter.Destroy;
begin
  SysUtils.FreeAndNil(FIPAddressFilter);
  inherited Destroy;
end;

constructor GetIPAddressFilterResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetIPAddressFilterResponse.Destroy;
begin
  SysUtils.FreeAndNil(FIPAddressFilter);
  inherited Destroy;
end;

constructor SetIPAddressFilter.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SetIPAddressFilter.Destroy;
begin
  SysUtils.FreeAndNil(FIPAddressFilter);
  inherited Destroy;
end;

constructor SetIPAddressFilterResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetNetworkProtocols.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor SetDynamicDNSResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetNetworkInterfaces.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetNetworkDefaultGateway.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetNetworkDefaultGatewayResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetNetworkDefaultGatewayResponse.Destroy;
begin
  SysUtils.FreeAndNil(FNetworkGateway);
  inherited Destroy;
end;

constructor SetNetworkProtocolsResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetDot11Capabilities.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor DateTime.Destroy;
begin
  SysUtils.FreeAndNil(FTime);
  SysUtils.FreeAndNil(FDate);
  inherited Destroy;
end;

destructor hexBinary.Destroy;
begin
  SysUtils.FreeAndNil(FText);
  inherited Destroy;
end;

procedure hexBinary.SetcontentType(Index: Integer; const AcontentType: contentType);
begin
  FcontentType := AcontentType;
  FcontentType_Specified := True;
end;

function hexBinary.contentType_Specified(Index: Integer): boolean;
begin
  Result := FcontentType_Specified;
end;

procedure base64Binary.SetcontentType(Index: Integer; const AcontentType: contentType);
begin
  FcontentType := AcontentType;
  FcontentType_Specified := True;
end;

function base64Binary.contentType_Specified(Index: Integer): boolean;
begin
  Result := FcontentType_Specified;
end;

procedure BinaryData.SetcontentType(Index: Integer; const AcontentType: contentType);
begin
  FcontentType := AcontentType;
  FcontentType_Specified := True;
end;

function BinaryData.contentType_Specified(Index: Integer): boolean;
begin
  Result := FcontentType_Specified;
end;

destructor SystemDateTime.Destroy;
begin
  SysUtils.FreeAndNil(FTimeZone);
  SysUtils.FreeAndNil(FUTCDateTime);
  SysUtils.FreeAndNil(FLocalDateTime);
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure SystemDateTime.SetTimeZone(Index: Integer; const ATimeZone: TimeZone);
begin
  FTimeZone := ATimeZone;
  FTimeZone_Specified := True;
end;

function SystemDateTime.TimeZone_Specified(Index: Integer): boolean;
begin
  Result := FTimeZone_Specified;
end;

procedure SystemDateTime.SetUTCDateTime(Index: Integer; const ADateTime: DateTime);
begin
  FUTCDateTime := ADateTime;
  FUTCDateTime_Specified := True;
end;

function SystemDateTime.UTCDateTime_Specified(Index: Integer): boolean;
begin
  Result := FUTCDateTime_Specified;
end;

procedure SystemDateTime.SetLocalDateTime(Index: Integer; const ADateTime: DateTime);
begin
  FLocalDateTime := ADateTime;
  FLocalDateTime_Specified := True;
end;

function SystemDateTime.LocalDateTime_Specified(Index: Integer): boolean;
begin
  Result := FLocalDateTime_Specified;
end;

procedure SystemDateTime.SetExtension(Index: Integer; const ASystemDateTimeExtension: SystemDateTimeExtension);
begin
  FExtension := ASystemDateTimeExtension;
  FExtension_Specified := True;
end;

function SystemDateTime.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

constructor SetNetworkInterfacesResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor SetHostnameFromDHCPResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor SetHostnameFromDHCP.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetClientCertificateModeResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor SetClientCertificateMode.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor DateTimeRange.Destroy;
begin
  SysUtils.FreeAndNil(FFrom);
  SysUtils.FreeAndNil(FUntil_);
  inherited Destroy;
end;

destructor BackupFile.Destroy;
begin
  SysUtils.FreeAndNil(FData);
  inherited Destroy;
end;

destructor SupportInformation.Destroy;
begin
  SysUtils.FreeAndNil(FBinary);
  inherited Destroy;
end;

procedure SupportInformation.SetBinary(Index: Integer; const AAttachmentData: AttachmentData);
begin
  FBinary := AAttachmentData;
  FBinary_Specified := True;
end;

function SupportInformation.Binary_Specified(Index: Integer): boolean;
begin
  Result := FBinary_Specified;
end;

procedure SupportInformation.SetString_(Index: Integer; const Astring: string);
begin
  FString_ := Astring;
  FString__Specified := True;
end;

function SupportInformation.String__Specified(Index: Integer): boolean;
begin
  Result := FString__Specified;
end;

destructor EAPMethodConfiguration.Destroy;
begin
  SysUtils.FreeAndNil(FTLSConfiguration);
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure EAPMethodConfiguration.SetTLSConfiguration(Index: Integer; const ATLSConfiguration: TLSConfiguration);
begin
  FTLSConfiguration := ATLSConfiguration;
  FTLSConfiguration_Specified := True;
end;

function EAPMethodConfiguration.TLSConfiguration_Specified(Index: Integer): boolean;
begin
  Result := FTLSConfiguration_Specified;
end;

procedure EAPMethodConfiguration.SetPassword(Index: Integer; const Astring: string);
begin
  FPassword := Astring;
  FPassword_Specified := True;
end;

function EAPMethodConfiguration.Password_Specified(Index: Integer): boolean;
begin
  Result := FPassword_Specified;
end;

procedure EAPMethodConfiguration.SetExtension(Index: Integer; const AEapMethodExtension: EapMethodExtension);
begin
  FExtension := AEapMethodExtension;
  FExtension_Specified := True;
end;

function EAPMethodConfiguration.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

constructor GetWsdlUrlResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor Space1DDescription.Destroy;
begin
  SysUtils.FreeAndNil(FXRange);
  inherited Destroy;
end;

destructor Space2DDescription.Destroy;
begin
  SysUtils.FreeAndNil(FXRange);
  SysUtils.FreeAndNil(FYRange);
  inherited Destroy;
end;

procedure Vector.Setx(Index: Integer; const ASingle: Single);
begin
  Fx := ASingle;
  Fx_Specified := True;
end;

function Vector.x_Specified(Index: Integer): boolean;
begin
  Result := Fx_Specified;
end;

procedure Vector.Sety(Index: Integer; const ASingle: Single);
begin
  Fy := ASingle;
  Fy_Specified := True;
end;

function Vector.y_Specified(Index: Integer): boolean;
begin
  Result := Fy_Specified;
end;

procedure Rectangle.Setbottom(Index: Integer; const ASingle: Single);
begin
  Fbottom := ASingle;
  Fbottom_Specified := True;
end;

function Rectangle.bottom_Specified(Index: Integer): boolean;
begin
  Result := Fbottom_Specified;
end;

procedure Rectangle.Settop(Index: Integer; const ASingle: Single);
begin
  Ftop := ASingle;
  Ftop_Specified := True;
end;

function Rectangle.top_Specified(Index: Integer): boolean;
begin
  Result := Ftop_Specified;
end;

procedure Rectangle.Setright(Index: Integer; const ASingle: Single);
begin
  Fright := ASingle;
  Fright_Specified := True;
end;

function Rectangle.right_Specified(Index: Integer): boolean;
begin
  Result := Fright_Specified;
end;

procedure Rectangle.Setleft(Index: Integer; const ASingle: Single);
begin
  Fleft := ASingle;
  Fleft_Specified := True;
end;

function Rectangle.left_Specified(Index: Integer): boolean;
begin
  Result := Fleft_Specified;
end;

procedure BacklightCompensation20.SetLevel(Index: Integer; const ASingle: Single);
begin
  FLevel := ASingle;
  FLevel_Specified := True;
end;

function BacklightCompensation20.Level_Specified(Index: Integer): boolean;
begin
  Result := FLevel_Specified;
end;

destructor Exposure.Destroy;
begin
  SysUtils.FreeAndNil(FWindow);
  inherited Destroy;
end;

destructor Exposure20.Destroy;
begin
  SysUtils.FreeAndNil(FWindow);
  inherited Destroy;
end;

procedure Exposure20.SetPriority(Index: Integer; const AExposurePriority: ExposurePriority);
begin
  FPriority := AExposurePriority;
  FPriority_Specified := True;
end;

function Exposure20.Priority_Specified(Index: Integer): boolean;
begin
  Result := FPriority_Specified;
end;

procedure Exposure20.SetWindow(Index: Integer; const ARectangle: Rectangle);
begin
  FWindow := ARectangle;
  FWindow_Specified := True;
end;

function Exposure20.Window_Specified(Index: Integer): boolean;
begin
  Result := FWindow_Specified;
end;

procedure Exposure20.SetMinExposureTime(Index: Integer; const ASingle: Single);
begin
  FMinExposureTime := ASingle;
  FMinExposureTime_Specified := True;
end;

function Exposure20.MinExposureTime_Specified(Index: Integer): boolean;
begin
  Result := FMinExposureTime_Specified;
end;

procedure Exposure20.SetMaxExposureTime(Index: Integer; const ASingle: Single);
begin
  FMaxExposureTime := ASingle;
  FMaxExposureTime_Specified := True;
end;

function Exposure20.MaxExposureTime_Specified(Index: Integer): boolean;
begin
  Result := FMaxExposureTime_Specified;
end;

procedure Exposure20.SetMinGain(Index: Integer; const ASingle: Single);
begin
  FMinGain := ASingle;
  FMinGain_Specified := True;
end;

function Exposure20.MinGain_Specified(Index: Integer): boolean;
begin
  Result := FMinGain_Specified;
end;

procedure Exposure20.SetMaxGain(Index: Integer; const ASingle: Single);
begin
  FMaxGain := ASingle;
  FMaxGain_Specified := True;
end;

function Exposure20.MaxGain_Specified(Index: Integer): boolean;
begin
  Result := FMaxGain_Specified;
end;

procedure Exposure20.SetMinIris(Index: Integer; const ASingle: Single);
begin
  FMinIris := ASingle;
  FMinIris_Specified := True;
end;

function Exposure20.MinIris_Specified(Index: Integer): boolean;
begin
  Result := FMinIris_Specified;
end;

procedure Exposure20.SetMaxIris(Index: Integer; const ASingle: Single);
begin
  FMaxIris := ASingle;
  FMaxIris_Specified := True;
end;

function Exposure20.MaxIris_Specified(Index: Integer): boolean;
begin
  Result := FMaxIris_Specified;
end;

procedure Exposure20.SetExposureTime(Index: Integer; const ASingle: Single);
begin
  FExposureTime := ASingle;
  FExposureTime_Specified := True;
end;

function Exposure20.ExposureTime_Specified(Index: Integer): boolean;
begin
  Result := FExposureTime_Specified;
end;

procedure Exposure20.SetGain(Index: Integer; const ASingle: Single);
begin
  FGain := ASingle;
  FGain_Specified := True;
end;

function Exposure20.Gain_Specified(Index: Integer): boolean;
begin
  Result := FGain_Specified;
end;

procedure Exposure20.SetIris(Index: Integer; const ASingle: Single);
begin
  FIris := ASingle;
  FIris_Specified := True;
end;

function Exposure20.Iris_Specified(Index: Integer): boolean;
begin
  Result := FIris_Specified;
end;

destructor ImageStabilization.Destroy;
begin
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure ImageStabilization.SetLevel(Index: Integer; const ASingle: Single);
begin
  FLevel := ASingle;
  FLevel_Specified := True;
end;

function ImageStabilization.Level_Specified(Index: Integer): boolean;
begin
  Result := FLevel_Specified;
end;

procedure ImageStabilization.SetExtension(Index: Integer; const AImageStabilizationExtension: ImageStabilizationExtension);
begin
  FExtension := AImageStabilizationExtension;
  FExtension_Specified := True;
end;

function ImageStabilization.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

destructor WhiteBalance20.Destroy;
begin
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure WhiteBalance20.SetCrGain(Index: Integer; const ASingle: Single);
begin
  FCrGain := ASingle;
  FCrGain_Specified := True;
end;

function WhiteBalance20.CrGain_Specified(Index: Integer): boolean;
begin
  Result := FCrGain_Specified;
end;

procedure WhiteBalance20.SetCbGain(Index: Integer; const ASingle: Single);
begin
  FCbGain := ASingle;
  FCbGain_Specified := True;
end;

function WhiteBalance20.CbGain_Specified(Index: Integer): boolean;
begin
  Result := FCbGain_Specified;
end;

procedure WhiteBalance20.SetExtension(Index: Integer; const AWhiteBalance20Extension: WhiteBalance20Extension);
begin
  FExtension := AWhiteBalance20Extension;
  FExtension_Specified := True;
end;

function WhiteBalance20.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

destructor FocusConfiguration20.Destroy;
begin
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure FocusConfiguration20.SetDefaultSpeed(Index: Integer; const ASingle: Single);
begin
  FDefaultSpeed := ASingle;
  FDefaultSpeed_Specified := True;
end;

function FocusConfiguration20.DefaultSpeed_Specified(Index: Integer): boolean;
begin
  Result := FDefaultSpeed_Specified;
end;

procedure FocusConfiguration20.SetNearLimit(Index: Integer; const ASingle: Single);
begin
  FNearLimit := ASingle;
  FNearLimit_Specified := True;
end;

function FocusConfiguration20.NearLimit_Specified(Index: Integer): boolean;
begin
  Result := FNearLimit_Specified;
end;

procedure FocusConfiguration20.SetFarLimit(Index: Integer; const ASingle: Single);
begin
  FFarLimit := ASingle;
  FFarLimit_Specified := True;
end;

function FocusConfiguration20.FarLimit_Specified(Index: Integer): boolean;
begin
  Result := FFarLimit_Specified;
end;

procedure FocusConfiguration20.SetExtension(Index: Integer; const AFocusConfiguration20Extension: FocusConfiguration20Extension);
begin
  FExtension := AFocusConfiguration20Extension;
  FExtension_Specified := True;
end;

function FocusConfiguration20.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

procedure WideDynamicRange20.SetLevel(Index: Integer; const ASingle: Single);
begin
  FLevel := ASingle;
  FLevel_Specified := True;
end;

function WideDynamicRange20.Level_Specified(Index: Integer): boolean;
begin
  Result := FLevel_Specified;
end;

destructor ToneCompensation.Destroy;
begin
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure ToneCompensation.SetLevel(Index: Integer; const ASingle: Single);
begin
  FLevel := ASingle;
  FLevel_Specified := True;
end;

function ToneCompensation.Level_Specified(Index: Integer): boolean;
begin
  Result := FLevel_Specified;
end;

procedure ToneCompensation.SetExtension(Index: Integer; const AToneCompensationExtension: ToneCompensationExtension);
begin
  FExtension := AToneCompensationExtension;
  FExtension_Specified := True;
end;

function ToneCompensation.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

destructor Defogging.Destroy;
begin
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure Defogging.SetLevel(Index: Integer; const ASingle: Single);
begin
  FLevel := ASingle;
  FLevel_Specified := True;
end;

function Defogging.Level_Specified(Index: Integer): boolean;
begin
  Result := FLevel_Specified;
end;

procedure Defogging.SetExtension(Index: Integer; const ADefoggingExtension: DefoggingExtension);
begin
  FExtension := ADefoggingExtension;
  FExtension_Specified := True;
end;

function Defogging.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

procedure LocalLocation.Setx(Index: Integer; const ASingle: Single);
begin
  Fx := ASingle;
  Fx_Specified := True;
end;

function LocalLocation.x_Specified(Index: Integer): boolean;
begin
  Result := Fx_Specified;
end;

procedure LocalLocation.Sety(Index: Integer; const ASingle: Single);
begin
  Fy := ASingle;
  Fy_Specified := True;
end;

function LocalLocation.y_Specified(Index: Integer): boolean;
begin
  Result := Fy_Specified;
end;

procedure LocalLocation.Setz(Index: Integer; const ASingle: Single);
begin
  Fz := ASingle;
  Fz_Specified := True;
end;

function LocalLocation.z_Specified(Index: Integer): boolean;
begin
  Result := Fz_Specified;
end;

procedure GeoOrientation.Setroll(Index: Integer; const ASingle: Single);
begin
  Froll := ASingle;
  Froll_Specified := True;
end;

function GeoOrientation.roll_Specified(Index: Integer): boolean;
begin
  Result := Froll_Specified;
end;

procedure GeoOrientation.Setpitch(Index: Integer; const ASingle: Single);
begin
  Fpitch := ASingle;
  Fpitch_Specified := True;
end;

function GeoOrientation.pitch_Specified(Index: Integer): boolean;
begin
  Result := Fpitch_Specified;
end;

procedure GeoOrientation.Setyaw(Index: Integer; const ASingle: Single);
begin
  Fyaw := ASingle;
  Fyaw_Specified := True;
end;

function GeoOrientation.yaw_Specified(Index: Integer): boolean;
begin
  Result := Fyaw_Specified;
end;

constructor SetNetworkInterfaces.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SetNetworkInterfaces.Destroy;
begin
  SysUtils.FreeAndNil(FNetworkInterface);
  inherited Destroy;
end;

constructor SetZeroConfiguration.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetDot1XConfiguration.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor SetRelayOutputSettings.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SetRelayOutputSettings.Destroy;
begin
  SysUtils.FreeAndNil(FProperties);
  inherited Destroy;
end;

destructor PaneLayout.Destroy;
begin
  SysUtils.FreeAndNil(FArea);
  inherited Destroy;
end;

destructor LocationEntity.Destroy;
begin
  SysUtils.FreeAndNil(FGeoLocation);
  SysUtils.FreeAndNil(FGeoOrientation);
  SysUtils.FreeAndNil(FLocalLocation);
  SysUtils.FreeAndNil(FLocalOrientation);
  inherited Destroy;
end;

procedure LocationEntity.SetEntity(Index: Integer; const Astring: string);
begin
  FEntity := Astring;
  FEntity_Specified := True;
end;

function LocationEntity.Entity_Specified(Index: Integer): boolean;
begin
  Result := FEntity_Specified;
end;

procedure LocationEntity.SetToken(Index: Integer; const AReferenceToken: ReferenceToken);
begin
  FToken := AReferenceToken;
  FToken_Specified := True;
end;

function LocationEntity.Token_Specified(Index: Integer): boolean;
begin
  Result := FToken_Specified;
end;

procedure LocationEntity.SetFixed(Index: Integer; const ABoolean: Boolean);
begin
  FFixed := ABoolean;
  FFixed_Specified := True;
end;

function LocationEntity.Fixed_Specified(Index: Integer): boolean;
begin
  Result := FFixed_Specified;
end;

procedure LocationEntity.SetGeoSource(Index: Integer; const Astring: string);
begin
  FGeoSource := Astring;
  FGeoSource_Specified := True;
end;

function LocationEntity.GeoSource_Specified(Index: Integer): boolean;
begin
  Result := FGeoSource_Specified;
end;

procedure LocationEntity.SetAutoGeo(Index: Integer; const ABoolean: Boolean);
begin
  FAutoGeo := ABoolean;
  FAutoGeo_Specified := True;
end;

function LocationEntity.AutoGeo_Specified(Index: Integer): boolean;
begin
  Result := FAutoGeo_Specified;
end;

procedure LocationEntity.SetGeoLocation(Index: Integer; const AGeoLocation: GeoLocation);
begin
  FGeoLocation := AGeoLocation;
  FGeoLocation_Specified := True;
end;

function LocationEntity.GeoLocation_Specified(Index: Integer): boolean;
begin
  Result := FGeoLocation_Specified;
end;

procedure LocationEntity.SetGeoOrientation(Index: Integer; const AGeoOrientation: GeoOrientation);
begin
  FGeoOrientation := AGeoOrientation;
  FGeoOrientation_Specified := True;
end;

function LocationEntity.GeoOrientation_Specified(Index: Integer): boolean;
begin
  Result := FGeoOrientation_Specified;
end;

procedure LocationEntity.SetLocalLocation(Index: Integer; const ALocalLocation: LocalLocation);
begin
  FLocalLocation := ALocalLocation;
  FLocalLocation_Specified := True;
end;

function LocationEntity.LocalLocation_Specified(Index: Integer): boolean;
begin
  Result := FLocalLocation_Specified;
end;

procedure LocationEntity.SetLocalOrientation(Index: Integer; const ALocalOrientation: LocalOrientation);
begin
  FLocalOrientation := ALocalOrientation;
  FLocalOrientation_Specified := True;
end;

function LocationEntity.LocalOrientation_Specified(Index: Integer): boolean;
begin
  Result := FLocalOrientation_Specified;
end;

procedure LocalOrientation.Setpan(Index: Integer; const ASingle: Single);
begin
  Fpan := ASingle;
  Fpan_Specified := True;
end;

function LocalOrientation.pan_Specified(Index: Integer): boolean;
begin
  Result := Fpan_Specified;
end;

procedure LocalOrientation.Settilt(Index: Integer; const ASingle: Single);
begin
  Ftilt := ASingle;
  Ftilt_Specified := True;
end;

function LocalOrientation.tilt_Specified(Index: Integer): boolean;
begin
  Result := Ftilt_Specified;
end;

procedure LocalOrientation.Setroll(Index: Integer; const ASingle: Single);
begin
  Froll := ASingle;
  Froll_Specified := True;
end;

function LocalOrientation.roll_Specified(Index: Integer): boolean;
begin
  Result := Froll_Specified;
end;

procedure Color.SetColorspace(Index: Integer; const Astring: string);
begin
  FColorspace := Astring;
  FColorspace_Specified := True;
end;

function Color.Colorspace_Specified(Index: Integer): boolean;
begin
  Result := FColorspace_Specified;
end;

destructor User.Destroy;
begin
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure User.SetPassword(Index: Integer; const Astring: string);
begin
  FPassword := Astring;
  FPassword_Specified := True;
end;

function User.Password_Specified(Index: Integer): boolean;
begin
  Result := FPassword_Specified;
end;

procedure User.SetExtension(Index: Integer; const AUserExtension: UserExtension);
begin
  FExtension := AUserExtension;
  FExtension_Specified := True;
end;

function User.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

procedure GeoLocation.Setlon(Index: Integer; const ADouble: Double);
begin
  Flon := ADouble;
  Flon_Specified := True;
end;

function GeoLocation.lon_Specified(Index: Integer): boolean;
begin
  Result := Flon_Specified;
end;

procedure GeoLocation.Setlat(Index: Integer; const ADouble: Double);
begin
  Flat := ADouble;
  Flat_Specified := True;
end;

function GeoLocation.lat_Specified(Index: Integer): boolean;
begin
  Result := Flat_Specified;
end;

procedure GeoLocation.Setelevation(Index: Integer; const ASingle: Single);
begin
  Felevation := ASingle;
  Felevation_Specified := True;
end;

function GeoLocation.elevation_Specified(Index: Integer): boolean;
begin
  Result := Felevation_Specified;
end;

procedure RemoteUser.SetPassword(Index: Integer; const Astring: string);
begin
  FPassword := Astring;
  FPassword_Specified := True;
end;

function RemoteUser.Password_Specified(Index: Integer): boolean;
begin
  Result := FPassword_Specified;
end;

constructor CreateStorageConfigurationResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetStorageConfiguration.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetStorageConfigurationResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetStorageConfigurationResponse.Destroy;
begin
  SysUtils.FreeAndNil(FStorageConfiguration);
  inherited Destroy;
end;

constructor GetStorageConfigurations.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor CreateStorageConfiguration.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor CreateStorageConfiguration.Destroy;
begin
  SysUtils.FreeAndNil(FStorageConfiguration);
  inherited Destroy;
end;

constructor DeleteStorageConfigurationResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetGeoLocation.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor SetStorageConfiguration.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SetStorageConfiguration.Destroy;
begin
  SysUtils.FreeAndNil(FStorageConfiguration);
  inherited Destroy;
end;

constructor SetStorageConfigurationResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor DeleteStorageConfiguration.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor ScanAvailableDot11Networks.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetSystemUris.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetDot11CapabilitiesResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetDot11CapabilitiesResponse.Destroy;
begin
  SysUtils.FreeAndNil(FCapabilities);
  inherited Destroy;
end;

constructor GetDot11Status.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetDot11StatusResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetDot11StatusResponse.Destroy;
begin
  SysUtils.FreeAndNil(FStatus);
  inherited Destroy;
end;

constructor StartSystemRestore.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetSystemUrisResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetSystemUrisResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FSystemLogUris)-1 do
    SysUtils.FreeAndNil(FSystemLogUris[I]);
  System.SetLength(FSystemLogUris, 0);
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure GetSystemUrisResponse.SetSystemLogUris(Index: Integer; const ASystemLogUriList: SystemLogUriList);
begin
  FSystemLogUris := ASystemLogUriList;
  FSystemLogUris_Specified := True;
end;

function GetSystemUrisResponse.SystemLogUris_Specified(Index: Integer): boolean;
begin
  Result := FSystemLogUris_Specified;
end;

procedure GetSystemUrisResponse.SetSupportInfoUri(Index: Integer; const Astring: string);
begin
  FSupportInfoUri := Astring;
  FSupportInfoUri_Specified := True;
end;

function GetSystemUrisResponse.SupportInfoUri_Specified(Index: Integer): boolean;
begin
  Result := FSupportInfoUri_Specified;
end;

procedure GetSystemUrisResponse.SetSystemBackupUri(Index: Integer; const Astring: string);
begin
  FSystemBackupUri := Astring;
  FSystemBackupUri_Specified := True;
end;

function GetSystemUrisResponse.SystemBackupUri_Specified(Index: Integer): boolean;
begin
  Result := FSystemBackupUri_Specified;
end;

procedure GetSystemUrisResponse.SetExtension(Index: Integer; const AExtension: Extension);
begin
  FExtension := AExtension;
  FExtension_Specified := True;
end;

function GetSystemUrisResponse.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

constructor StartFirmwareUpgrade.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SystemLog.Destroy;
begin
  SysUtils.FreeAndNil(FBinary);
  inherited Destroy;
end;

procedure SystemLog.SetBinary(Index: Integer; const AAttachmentData: AttachmentData);
begin
  FBinary := AAttachmentData;
  FBinary_Specified := True;
end;

function SystemLog.Binary_Specified(Index: Integer): boolean;
begin
  Result := FBinary_Specified;
end;

procedure SystemLog.SetString_(Index: Integer; const Astring: string);
begin
  FString_ := Astring;
  FString__Specified := True;
end;

function SystemLog.String__Specified(Index: Integer): boolean;
begin
  Result := FString__Specified;
end;

destructor AttachmentData.Destroy;
begin
  SysUtils.FreeAndNil(FInclude);
  inherited Destroy;
end;

procedure AttachmentData.SetcontentType(Index: Integer; const AcontentType: contentType);
begin
  FcontentType := AcontentType;
  FcontentType_Specified := True;
end;

function AttachmentData.contentType_Specified(Index: Integer): boolean;
begin
  Result := FcontentType_Specified;
end;

destructor SystemCapabilitiesExtension.Destroy;
begin
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure SystemCapabilitiesExtension.SetHttpFirmwareUpgrade(Index: Integer; const ABoolean: Boolean);
begin
  FHttpFirmwareUpgrade := ABoolean;
  FHttpFirmwareUpgrade_Specified := True;
end;

function SystemCapabilitiesExtension.HttpFirmwareUpgrade_Specified(Index: Integer): boolean;
begin
  Result := FHttpFirmwareUpgrade_Specified;
end;

procedure SystemCapabilitiesExtension.SetHttpSystemBackup(Index: Integer; const ABoolean: Boolean);
begin
  FHttpSystemBackup := ABoolean;
  FHttpSystemBackup_Specified := True;
end;

function SystemCapabilitiesExtension.HttpSystemBackup_Specified(Index: Integer): boolean;
begin
  Result := FHttpSystemBackup_Specified;
end;

procedure SystemCapabilitiesExtension.SetHttpSystemLogging(Index: Integer; const ABoolean: Boolean);
begin
  FHttpSystemLogging := ABoolean;
  FHttpSystemLogging_Specified := True;
end;

function SystemCapabilitiesExtension.HttpSystemLogging_Specified(Index: Integer): boolean;
begin
  Result := FHttpSystemLogging_Specified;
end;

procedure SystemCapabilitiesExtension.SetHttpSupportInformation(Index: Integer; const ABoolean: Boolean);
begin
  FHttpSupportInformation := ABoolean;
  FHttpSupportInformation_Specified := True;
end;

function SystemCapabilitiesExtension.HttpSupportInformation_Specified(Index: Integer): boolean;
begin
  Result := FHttpSupportInformation_Specified;
end;

procedure SystemCapabilitiesExtension.SetExtension(Index: Integer; const ASystemCapabilitiesExtension2: SystemCapabilitiesExtension2);
begin
  FExtension := ASystemCapabilitiesExtension2;
  FExtension_Specified := True;
end;

function SystemCapabilitiesExtension.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

destructor RealTimeStreamingCapabilities.Destroy;
begin
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure RealTimeStreamingCapabilities.SetRTPMulticast(Index: Integer; const ABoolean: Boolean);
begin
  FRTPMulticast := ABoolean;
  FRTPMulticast_Specified := True;
end;

function RealTimeStreamingCapabilities.RTPMulticast_Specified(Index: Integer): boolean;
begin
  Result := FRTPMulticast_Specified;
end;

procedure RealTimeStreamingCapabilities.SetRTP_TCP(Index: Integer; const ABoolean: Boolean);
begin
  FRTP_TCP := ABoolean;
  FRTP_TCP_Specified := True;
end;

function RealTimeStreamingCapabilities.RTP_TCP_Specified(Index: Integer): boolean;
begin
  Result := FRTP_TCP_Specified;
end;

procedure RealTimeStreamingCapabilities.SetRTP_RTSP_TCP(Index: Integer; const ABoolean: Boolean);
begin
  FRTP_RTSP_TCP := ABoolean;
  FRTP_RTSP_TCP_Specified := True;
end;

function RealTimeStreamingCapabilities.RTP_RTSP_TCP_Specified(Index: Integer): boolean;
begin
  Result := FRTP_RTSP_TCP_Specified;
end;

procedure RealTimeStreamingCapabilities.SetExtension(Index: Integer; const ARealTimeStreamingCapabilitiesExtension: RealTimeStreamingCapabilitiesExtension);
begin
  FExtension := ARealTimeStreamingCapabilitiesExtension;
  FExtension_Specified := True;
end;

function RealTimeStreamingCapabilities.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

destructor MediaCapabilitiesExtension.Destroy;
begin
  SysUtils.FreeAndNil(FProfileCapabilities);
  inherited Destroy;
end;

constructor SetGeoLocationResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor DeleteGeoLocationResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SecurityCapabilitiesExtension.Destroy;
begin
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure SecurityCapabilitiesExtension.SetExtension(Index: Integer; const ASecurityCapabilitiesExtension2: SecurityCapabilitiesExtension2);
begin
  FExtension := ASecurityCapabilitiesExtension2;
  FExtension_Specified := True;
end;

function SecurityCapabilitiesExtension.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

destructor NetworkCapabilitiesExtension.Destroy;
begin
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure NetworkCapabilitiesExtension.SetDot11Configuration(Index: Integer; const ABoolean: Boolean);
begin
  FDot11Configuration := ABoolean;
  FDot11Configuration_Specified := True;
end;

function NetworkCapabilitiesExtension.Dot11Configuration_Specified(Index: Integer): boolean;
begin
  Result := FDot11Configuration_Specified;
end;

procedure NetworkCapabilitiesExtension.SetExtension(Index: Integer; const ANetworkCapabilitiesExtension2: NetworkCapabilitiesExtension2);
begin
  FExtension := ANetworkCapabilitiesExtension2;
  FExtension_Specified := True;
end;

function NetworkCapabilitiesExtension.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

constructor CreateUsersResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor IPv4NetworkInterfaceSetConfiguration.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FManual)-1 do
    SysUtils.FreeAndNil(FManual[I]);
  System.SetLength(FManual, 0);
  inherited Destroy;
end;

procedure IPv4NetworkInterfaceSetConfiguration.SetEnabled(Index: Integer; const ABoolean: Boolean);
begin
  FEnabled := ABoolean;
  FEnabled_Specified := True;
end;

function IPv4NetworkInterfaceSetConfiguration.Enabled_Specified(Index: Integer): boolean;
begin
  Result := FEnabled_Specified;
end;

procedure IPv4NetworkInterfaceSetConfiguration.SetManual(Index: Integer; const AArray_Of_PrefixedIPv4Address: Array_Of_PrefixedIPv4Address);
begin
  FManual := AArray_Of_PrefixedIPv4Address;
  FManual_Specified := True;
end;

function IPv4NetworkInterfaceSetConfiguration.Manual_Specified(Index: Integer): boolean;
begin
  Result := FManual_Specified;
end;

procedure IPv4NetworkInterfaceSetConfiguration.SetDHCP(Index: Integer; const ABoolean: Boolean);
begin
  FDHCP := ABoolean;
  FDHCP_Specified := True;
end;

function IPv4NetworkInterfaceSetConfiguration.DHCP_Specified(Index: Integer): boolean;
begin
  Result := FDHCP_Specified;
end;

destructor NetworkInterfaceSetConfigurationExtension.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FDot3)-1 do
    SysUtils.FreeAndNil(FDot3[I]);
  System.SetLength(FDot3, 0);
  for I := 0 to System.Length(FDot11)-1 do
    SysUtils.FreeAndNil(FDot11[I]);
  System.SetLength(FDot11, 0);
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure NetworkInterfaceSetConfigurationExtension.SetDot3(Index: Integer; const AArray_Of_Dot3Configuration: Array_Of_Dot3Configuration);
begin
  FDot3 := AArray_Of_Dot3Configuration;
  FDot3_Specified := True;
end;

function NetworkInterfaceSetConfigurationExtension.Dot3_Specified(Index: Integer): boolean;
begin
  Result := FDot3_Specified;
end;

procedure NetworkInterfaceSetConfigurationExtension.SetDot11(Index: Integer; const AArray_Of_Dot11Configuration: Array_Of_Dot11Configuration);
begin
  FDot11 := AArray_Of_Dot11Configuration;
  FDot11_Specified := True;
end;

function NetworkInterfaceSetConfigurationExtension.Dot11_Specified(Index: Integer): boolean;
begin
  Result := FDot11_Specified;
end;

procedure NetworkInterfaceSetConfigurationExtension.SetExtension(Index: Integer; const ANetworkInterfaceSetConfigurationExtension2: NetworkInterfaceSetConfigurationExtension2);
begin
  FExtension := ANetworkInterfaceSetConfigurationExtension2;
  FExtension_Specified := True;
end;

function NetworkInterfaceSetConfigurationExtension.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

destructor CertificateWithPrivateKey.Destroy;
begin
  SysUtils.FreeAndNil(FCertificate);
  SysUtils.FreeAndNil(FPrivateKey);
  inherited Destroy;
end;

procedure CertificateWithPrivateKey.SetCertificateID(Index: Integer; const Astring: string);
begin
  FCertificateID := Astring;
  FCertificateID_Specified := True;
end;

function CertificateWithPrivateKey.CertificateID_Specified(Index: Integer): boolean;
begin
  Result := FCertificateID_Specified;
end;

destructor Certificate.Destroy;
begin
  SysUtils.FreeAndNil(FCertificate);
  inherited Destroy;
end;

constructor SetHostname.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetCertificateInformation.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor CreateCertificate.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor CreateCertificate.Destroy;
begin
  SysUtils.FreeAndNil(FValidNotBefore);
  SysUtils.FreeAndNil(FValidNotAfter);
  inherited Destroy;
end;

procedure CreateCertificate.SetCertificateID(Index: Integer; const Astring: string);
begin
  FCertificateID := Astring;
  FCertificateID_Specified := True;
end;

function CreateCertificate.CertificateID_Specified(Index: Integer): boolean;
begin
  Result := FCertificateID_Specified;
end;

procedure CreateCertificate.SetSubject(Index: Integer; const Astring: string);
begin
  FSubject := Astring;
  FSubject_Specified := True;
end;

function CreateCertificate.Subject_Specified(Index: Integer): boolean;
begin
  Result := FSubject_Specified;
end;

procedure CreateCertificate.SetValidNotBefore(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FValidNotBefore := ATXSDateTime;
  FValidNotBefore_Specified := True;
end;

function CreateCertificate.ValidNotBefore_Specified(Index: Integer): boolean;
begin
  Result := FValidNotBefore_Specified;
end;

procedure CreateCertificate.SetValidNotAfter(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FValidNotAfter := ATXSDateTime;
  FValidNotAfter_Specified := True;
end;

function CreateCertificate.ValidNotAfter_Specified(Index: Integer): boolean;
begin
  Result := FValidNotAfter_Specified;
end;

constructor SetDNS.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SetDNS.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FDNSManual)-1 do
    SysUtils.FreeAndNil(FDNSManual[I]);
  System.SetLength(FDNSManual, 0);
  inherited Destroy;
end;

procedure SetDNS.SetSearchDomain(Index: Integer; const ADeleteCertificates: DeleteCertificates);
begin
  FSearchDomain := ADeleteCertificates;
  FSearchDomain_Specified := True;
end;

function SetDNS.SearchDomain_Specified(Index: Integer): boolean;
begin
  Result := FSearchDomain_Specified;
end;

procedure SetDNS.SetDNSManual(Index: Integer; const AArray_Of_IPAddress: Array_Of_IPAddress);
begin
  FDNSManual := AArray_Of_IPAddress;
  FDNSManual_Specified := True;
end;

function SetDNS.DNSManual_Specified(Index: Integer): boolean;
begin
  Result := FDNSManual_Specified;
end;

constructor GetPkcs10Request.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetPkcs10Request.Destroy;
begin
  SysUtils.FreeAndNil(FAttributes);
  inherited Destroy;
end;

procedure GetPkcs10Request.SetSubject(Index: Integer; const Astring: string);
begin
  FSubject := Astring;
  FSubject_Specified := True;
end;

function GetPkcs10Request.Subject_Specified(Index: Integer): boolean;
begin
  Result := FSubject_Specified;
end;

procedure GetPkcs10Request.SetAttributes(Index: Integer; const ABinaryData: BinaryData);
begin
  FAttributes := ABinaryData;
  FAttributes_Specified := True;
end;

function GetPkcs10Request.Attributes_Specified(Index: Integer): boolean;
begin
  Result := FAttributes_Specified;
end;

destructor OSDPosConfiguration.Destroy;
begin
  SysUtils.FreeAndNil(FPos);
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure OSDPosConfiguration.SetPos(Index: Integer; const AVector: Vector);
begin
  FPos := AVector;
  FPos_Specified := True;
end;

function OSDPosConfiguration.Pos_Specified(Index: Integer): boolean;
begin
  Result := FPos_Specified;
end;

procedure OSDPosConfiguration.SetExtension(Index: Integer; const AOSDPosConfigurationExtension: OSDPosConfigurationExtension);
begin
  FExtension := AOSDPosConfigurationExtension;
  FExtension_Specified := True;
end;

function OSDPosConfiguration.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

destructor HostnameInformation.Destroy;
begin
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure HostnameInformation.SetName_(Index: Integer; const Astring: string);
begin
  FName_ := Astring;
  FName__Specified := True;
end;

function HostnameInformation.Name__Specified(Index: Integer): boolean;
begin
  Result := FName__Specified;
end;

procedure HostnameInformation.SetExtension(Index: Integer; const AHostnameInformationExtension: HostnameInformationExtension);
begin
  FExtension := AHostnameInformationExtension;
  FExtension_Specified := True;
end;

function HostnameInformation.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

destructor DNSInformation.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FDNSFromDHCP)-1 do
    SysUtils.FreeAndNil(FDNSFromDHCP[I]);
  System.SetLength(FDNSFromDHCP, 0);
  for I := 0 to System.Length(FDNSManual)-1 do
    SysUtils.FreeAndNil(FDNSManual[I]);
  System.SetLength(FDNSManual, 0);
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure DNSInformation.SetSearchDomain(Index: Integer; const ADeleteCertificates: DeleteCertificates);
begin
  FSearchDomain := ADeleteCertificates;
  FSearchDomain_Specified := True;
end;

function DNSInformation.SearchDomain_Specified(Index: Integer): boolean;
begin
  Result := FSearchDomain_Specified;
end;

procedure DNSInformation.SetDNSFromDHCP(Index: Integer; const AArray_Of_IPAddress: Array_Of_IPAddress);
begin
  FDNSFromDHCP := AArray_Of_IPAddress;
  FDNSFromDHCP_Specified := True;
end;

function DNSInformation.DNSFromDHCP_Specified(Index: Integer): boolean;
begin
  Result := FDNSFromDHCP_Specified;
end;

procedure DNSInformation.SetDNSManual(Index: Integer; const AArray_Of_IPAddress: Array_Of_IPAddress);
begin
  FDNSManual := AArray_Of_IPAddress;
  FDNSManual_Specified := True;
end;

function DNSInformation.DNSManual_Specified(Index: Integer): boolean;
begin
  Result := FDNSManual_Specified;
end;

procedure DNSInformation.SetExtension(Index: Integer; const ADNSInformationExtension: DNSInformationExtension);
begin
  FExtension := ADNSInformationExtension;
  FExtension_Specified := True;
end;

function DNSInformation.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

destructor Dot11SecurityConfiguration.Destroy;
begin
  SysUtils.FreeAndNil(FPSK);
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure Dot11SecurityConfiguration.SetAlgorithm(Index: Integer; const ADot11Cipher: Dot11Cipher);
begin
  FAlgorithm := ADot11Cipher;
  FAlgorithm_Specified := True;
end;

function Dot11SecurityConfiguration.Algorithm_Specified(Index: Integer): boolean;
begin
  Result := FAlgorithm_Specified;
end;

procedure Dot11SecurityConfiguration.SetPSK(Index: Integer; const ADot11PSKSet: Dot11PSKSet);
begin
  FPSK := ADot11PSKSet;
  FPSK_Specified := True;
end;

function Dot11SecurityConfiguration.PSK_Specified(Index: Integer): boolean;
begin
  Result := FPSK_Specified;
end;

procedure Dot11SecurityConfiguration.SetDot1X(Index: Integer; const AReferenceToken: ReferenceToken);
begin
  FDot1X := AReferenceToken;
  FDot1X_Specified := True;
end;

function Dot11SecurityConfiguration.Dot1X_Specified(Index: Integer): boolean;
begin
  Result := FDot1X_Specified;
end;

procedure Dot11SecurityConfiguration.SetExtension(Index: Integer; const ADot11SecurityConfigurationExtension: Dot11SecurityConfigurationExtension);
begin
  FExtension := ADot11SecurityConfigurationExtension;
  FExtension_Specified := True;
end;

function Dot11SecurityConfiguration.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

destructor Dot11PSKSet.Destroy;
begin
  SysUtils.FreeAndNil(FKey);
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure Dot11PSKSet.SetKey(Index: Integer; const ADot11PSK: Dot11PSK);
begin
  FKey := ADot11PSK;
  FKey_Specified := True;
end;

function Dot11PSKSet.Key_Specified(Index: Integer): boolean;
begin
  Result := FKey_Specified;
end;

procedure Dot11PSKSet.SetPassphrase(Index: Integer; const ADot11PSKPassphrase: Dot11PSKPassphrase);
begin
  FPassphrase := ADot11PSKPassphrase;
  FPassphrase_Specified := True;
end;

function Dot11PSKSet.Passphrase_Specified(Index: Integer): boolean;
begin
  Result := FPassphrase_Specified;
end;

procedure Dot11PSKSet.SetExtension(Index: Integer; const ADot11PSKSetExtension: Dot11PSKSetExtension);
begin
  FExtension := ADot11PSKSetExtension;
  FExtension_Specified := True;
end;

function Dot11PSKSet.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

destructor NetworkZeroConfigurationExtension.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FAdditional)-1 do
    SysUtils.FreeAndNil(FAdditional[I]);
  System.SetLength(FAdditional, 0);
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure NetworkZeroConfigurationExtension.SetAdditional(Index: Integer; const AArray_Of_NetworkZeroConfiguration: Array_Of_NetworkZeroConfiguration);
begin
  FAdditional := AArray_Of_NetworkZeroConfiguration;
  FAdditional_Specified := True;
end;

function NetworkZeroConfigurationExtension.Additional_Specified(Index: Integer): boolean;
begin
  Result := FAdditional_Specified;
end;

procedure NetworkZeroConfigurationExtension.SetExtension(Index: Integer; const ANetworkZeroConfigurationExtension2: NetworkZeroConfigurationExtension2);
begin
  FExtension := ANetworkZeroConfigurationExtension2;
  FExtension_Specified := True;
end;

function NetworkZeroConfigurationExtension.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

destructor OSDImgConfiguration.Destroy;
begin
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure OSDImgConfiguration.SetExtension(Index: Integer; const AOSDImgConfigurationExtension: OSDImgConfigurationExtension);
begin
  FExtension := AOSDImgConfigurationExtension;
  FExtension_Specified := True;
end;

function OSDImgConfiguration.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

procedure Description.Setlang(Index: Integer; const Astring: string);
begin
  Flang := Astring;
  Flang_Specified := True;
end;

function Description.lang_Specified(Index: Integer): boolean;
begin
  Result := Flang_Specified;
end;

destructor IPAddressFilter.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FIPv4Address)-1 do
    SysUtils.FreeAndNil(FIPv4Address[I]);
  System.SetLength(FIPv4Address, 0);
  for I := 0 to System.Length(FIPv6Address)-1 do
    SysUtils.FreeAndNil(FIPv6Address[I]);
  System.SetLength(FIPv6Address, 0);
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure IPAddressFilter.SetIPv4Address(Index: Integer; const AArray_Of_PrefixedIPv4Address: Array_Of_PrefixedIPv4Address);
begin
  FIPv4Address := AArray_Of_PrefixedIPv4Address;
  FIPv4Address_Specified := True;
end;

function IPAddressFilter.IPv4Address_Specified(Index: Integer): boolean;
begin
  Result := FIPv4Address_Specified;
end;

procedure IPAddressFilter.SetIPv6Address(Index: Integer; const AArray_Of_PrefixedIPv6Address: Array_Of_PrefixedIPv6Address);
begin
  FIPv6Address := AArray_Of_PrefixedIPv6Address;
  FIPv6Address_Specified := True;
end;

function IPAddressFilter.IPv6Address_Specified(Index: Integer): boolean;
begin
  Result := FIPv6Address_Specified;
end;

procedure IPAddressFilter.SetExtension(Index: Integer; const AIPAddressFilterExtension: IPAddressFilterExtension);
begin
  FExtension := AIPAddressFilterExtension;
  FExtension_Specified := True;
end;

function IPAddressFilter.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

destructor ImagingSettings20.Destroy;
begin
  SysUtils.FreeAndNil(FBacklightCompensation);
  SysUtils.FreeAndNil(FExposure);
  SysUtils.FreeAndNil(FFocus);
  SysUtils.FreeAndNil(FWideDynamicRange);
  SysUtils.FreeAndNil(FWhiteBalance);
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure ImagingSettings20.SetBacklightCompensation(Index: Integer; const ABacklightCompensation20: BacklightCompensation20);
begin
  FBacklightCompensation := ABacklightCompensation20;
  FBacklightCompensation_Specified := True;
end;

function ImagingSettings20.BacklightCompensation_Specified(Index: Integer): boolean;
begin
  Result := FBacklightCompensation_Specified;
end;

procedure ImagingSettings20.SetBrightness(Index: Integer; const ASingle: Single);
begin
  FBrightness := ASingle;
  FBrightness_Specified := True;
end;

function ImagingSettings20.Brightness_Specified(Index: Integer): boolean;
begin
  Result := FBrightness_Specified;
end;

procedure ImagingSettings20.SetColorSaturation(Index: Integer; const ASingle: Single);
begin
  FColorSaturation := ASingle;
  FColorSaturation_Specified := True;
end;

function ImagingSettings20.ColorSaturation_Specified(Index: Integer): boolean;
begin
  Result := FColorSaturation_Specified;
end;

procedure ImagingSettings20.SetContrast(Index: Integer; const ASingle: Single);
begin
  FContrast := ASingle;
  FContrast_Specified := True;
end;

function ImagingSettings20.Contrast_Specified(Index: Integer): boolean;
begin
  Result := FContrast_Specified;
end;

procedure ImagingSettings20.SetExposure(Index: Integer; const AExposure20: Exposure20);
begin
  FExposure := AExposure20;
  FExposure_Specified := True;
end;

function ImagingSettings20.Exposure_Specified(Index: Integer): boolean;
begin
  Result := FExposure_Specified;
end;

procedure ImagingSettings20.SetFocus(Index: Integer; const AFocusConfiguration20: FocusConfiguration20);
begin
  FFocus := AFocusConfiguration20;
  FFocus_Specified := True;
end;

function ImagingSettings20.Focus_Specified(Index: Integer): boolean;
begin
  Result := FFocus_Specified;
end;

procedure ImagingSettings20.SetIrCutFilter(Index: Integer; const AIrCutFilterMode: IrCutFilterMode);
begin
  FIrCutFilter := AIrCutFilterMode;
  FIrCutFilter_Specified := True;
end;

function ImagingSettings20.IrCutFilter_Specified(Index: Integer): boolean;
begin
  Result := FIrCutFilter_Specified;
end;

procedure ImagingSettings20.SetSharpness(Index: Integer; const ASingle: Single);
begin
  FSharpness := ASingle;
  FSharpness_Specified := True;
end;

function ImagingSettings20.Sharpness_Specified(Index: Integer): boolean;
begin
  Result := FSharpness_Specified;
end;

procedure ImagingSettings20.SetWideDynamicRange(Index: Integer; const AWideDynamicRange20: WideDynamicRange20);
begin
  FWideDynamicRange := AWideDynamicRange20;
  FWideDynamicRange_Specified := True;
end;

function ImagingSettings20.WideDynamicRange_Specified(Index: Integer): boolean;
begin
  Result := FWideDynamicRange_Specified;
end;

procedure ImagingSettings20.SetWhiteBalance(Index: Integer; const AWhiteBalance20: WhiteBalance20);
begin
  FWhiteBalance := AWhiteBalance20;
  FWhiteBalance_Specified := True;
end;

function ImagingSettings20.WhiteBalance_Specified(Index: Integer): boolean;
begin
  Result := FWhiteBalance_Specified;
end;

procedure ImagingSettings20.SetExtension(Index: Integer; const AImagingSettingsExtension20: ImagingSettingsExtension20);
begin
  FExtension := AImagingSettingsExtension20;
  FExtension_Specified := True;
end;

function ImagingSettings20.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

destructor Layout.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FPaneLayout)-1 do
    SysUtils.FreeAndNil(FPaneLayout[I]);
  System.SetLength(FPaneLayout, 0);
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure Layout.SetExtension(Index: Integer; const ALayoutExtension: LayoutExtension);
begin
  FExtension := ALayoutExtension;
  FExtension_Specified := True;
end;

function Layout.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

destructor VideoOutput.Destroy;
begin
  SysUtils.FreeAndNil(FLayout);
  SysUtils.FreeAndNil(FResolution);
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure VideoOutput.SetResolution(Index: Integer; const AVideoResolution: VideoResolution);
begin
  FResolution := AVideoResolution;
  FResolution_Specified := True;
end;

function VideoOutput.Resolution_Specified(Index: Integer): boolean;
begin
  Result := FResolution_Specified;
end;

procedure VideoOutput.SetRefreshRate(Index: Integer; const ASingle: Single);
begin
  FRefreshRate := ASingle;
  FRefreshRate_Specified := True;
end;

function VideoOutput.RefreshRate_Specified(Index: Integer): boolean;
begin
  Result := FRefreshRate_Specified;
end;

procedure VideoOutput.SetAspectRatio(Index: Integer; const ASingle: Single);
begin
  FAspectRatio := ASingle;
  FAspectRatio_Specified := True;
end;

function VideoOutput.AspectRatio_Specified(Index: Integer): boolean;
begin
  Result := FAspectRatio_Specified;
end;

procedure VideoOutput.SetExtension(Index: Integer; const AVideoOutputExtension: VideoOutputExtension);
begin
  FExtension := AVideoOutputExtension;
  FExtension_Specified := True;
end;

function VideoOutput.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

destructor OSDConfiguration.Destroy;
begin
  SysUtils.FreeAndNil(FVideoSourceConfigurationToken);
  SysUtils.FreeAndNil(FPosition);
  SysUtils.FreeAndNil(FTextString);
  SysUtils.FreeAndNil(FImage);
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure OSDConfiguration.SetTextString(Index: Integer; const AOSDTextConfiguration: OSDTextConfiguration);
begin
  FTextString := AOSDTextConfiguration;
  FTextString_Specified := True;
end;

function OSDConfiguration.TextString_Specified(Index: Integer): boolean;
begin
  Result := FTextString_Specified;
end;

procedure OSDConfiguration.SetImage(Index: Integer; const AOSDImgConfiguration: OSDImgConfiguration);
begin
  FImage := AOSDImgConfiguration;
  FImage_Specified := True;
end;

function OSDConfiguration.Image_Specified(Index: Integer): boolean;
begin
  Result := FImage_Specified;
end;

procedure OSDConfiguration.SetExtension(Index: Integer; const AOSDConfigurationExtension: OSDConfigurationExtension);
begin
  FExtension := AOSDConfigurationExtension;
  FExtension_Specified := True;
end;

function OSDConfiguration.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

procedure DigitalInput.SetIdleState(Index: Integer; const ADigitalIdleState: DigitalIdleState);
begin
  FIdleState := ADigitalIdleState;
  FIdleState_Specified := True;
end;

function DigitalInput.IdleState_Specified(Index: Integer): boolean;
begin
  Result := FIdleState_Specified;
end;

destructor RelayOutput.Destroy;
begin
  SysUtils.FreeAndNil(FProperties);
  inherited Destroy;
end;

destructor OSDTextConfiguration.Destroy;
begin
  SysUtils.FreeAndNil(FFontColor);
  SysUtils.FreeAndNil(FBackgroundColor);
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure OSDTextConfiguration.SetIsPersistentText(Index: Integer; const ABoolean: Boolean);
begin
  FIsPersistentText := ABoolean;
  FIsPersistentText_Specified := True;
end;

function OSDTextConfiguration.IsPersistentText_Specified(Index: Integer): boolean;
begin
  Result := FIsPersistentText_Specified;
end;

procedure OSDTextConfiguration.SetDateFormat(Index: Integer; const Astring: string);
begin
  FDateFormat := Astring;
  FDateFormat_Specified := True;
end;

function OSDTextConfiguration.DateFormat_Specified(Index: Integer): boolean;
begin
  Result := FDateFormat_Specified;
end;

procedure OSDTextConfiguration.SetTimeFormat(Index: Integer; const Astring: string);
begin
  FTimeFormat := Astring;
  FTimeFormat_Specified := True;
end;

function OSDTextConfiguration.TimeFormat_Specified(Index: Integer): boolean;
begin
  Result := FTimeFormat_Specified;
end;

procedure OSDTextConfiguration.SetFontSize(Index: Integer; const AInteger: Integer);
begin
  FFontSize := AInteger;
  FFontSize_Specified := True;
end;

function OSDTextConfiguration.FontSize_Specified(Index: Integer): boolean;
begin
  Result := FFontSize_Specified;
end;

procedure OSDTextConfiguration.SetFontColor(Index: Integer; const AOSDColor: OSDColor);
begin
  FFontColor := AOSDColor;
  FFontColor_Specified := True;
end;

function OSDTextConfiguration.FontColor_Specified(Index: Integer): boolean;
begin
  Result := FFontColor_Specified;
end;

procedure OSDTextConfiguration.SetBackgroundColor(Index: Integer; const AOSDColor: OSDColor);
begin
  FBackgroundColor := AOSDColor;
  FBackgroundColor_Specified := True;
end;

function OSDTextConfiguration.BackgroundColor_Specified(Index: Integer): boolean;
begin
  Result := FBackgroundColor_Specified;
end;

procedure OSDTextConfiguration.SetPlainText(Index: Integer; const Astring: string);
begin
  FPlainText := Astring;
  FPlainText_Specified := True;
end;

function OSDTextConfiguration.PlainText_Specified(Index: Integer): boolean;
begin
  Result := FPlainText_Specified;
end;

procedure OSDTextConfiguration.SetExtension(Index: Integer; const AOSDTextConfigurationExtension: OSDTextConfigurationExtension);
begin
  FExtension := AOSDTextConfigurationExtension;
  FExtension_Specified := True;
end;

function OSDTextConfiguration.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

destructor OSDColor.Destroy;
begin
  SysUtils.FreeAndNil(FColor);
  inherited Destroy;
end;

procedure OSDColor.SetTransparent(Index: Integer; const AInteger: Integer);
begin
  FTransparent := AInteger;
  FTransparent_Specified := True;
end;

function OSDColor.Transparent_Specified(Index: Integer): boolean;
begin
  Result := FTransparent_Specified;
end;

destructor NetworkInterfaceSetConfiguration.Destroy;
begin
  SysUtils.FreeAndNil(FLink);
  SysUtils.FreeAndNil(FIPv4);
  SysUtils.FreeAndNil(FIPv6);
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure NetworkInterfaceSetConfiguration.SetEnabled(Index: Integer; const ABoolean: Boolean);
begin
  FEnabled := ABoolean;
  FEnabled_Specified := True;
end;

function NetworkInterfaceSetConfiguration.Enabled_Specified(Index: Integer): boolean;
begin
  Result := FEnabled_Specified;
end;

procedure NetworkInterfaceSetConfiguration.SetLink(Index: Integer; const ANetworkInterfaceConnectionSetting: NetworkInterfaceConnectionSetting);
begin
  FLink := ANetworkInterfaceConnectionSetting;
  FLink_Specified := True;
end;

function NetworkInterfaceSetConfiguration.Link_Specified(Index: Integer): boolean;
begin
  Result := FLink_Specified;
end;

procedure NetworkInterfaceSetConfiguration.SetMTU(Index: Integer; const AInteger: Integer);
begin
  FMTU := AInteger;
  FMTU_Specified := True;
end;

function NetworkInterfaceSetConfiguration.MTU_Specified(Index: Integer): boolean;
begin
  Result := FMTU_Specified;
end;

procedure NetworkInterfaceSetConfiguration.SetIPv4(Index: Integer; const AIPv4NetworkInterfaceSetConfiguration: IPv4NetworkInterfaceSetConfiguration);
begin
  FIPv4 := AIPv4NetworkInterfaceSetConfiguration;
  FIPv4_Specified := True;
end;

function NetworkInterfaceSetConfiguration.IPv4_Specified(Index: Integer): boolean;
begin
  Result := FIPv4_Specified;
end;

procedure NetworkInterfaceSetConfiguration.SetIPv6(Index: Integer; const AIPv6NetworkInterfaceSetConfiguration: IPv6NetworkInterfaceSetConfiguration);
begin
  FIPv6 := AIPv6NetworkInterfaceSetConfiguration;
  FIPv6_Specified := True;
end;

function NetworkInterfaceSetConfiguration.IPv6_Specified(Index: Integer): boolean;
begin
  Result := FIPv6_Specified;
end;

procedure NetworkInterfaceSetConfiguration.SetExtension(Index: Integer; const ANetworkInterfaceSetConfigurationExtension: NetworkInterfaceSetConfigurationExtension);
begin
  FExtension := ANetworkInterfaceSetConfigurationExtension;
  FExtension_Specified := True;
end;

function NetworkInterfaceSetConfiguration.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

destructor CertificateInformation.Destroy;
begin
  SysUtils.FreeAndNil(FKeyUsage);
  SysUtils.FreeAndNil(FExtendedKeyUsage);
  SysUtils.FreeAndNil(FValidity);
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure CertificateInformation.SetIssuerDN(Index: Integer; const Astring: string);
begin
  FIssuerDN := Astring;
  FIssuerDN_Specified := True;
end;

function CertificateInformation.IssuerDN_Specified(Index: Integer): boolean;
begin
  Result := FIssuerDN_Specified;
end;

procedure CertificateInformation.SetSubjectDN(Index: Integer; const Astring: string);
begin
  FSubjectDN := Astring;
  FSubjectDN_Specified := True;
end;

function CertificateInformation.SubjectDN_Specified(Index: Integer): boolean;
begin
  Result := FSubjectDN_Specified;
end;

procedure CertificateInformation.SetKeyUsage(Index: Integer; const ACertificateUsage: CertificateUsage);
begin
  FKeyUsage := ACertificateUsage;
  FKeyUsage_Specified := True;
end;

function CertificateInformation.KeyUsage_Specified(Index: Integer): boolean;
begin
  Result := FKeyUsage_Specified;
end;

procedure CertificateInformation.SetExtendedKeyUsage(Index: Integer; const ACertificateUsage: CertificateUsage);
begin
  FExtendedKeyUsage := ACertificateUsage;
  FExtendedKeyUsage_Specified := True;
end;

function CertificateInformation.ExtendedKeyUsage_Specified(Index: Integer): boolean;
begin
  Result := FExtendedKeyUsage_Specified;
end;

procedure CertificateInformation.SetKeyLength(Index: Integer; const AInteger: Integer);
begin
  FKeyLength := AInteger;
  FKeyLength_Specified := True;
end;

function CertificateInformation.KeyLength_Specified(Index: Integer): boolean;
begin
  Result := FKeyLength_Specified;
end;

procedure CertificateInformation.SetVersion(Index: Integer; const Astring: string);
begin
  FVersion := Astring;
  FVersion_Specified := True;
end;

function CertificateInformation.Version_Specified(Index: Integer): boolean;
begin
  Result := FVersion_Specified;
end;

procedure CertificateInformation.SetSerialNum(Index: Integer; const Astring: string);
begin
  FSerialNum := Astring;
  FSerialNum_Specified := True;
end;

function CertificateInformation.SerialNum_Specified(Index: Integer): boolean;
begin
  Result := FSerialNum_Specified;
end;

procedure CertificateInformation.SetSignatureAlgorithm(Index: Integer; const Astring: string);
begin
  FSignatureAlgorithm := Astring;
  FSignatureAlgorithm_Specified := True;
end;

function CertificateInformation.SignatureAlgorithm_Specified(Index: Integer): boolean;
begin
  Result := FSignatureAlgorithm_Specified;
end;

procedure CertificateInformation.SetValidity(Index: Integer; const ADateTimeRange: DateTimeRange);
begin
  FValidity := ADateTimeRange;
  FValidity_Specified := True;
end;

function CertificateInformation.Validity_Specified(Index: Integer): boolean;
begin
  Result := FValidity_Specified;
end;

procedure CertificateInformation.SetExtension(Index: Integer; const ACertificateInformationExtension: CertificateInformationExtension);
begin
  FExtension := ACertificateInformationExtension;
  FExtension_Specified := True;
end;

function CertificateInformation.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

destructor PTZPresetTourSupported.Destroy;
begin
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure PTZPresetTourSupported.SetPTZPresetTourOperation(Index: Integer; const AArray_Of_PTZPresetTourOperation: Array_Of_PTZPresetTourOperation);
begin
  FPTZPresetTourOperation := AArray_Of_PTZPresetTourOperation;
  FPTZPresetTourOperation_Specified := True;
end;

function PTZPresetTourSupported.PTZPresetTourOperation_Specified(Index: Integer): boolean;
begin
  Result := FPTZPresetTourOperation_Specified;
end;

procedure PTZPresetTourSupported.SetExtension(Index: Integer; const APTZPresetTourSupportedExtension: PTZPresetTourSupportedExtension);
begin
  FExtension := APTZPresetTourSupportedExtension;
  FExtension_Specified := True;
end;

function PTZPresetTourSupported.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

destructor Dot1XConfiguration.Destroy;
begin
  SysUtils.FreeAndNil(FEAPMethodConfiguration);
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure Dot1XConfiguration.SetAnonymousID(Index: Integer; const Astring: string);
begin
  FAnonymousID := Astring;
  FAnonymousID_Specified := True;
end;

function Dot1XConfiguration.AnonymousID_Specified(Index: Integer): boolean;
begin
  Result := FAnonymousID_Specified;
end;

procedure Dot1XConfiguration.SetCACertificateID(Index: Integer; const ADeleteCertificates: DeleteCertificates);
begin
  FCACertificateID := ADeleteCertificates;
  FCACertificateID_Specified := True;
end;

function Dot1XConfiguration.CACertificateID_Specified(Index: Integer): boolean;
begin
  Result := FCACertificateID_Specified;
end;

procedure Dot1XConfiguration.SetEAPMethodConfiguration(Index: Integer; const AEAPMethodConfiguration: EAPMethodConfiguration);
begin
  FEAPMethodConfiguration := AEAPMethodConfiguration;
  FEAPMethodConfiguration_Specified := True;
end;

function Dot1XConfiguration.EAPMethodConfiguration_Specified(Index: Integer): boolean;
begin
  Result := FEAPMethodConfiguration_Specified;
end;

procedure Dot1XConfiguration.SetExtension(Index: Integer; const ADot1XConfigurationExtension: Dot1XConfigurationExtension);
begin
  FExtension := ADot1XConfigurationExtension;
  FExtension_Specified := True;
end;

function Dot1XConfiguration.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

destructor ImagingSettings.Destroy;
begin
  SysUtils.FreeAndNil(FBacklightCompensation);
  SysUtils.FreeAndNil(FExposure);
  SysUtils.FreeAndNil(FFocus);
  SysUtils.FreeAndNil(FWideDynamicRange);
  SysUtils.FreeAndNil(FWhiteBalance);
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure ImagingSettings.SetBacklightCompensation(Index: Integer; const ABacklightCompensation: BacklightCompensation);
begin
  FBacklightCompensation := ABacklightCompensation;
  FBacklightCompensation_Specified := True;
end;

function ImagingSettings.BacklightCompensation_Specified(Index: Integer): boolean;
begin
  Result := FBacklightCompensation_Specified;
end;

procedure ImagingSettings.SetBrightness(Index: Integer; const ASingle: Single);
begin
  FBrightness := ASingle;
  FBrightness_Specified := True;
end;

function ImagingSettings.Brightness_Specified(Index: Integer): boolean;
begin
  Result := FBrightness_Specified;
end;

procedure ImagingSettings.SetColorSaturation(Index: Integer; const ASingle: Single);
begin
  FColorSaturation := ASingle;
  FColorSaturation_Specified := True;
end;

function ImagingSettings.ColorSaturation_Specified(Index: Integer): boolean;
begin
  Result := FColorSaturation_Specified;
end;

procedure ImagingSettings.SetContrast(Index: Integer; const ASingle: Single);
begin
  FContrast := ASingle;
  FContrast_Specified := True;
end;

function ImagingSettings.Contrast_Specified(Index: Integer): boolean;
begin
  Result := FContrast_Specified;
end;

procedure ImagingSettings.SetExposure(Index: Integer; const AExposure: Exposure);
begin
  FExposure := AExposure;
  FExposure_Specified := True;
end;

function ImagingSettings.Exposure_Specified(Index: Integer): boolean;
begin
  Result := FExposure_Specified;
end;

procedure ImagingSettings.SetFocus(Index: Integer; const AFocusConfiguration: FocusConfiguration);
begin
  FFocus := AFocusConfiguration;
  FFocus_Specified := True;
end;

function ImagingSettings.Focus_Specified(Index: Integer): boolean;
begin
  Result := FFocus_Specified;
end;

procedure ImagingSettings.SetIrCutFilter(Index: Integer; const AIrCutFilterMode: IrCutFilterMode);
begin
  FIrCutFilter := AIrCutFilterMode;
  FIrCutFilter_Specified := True;
end;

function ImagingSettings.IrCutFilter_Specified(Index: Integer): boolean;
begin
  Result := FIrCutFilter_Specified;
end;

procedure ImagingSettings.SetSharpness(Index: Integer; const ASingle: Single);
begin
  FSharpness := ASingle;
  FSharpness_Specified := True;
end;

function ImagingSettings.Sharpness_Specified(Index: Integer): boolean;
begin
  Result := FSharpness_Specified;
end;

procedure ImagingSettings.SetWideDynamicRange(Index: Integer; const AWideDynamicRange: WideDynamicRange);
begin
  FWideDynamicRange := AWideDynamicRange;
  FWideDynamicRange_Specified := True;
end;

function ImagingSettings.WideDynamicRange_Specified(Index: Integer): boolean;
begin
  Result := FWideDynamicRange_Specified;
end;

procedure ImagingSettings.SetWhiteBalance(Index: Integer; const AWhiteBalance: WhiteBalance);
begin
  FWhiteBalance := AWhiteBalance;
  FWhiteBalance_Specified := True;
end;

function ImagingSettings.WhiteBalance_Specified(Index: Integer): boolean;
begin
  Result := FWhiteBalance_Specified;
end;

procedure ImagingSettings.SetExtension(Index: Integer; const AImagingSettingsExtension: ImagingSettingsExtension);
begin
  FExtension := AImagingSettingsExtension;
  FExtension_Specified := True;
end;

function ImagingSettings.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

destructor VideoSourceExtension.Destroy;
begin
  SysUtils.FreeAndNil(FImaging);
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure VideoSourceExtension.SetImaging(Index: Integer; const AImagingSettings20: ImagingSettings20);
begin
  FImaging := AImagingSettings20;
  FImaging_Specified := True;
end;

function VideoSourceExtension.Imaging_Specified(Index: Integer): boolean;
begin
  Result := FImaging_Specified;
end;

procedure VideoSourceExtension.SetExtension(Index: Integer; const AVideoSourceExtension2: VideoSourceExtension2);
begin
  FExtension := AVideoSourceExtension2;
  FExtension_Specified := True;
end;

function VideoSourceExtension.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

destructor DynamicDNSInformation.Destroy;
begin
  SysUtils.FreeAndNil(FTTL);
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure DynamicDNSInformation.SetName_(Index: Integer; const ADNSName: DNSName);
begin
  FName_ := ADNSName;
  FName__Specified := True;
end;

function DynamicDNSInformation.Name__Specified(Index: Integer): boolean;
begin
  Result := FName__Specified;
end;

procedure DynamicDNSInformation.SetTTL(Index: Integer; const ATXSDuration: TXSDuration);
begin
  FTTL := ATXSDuration;
  FTTL_Specified := True;
end;

function DynamicDNSInformation.TTL_Specified(Index: Integer): boolean;
begin
  Result := FTTL_Specified;
end;

procedure DynamicDNSInformation.SetExtension(Index: Integer; const ADynamicDNSInformationExtension: DynamicDNSInformationExtension);
begin
  FExtension := ADynamicDNSInformationExtension;
  FExtension_Specified := True;
end;

function DynamicDNSInformation.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

constructor StartSystemRestoreResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor StartSystemRestoreResponse.Destroy;
begin
  SysUtils.FreeAndNil(FExpectedDownTime);
  inherited Destroy;
end;

constructor StartFirmwareUpgradeResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor StartFirmwareUpgradeResponse.Destroy;
begin
  SysUtils.FreeAndNil(FUploadDelay);
  SysUtils.FreeAndNil(FExpectedDownTime);
  inherited Destroy;
end;

constructor SetDynamicDNS.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SetDynamicDNS.Destroy;
begin
  SysUtils.FreeAndNil(FTTL);
  inherited Destroy;
end;

procedure SetDynamicDNS.SetName_(Index: Integer; const ADNSName: DNSName);
begin
  FName_ := ADNSName;
  FName__Specified := True;
end;

function SetDynamicDNS.Name__Specified(Index: Integer): boolean;
begin
  Result := FName__Specified;
end;

procedure SetDynamicDNS.SetTTL(Index: Integer; const ATXSDuration: TXSDuration);
begin
  FTTL := ATXSDuration;
  FTTL_Specified := True;
end;

function SetDynamicDNS.TTL_Specified(Index: Integer): boolean;
begin
  Result := FTTL_Specified;
end;

destructor IrCutFilterAutoAdjustment.Destroy;
begin
  SysUtils.FreeAndNil(FResponseTime);
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure IrCutFilterAutoAdjustment.SetBoundaryOffset(Index: Integer; const ASingle: Single);
begin
  FBoundaryOffset := ASingle;
  FBoundaryOffset_Specified := True;
end;

function IrCutFilterAutoAdjustment.BoundaryOffset_Specified(Index: Integer): boolean;
begin
  Result := FBoundaryOffset_Specified;
end;

procedure IrCutFilterAutoAdjustment.SetResponseTime(Index: Integer; const ATXSDuration: TXSDuration);
begin
  FResponseTime := ATXSDuration;
  FResponseTime_Specified := True;
end;

function IrCutFilterAutoAdjustment.ResponseTime_Specified(Index: Integer): boolean;
begin
  Result := FResponseTime_Specified;
end;

procedure IrCutFilterAutoAdjustment.SetExtension(Index: Integer; const AIrCutFilterAutoAdjustmentExtension: IrCutFilterAutoAdjustmentExtension);
begin
  FExtension := AIrCutFilterAutoAdjustmentExtension;
  FExtension_Specified := True;
end;

function IrCutFilterAutoAdjustment.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

destructor RelayOutputSettings.Destroy;
begin
  SysUtils.FreeAndNil(FDelayTime);
  inherited Destroy;
end;

procedure SecurityCapabilitiesExtension2.SetSupportedEAPMethod(Index: Integer; const AIntList: IntList);
begin
  FSupportedEAPMethod := AIntList;
  FSupportedEAPMethod_Specified := True;
end;

function SecurityCapabilitiesExtension2.SupportedEAPMethod_Specified(Index: Integer): boolean;
begin
  Result := FSupportedEAPMethod_Specified;
end;

destructor VideoSource.Destroy;
begin
  SysUtils.FreeAndNil(FResolution);
  SysUtils.FreeAndNil(FImaging);
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure VideoSource.SetImaging(Index: Integer; const AImagingSettings: ImagingSettings);
begin
  FImaging := AImagingSettings;
  FImaging_Specified := True;
end;

function VideoSource.Imaging_Specified(Index: Integer): boolean;
begin
  Result := FImaging_Specified;
end;

procedure VideoSource.SetExtension(Index: Integer; const AVideoSourceExtension: VideoSourceExtension);
begin
  FExtension := AVideoSourceExtension;
  FExtension_Specified := True;
end;

function VideoSource.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

destructor NetworkInterface.Destroy;
begin
  SysUtils.FreeAndNil(FInfo);
  SysUtils.FreeAndNil(FLink);
  SysUtils.FreeAndNil(FIPv4);
  SysUtils.FreeAndNil(FIPv6);
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure NetworkInterface.SetInfo(Index: Integer; const ANetworkInterfaceInfo: NetworkInterfaceInfo);
begin
  FInfo := ANetworkInterfaceInfo;
  FInfo_Specified := True;
end;

function NetworkInterface.Info_Specified(Index: Integer): boolean;
begin
  Result := FInfo_Specified;
end;

procedure NetworkInterface.SetLink(Index: Integer; const ANetworkInterfaceLink: NetworkInterfaceLink);
begin
  FLink := ANetworkInterfaceLink;
  FLink_Specified := True;
end;

function NetworkInterface.Link_Specified(Index: Integer): boolean;
begin
  Result := FLink_Specified;
end;

procedure NetworkInterface.SetIPv4(Index: Integer; const AIPv4NetworkInterface: IPv4NetworkInterface);
begin
  FIPv4 := AIPv4NetworkInterface;
  FIPv4_Specified := True;
end;

function NetworkInterface.IPv4_Specified(Index: Integer): boolean;
begin
  Result := FIPv4_Specified;
end;

procedure NetworkInterface.SetIPv6(Index: Integer; const AIPv6NetworkInterface: IPv6NetworkInterface);
begin
  FIPv6 := AIPv6NetworkInterface;
  FIPv6_Specified := True;
end;

function NetworkInterface.IPv6_Specified(Index: Integer): boolean;
begin
  Result := FIPv6_Specified;
end;

procedure NetworkInterface.SetExtension(Index: Integer; const ANetworkInterfaceExtension: NetworkInterfaceExtension);
begin
  FExtension := ANetworkInterfaceExtension;
  FExtension_Specified := True;
end;

function NetworkInterface.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

destructor IPv6NetworkInterfaceSetConfiguration.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FManual)-1 do
    SysUtils.FreeAndNil(FManual[I]);
  System.SetLength(FManual, 0);
  inherited Destroy;
end;

procedure IPv6NetworkInterfaceSetConfiguration.SetEnabled(Index: Integer; const ABoolean: Boolean);
begin
  FEnabled := ABoolean;
  FEnabled_Specified := True;
end;

function IPv6NetworkInterfaceSetConfiguration.Enabled_Specified(Index: Integer): boolean;
begin
  Result := FEnabled_Specified;
end;

procedure IPv6NetworkInterfaceSetConfiguration.SetAcceptRouterAdvert(Index: Integer; const ABoolean: Boolean);
begin
  FAcceptRouterAdvert := ABoolean;
  FAcceptRouterAdvert_Specified := True;
end;

function IPv6NetworkInterfaceSetConfiguration.AcceptRouterAdvert_Specified(Index: Integer): boolean;
begin
  Result := FAcceptRouterAdvert_Specified;
end;

procedure IPv6NetworkInterfaceSetConfiguration.SetManual(Index: Integer; const AArray_Of_PrefixedIPv6Address: Array_Of_PrefixedIPv6Address);
begin
  FManual := AArray_Of_PrefixedIPv6Address;
  FManual_Specified := True;
end;

function IPv6NetworkInterfaceSetConfiguration.Manual_Specified(Index: Integer): boolean;
begin
  Result := FManual_Specified;
end;

procedure IPv6NetworkInterfaceSetConfiguration.SetDHCP(Index: Integer; const AIPv6DHCPConfiguration: IPv6DHCPConfiguration);
begin
  FDHCP := AIPv6DHCPConfiguration;
  FDHCP_Specified := True;
end;

function IPv6NetworkInterfaceSetConfiguration.DHCP_Specified(Index: Integer): boolean;
begin
  Result := FDHCP_Specified;
end;

destructor IPv6Configuration.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FManual)-1 do
    SysUtils.FreeAndNil(FManual[I]);
  System.SetLength(FManual, 0);
  for I := 0 to System.Length(FLinkLocal)-1 do
    SysUtils.FreeAndNil(FLinkLocal[I]);
  System.SetLength(FLinkLocal, 0);
  for I := 0 to System.Length(FFromDHCP)-1 do
    SysUtils.FreeAndNil(FFromDHCP[I]);
  System.SetLength(FFromDHCP, 0);
  for I := 0 to System.Length(FFromRA)-1 do
    SysUtils.FreeAndNil(FFromRA[I]);
  System.SetLength(FFromRA, 0);
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure IPv6Configuration.SetAcceptRouterAdvert(Index: Integer; const ABoolean: Boolean);
begin
  FAcceptRouterAdvert := ABoolean;
  FAcceptRouterAdvert_Specified := True;
end;

function IPv6Configuration.AcceptRouterAdvert_Specified(Index: Integer): boolean;
begin
  Result := FAcceptRouterAdvert_Specified;
end;

procedure IPv6Configuration.SetManual(Index: Integer; const AArray_Of_PrefixedIPv6Address: Array_Of_PrefixedIPv6Address);
begin
  FManual := AArray_Of_PrefixedIPv6Address;
  FManual_Specified := True;
end;

function IPv6Configuration.Manual_Specified(Index: Integer): boolean;
begin
  Result := FManual_Specified;
end;

procedure IPv6Configuration.SetLinkLocal(Index: Integer; const AArray_Of_PrefixedIPv6Address: Array_Of_PrefixedIPv6Address);
begin
  FLinkLocal := AArray_Of_PrefixedIPv6Address;
  FLinkLocal_Specified := True;
end;

function IPv6Configuration.LinkLocal_Specified(Index: Integer): boolean;
begin
  Result := FLinkLocal_Specified;
end;

procedure IPv6Configuration.SetFromDHCP(Index: Integer; const AArray_Of_PrefixedIPv6Address: Array_Of_PrefixedIPv6Address);
begin
  FFromDHCP := AArray_Of_PrefixedIPv6Address;
  FFromDHCP_Specified := True;
end;

function IPv6Configuration.FromDHCP_Specified(Index: Integer): boolean;
begin
  Result := FFromDHCP_Specified;
end;

procedure IPv6Configuration.SetFromRA(Index: Integer; const AArray_Of_PrefixedIPv6Address: Array_Of_PrefixedIPv6Address);
begin
  FFromRA := AArray_Of_PrefixedIPv6Address;
  FFromRA_Specified := True;
end;

function IPv6Configuration.FromRA_Specified(Index: Integer): boolean;
begin
  Result := FFromRA_Specified;
end;

procedure IPv6Configuration.SetExtension(Index: Integer; const AIPv6ConfigurationExtension: IPv6ConfigurationExtension);
begin
  FExtension := AIPv6ConfigurationExtension;
  FExtension_Specified := True;
end;

function IPv6Configuration.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

destructor IPv4Configuration.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FManual)-1 do
    SysUtils.FreeAndNil(FManual[I]);
  System.SetLength(FManual, 0);
  SysUtils.FreeAndNil(FLinkLocal);
  SysUtils.FreeAndNil(FFromDHCP);
  inherited Destroy;
end;

procedure IPv4Configuration.SetManual(Index: Integer; const AArray_Of_PrefixedIPv4Address: Array_Of_PrefixedIPv4Address);
begin
  FManual := AArray_Of_PrefixedIPv4Address;
  FManual_Specified := True;
end;

function IPv4Configuration.Manual_Specified(Index: Integer): boolean;
begin
  Result := FManual_Specified;
end;

procedure IPv4Configuration.SetLinkLocal(Index: Integer; const APrefixedIPv4Address: PrefixedIPv4Address);
begin
  FLinkLocal := APrefixedIPv4Address;
  FLinkLocal_Specified := True;
end;

function IPv4Configuration.LinkLocal_Specified(Index: Integer): boolean;
begin
  Result := FLinkLocal_Specified;
end;

procedure IPv4Configuration.SetFromDHCP(Index: Integer; const APrefixedIPv4Address: PrefixedIPv4Address);
begin
  FFromDHCP := APrefixedIPv4Address;
  FFromDHCP_Specified := True;
end;

function IPv4Configuration.FromDHCP_Specified(Index: Integer): boolean;
begin
  Result := FFromDHCP_Specified;
end;

destructor NetworkHost.Destroy;
begin
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure NetworkHost.SetIPv4Address(Index: Integer; const AIPv4Address: IPv4Address);
begin
  FIPv4Address := AIPv4Address;
  FIPv4Address_Specified := True;
end;

function NetworkHost.IPv4Address_Specified(Index: Integer): boolean;
begin
  Result := FIPv4Address_Specified;
end;

procedure NetworkHost.SetIPv6Address(Index: Integer; const AIPv6Address: IPv6Address);
begin
  FIPv6Address := AIPv6Address;
  FIPv6Address_Specified := True;
end;

function NetworkHost.IPv6Address_Specified(Index: Integer): boolean;
begin
  Result := FIPv6Address_Specified;
end;

procedure NetworkHost.SetDNSname(Index: Integer; const ADNSName: DNSName);
begin
  FDNSname := ADNSName;
  FDNSname_Specified := True;
end;

function NetworkHost.DNSname_Specified(Index: Integer): boolean;
begin
  Result := FDNSname_Specified;
end;

procedure NetworkHost.SetExtension(Index: Integer; const ANetworkHostExtension: NetworkHostExtension);
begin
  FExtension := ANetworkHostExtension;
  FExtension_Specified := True;
end;

function NetworkHost.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

procedure IPAddress.SetIPv4Address(Index: Integer; const AIPv4Address: IPv4Address);
begin
  FIPv4Address := AIPv4Address;
  FIPv4Address_Specified := True;
end;

function IPAddress.IPv4Address_Specified(Index: Integer): boolean;
begin
  Result := FIPv4Address_Specified;
end;

procedure IPAddress.SetIPv6Address(Index: Integer; const AIPv6Address: IPv6Address);
begin
  FIPv6Address := AIPv6Address;
  FIPv6Address_Specified := True;
end;

function IPAddress.IPv6Address_Specified(Index: Integer): boolean;
begin
  Result := FIPv6Address_Specified;
end;

destructor NetworkZeroConfiguration.Destroy;
begin
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure NetworkZeroConfiguration.SetAddresses(Index: Integer; const AArray_Of_IPv4Address: Array_Of_IPv4Address);
begin
  FAddresses := AArray_Of_IPv4Address;
  FAddresses_Specified := True;
end;

function NetworkZeroConfiguration.Addresses_Specified(Index: Integer): boolean;
begin
  Result := FAddresses_Specified;
end;

procedure NetworkZeroConfiguration.SetExtension(Index: Integer; const ANetworkZeroConfigurationExtension: NetworkZeroConfigurationExtension);
begin
  FExtension := ANetworkZeroConfigurationExtension;
  FExtension_Specified := True;
end;

function NetworkZeroConfiguration.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

procedure NetworkGateway.SetIPv4Address(Index: Integer; const AArray_Of_IPv4Address: Array_Of_IPv4Address);
begin
  FIPv4Address := AArray_Of_IPv4Address;
  FIPv4Address_Specified := True;
end;

function NetworkGateway.IPv4Address_Specified(Index: Integer): boolean;
begin
  Result := FIPv4Address_Specified;
end;

procedure NetworkGateway.SetIPv6Address(Index: Integer; const AArray_Of_IPv6Address: Array_Of_IPv6Address);
begin
  FIPv6Address := AArray_Of_IPv6Address;
  FIPv6Address_Specified := True;
end;

function NetworkGateway.IPv6Address_Specified(Index: Integer): boolean;
begin
  Result := FIPv6Address_Specified;
end;

constructor SetNetworkDefaultGateway.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure SetNetworkDefaultGateway.SetIPv4Address(Index: Integer; const AArray_Of_IPv4Address: Array_Of_IPv4Address);
begin
  FIPv4Address := AArray_Of_IPv4Address;
  FIPv4Address_Specified := True;
end;

function SetNetworkDefaultGateway.IPv4Address_Specified(Index: Integer): boolean;
begin
  Result := FIPv4Address_Specified;
end;

procedure SetNetworkDefaultGateway.SetIPv6Address(Index: Integer; const AArray_Of_IPv6Address: Array_Of_IPv6Address);
begin
  FIPv6Address := AArray_Of_IPv6Address;
  FIPv6Address_Specified := True;
end;

function SetNetworkDefaultGateway.IPv6Address_Specified(Index: Integer): boolean;
begin
  Result := FIPv6Address_Specified;
end;

destructor NetworkProtocol.Destroy;
begin
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure NetworkProtocol.SetExtension(Index: Integer; const ANetworkProtocolExtension: NetworkProtocolExtension);
begin
  FExtension := ANetworkProtocolExtension;
  FExtension_Specified := True;
end;

function NetworkProtocol.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

destructor IPv6NetworkInterface.Destroy;
begin
  SysUtils.FreeAndNil(FConfig);
  inherited Destroy;
end;

procedure IPv6NetworkInterface.SetConfig(Index: Integer; const AIPv6Configuration: IPv6Configuration);
begin
  FConfig := AIPv6Configuration;
  FConfig_Specified := True;
end;

function IPv6NetworkInterface.Config_Specified(Index: Integer): boolean;
begin
  Result := FConfig_Specified;
end;

destructor NetworkInterfaceExtension.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FDot3)-1 do
    SysUtils.FreeAndNil(FDot3[I]);
  System.SetLength(FDot3, 0);
  for I := 0 to System.Length(FDot11)-1 do
    SysUtils.FreeAndNil(FDot11[I]);
  System.SetLength(FDot11, 0);
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure NetworkInterfaceExtension.SetDot3(Index: Integer; const AArray_Of_Dot3Configuration: Array_Of_Dot3Configuration);
begin
  FDot3 := AArray_Of_Dot3Configuration;
  FDot3_Specified := True;
end;

function NetworkInterfaceExtension.Dot3_Specified(Index: Integer): boolean;
begin
  Result := FDot3_Specified;
end;

procedure NetworkInterfaceExtension.SetDot11(Index: Integer; const AArray_Of_Dot11Configuration: Array_Of_Dot11Configuration);
begin
  FDot11 := AArray_Of_Dot11Configuration;
  FDot11_Specified := True;
end;

function NetworkInterfaceExtension.Dot11_Specified(Index: Integer): boolean;
begin
  Result := FDot11_Specified;
end;

procedure NetworkInterfaceExtension.SetExtension(Index: Integer; const ANetworkInterfaceExtension2: NetworkInterfaceExtension2);
begin
  FExtension := ANetworkInterfaceExtension2;
  FExtension_Specified := True;
end;

function NetworkInterfaceExtension.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

destructor NetworkInterfaceLink.Destroy;
begin
  SysUtils.FreeAndNil(FAdminSettings);
  SysUtils.FreeAndNil(FOperSettings);
  inherited Destroy;
end;

destructor IPv4NetworkInterface.Destroy;
begin
  SysUtils.FreeAndNil(FConfig);
  inherited Destroy;
end;

procedure NetworkInterfaceInfo.SetName_(Index: Integer; const Astring: string);
begin
  FName_ := Astring;
  FName__Specified := True;
end;

function NetworkInterfaceInfo.Name__Specified(Index: Integer): boolean;
begin
  Result := FName__Specified;
end;

procedure NetworkInterfaceInfo.SetMTU(Index: Integer; const AInteger: Integer);
begin
  FMTU := AInteger;
  FMTU_Specified := True;
end;

function NetworkInterfaceInfo.MTU_Specified(Index: Integer): boolean;
begin
  Result := FMTU_Specified;
end;

destructor Dot11Configuration.Destroy;
begin
  SysUtils.FreeAndNil(FSSID);
  SysUtils.FreeAndNil(FSecurity);
  inherited Destroy;
end;

destructor Dot11Status.Destroy;
begin
  SysUtils.FreeAndNil(FSSID);
  inherited Destroy;
end;

procedure Dot11Status.SetBSSID(Index: Integer; const Astring: string);
begin
  FBSSID := Astring;
  FBSSID_Specified := True;
end;

function Dot11Status.BSSID_Specified(Index: Integer): boolean;
begin
  Result := FBSSID_Specified;
end;

procedure Dot11Status.SetPairCipher(Index: Integer; const ADot11Cipher: Dot11Cipher);
begin
  FPairCipher := ADot11Cipher;
  FPairCipher_Specified := True;
end;

function Dot11Status.PairCipher_Specified(Index: Integer): boolean;
begin
  Result := FPairCipher_Specified;
end;

procedure Dot11Status.SetGroupCipher(Index: Integer; const ADot11Cipher: Dot11Cipher);
begin
  FGroupCipher := ADot11Cipher;
  FGroupCipher_Specified := True;
end;

function Dot11Status.GroupCipher_Specified(Index: Integer): boolean;
begin
  Result := FGroupCipher_Specified;
end;

procedure Dot11Status.SetSignalStrength(Index: Integer; const ADot11SignalStrength: Dot11SignalStrength);
begin
  FSignalStrength := ADot11SignalStrength;
  FSignalStrength_Specified := True;
end;

function Dot11Status.SignalStrength_Specified(Index: Integer): boolean;
begin
  Result := FSignalStrength_Specified;
end;

constructor GetSystemSupportInformation.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetSystemSupportInformationResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetSystemSupportInformationResponse.Destroy;
begin
  SysUtils.FreeAndNil(FSupportInformation);
  inherited Destroy;
end;

constructor RestoreSystemResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetSystemBackup.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor SetScopesResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetSystemLog.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetSystemLogResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetSystemLogResponse.Destroy;
begin
  SysUtils.FreeAndNil(FSystemLog);
  inherited Destroy;
end;

constructor GetScopes.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor SetSystemDateAndTimeResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetSystemDateAndTime.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetSystemDateAndTimeResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetSystemDateAndTimeResponse.Destroy;
begin
  SysUtils.FreeAndNil(FSystemDateAndTime);
  inherited Destroy;
end;

constructor GetDeviceInformation.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetDeviceInformationResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor SetSystemDateAndTime.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SetSystemDateAndTime.Destroy;
begin
  SysUtils.FreeAndNil(FTimeZone);
  SysUtils.FreeAndNil(FUTCDateTime);
  inherited Destroy;
end;

procedure SetSystemDateAndTime.SetTimeZone(Index: Integer; const ATimeZone: TimeZone);
begin
  FTimeZone := ATimeZone;
  FTimeZone_Specified := True;
end;

function SetSystemDateAndTime.TimeZone_Specified(Index: Integer): boolean;
begin
  Result := FTimeZone_Specified;
end;

procedure SetSystemDateAndTime.SetUTCDateTime(Index: Integer; const ADateTime: DateTime);
begin
  FUTCDateTime := ADateTime;
  FUTCDateTime_Specified := True;
end;

function SetSystemDateAndTime.UTCDateTime_Specified(Index: Integer): boolean;
begin
  Result := FUTCDateTime_Specified;
end;

constructor UpgradeSystemFirmwareResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure UpgradeSystemFirmwareResponse.SetMessage_(Index: Integer; const Astring: string);
begin
  FMessage_ := Astring;
  FMessage__Specified := True;
end;

function UpgradeSystemFirmwareResponse.Message__Specified(Index: Integer): boolean;
begin
  Result := FMessage__Specified;
end;

constructor SystemReboot.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor SystemRebootResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor SetSystemFactoryDefaultResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor UpgradeSystemFirmware.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor UpgradeSystemFirmware.Destroy;
begin
  SysUtils.FreeAndNil(FFirmware);
  inherited Destroy;
end;

constructor GetEndpointReference.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetEndpointReferenceResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetRemoteUser.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor NTPInformation.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FNTPFromDHCP)-1 do
    SysUtils.FreeAndNil(FNTPFromDHCP[I]);
  System.SetLength(FNTPFromDHCP, 0);
  for I := 0 to System.Length(FNTPManual)-1 do
    SysUtils.FreeAndNil(FNTPManual[I]);
  System.SetLength(FNTPManual, 0);
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure NTPInformation.SetNTPFromDHCP(Index: Integer; const AGetDPAddressesResponse: GetDPAddressesResponse);
begin
  FNTPFromDHCP := AGetDPAddressesResponse;
  FNTPFromDHCP_Specified := True;
end;

function NTPInformation.NTPFromDHCP_Specified(Index: Integer): boolean;
begin
  Result := FNTPFromDHCP_Specified;
end;

procedure NTPInformation.SetNTPManual(Index: Integer; const AGetDPAddressesResponse: GetDPAddressesResponse);
begin
  FNTPManual := AGetDPAddressesResponse;
  FNTPManual_Specified := True;
end;

function NTPInformation.NTPManual_Specified(Index: Integer): boolean;
begin
  Result := FNTPManual_Specified;
end;

procedure NTPInformation.SetExtension(Index: Integer; const ANTPInformationExtension: NTPInformationExtension);
begin
  FExtension := ANTPInformationExtension;
  FExtension_Specified := True;
end;

function NTPInformation.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

constructor SetNTP.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SetNTP.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FNTPManual)-1 do
    SysUtils.FreeAndNil(FNTPManual[I]);
  System.SetLength(FNTPManual, 0);
  inherited Destroy;
end;

procedure SetNTP.SetNTPManual(Index: Integer; const AGetDPAddressesResponse: GetDPAddressesResponse);
begin
  FNTPManual := AGetDPAddressesResponse;
  FNTPManual_Specified := True;
end;

function SetNTP.NTPManual_Specified(Index: Integer): boolean;
begin
  Result := FNTPManual_Specified;
end;

constructor SetDPAddressesResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetUsers.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetRemoteUserResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetRemoteUserResponse.Destroy;
begin
  SysUtils.FreeAndNil(FRemoteUser);
  inherited Destroy;
end;

procedure GetRemoteUserResponse.SetRemoteUser(Index: Integer; const ARemoteUser: RemoteUser);
begin
  FRemoteUser := ARemoteUser;
  FRemoteUser_Specified := True;
end;

function GetRemoteUserResponse.RemoteUser_Specified(Index: Integer): boolean;
begin
  Result := FRemoteUser_Specified;
end;

constructor SetRemoteUser.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SetRemoteUser.Destroy;
begin
  SysUtils.FreeAndNil(FRemoteUser);
  inherited Destroy;
end;

procedure SetRemoteUser.SetRemoteUser(Index: Integer; const ARemoteUser: RemoteUser);
begin
  FRemoteUser := ARemoteUser;
  FRemoteUser_Specified := True;
end;

function SetRemoteUser.RemoteUser_Specified(Index: Integer): boolean;
begin
  Result := FRemoteUser_Specified;
end;

constructor SetRemoteUserResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetDiscoveryMode.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor AddScopesResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor SetRemoteDiscoveryModeResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetDPAddresses.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor SetDiscoveryModeResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetRemoteDiscoveryMode.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor MediaCapabilities.Destroy;
begin
  SysUtils.FreeAndNil(FStreamingCapabilities);
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure MediaCapabilities.SetExtension(Index: Integer; const AMediaCapabilitiesExtension: MediaCapabilitiesExtension);
begin
  FExtension := AMediaCapabilitiesExtension;
  FExtension_Specified := True;
end;

function MediaCapabilities.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

destructor CapabilitiesExtension.Destroy;
begin
  SysUtils.FreeAndNil(FDeviceIO);
  SysUtils.FreeAndNil(FDisplay);
  SysUtils.FreeAndNil(FRecording);
  SysUtils.FreeAndNil(FSearch);
  SysUtils.FreeAndNil(FReplay);
  SysUtils.FreeAndNil(FReceiver);
  SysUtils.FreeAndNil(FAnalyticsDevice);
  SysUtils.FreeAndNil(FExtensions);
  inherited Destroy;
end;

procedure CapabilitiesExtension.SetDeviceIO(Index: Integer; const ADeviceIOCapabilities: DeviceIOCapabilities);
begin
  FDeviceIO := ADeviceIOCapabilities;
  FDeviceIO_Specified := True;
end;

function CapabilitiesExtension.DeviceIO_Specified(Index: Integer): boolean;
begin
  Result := FDeviceIO_Specified;
end;

procedure CapabilitiesExtension.SetDisplay(Index: Integer; const ADisplayCapabilities: DisplayCapabilities);
begin
  FDisplay := ADisplayCapabilities;
  FDisplay_Specified := True;
end;

function CapabilitiesExtension.Display_Specified(Index: Integer): boolean;
begin
  Result := FDisplay_Specified;
end;

procedure CapabilitiesExtension.SetRecording(Index: Integer; const ARecordingCapabilities: RecordingCapabilities);
begin
  FRecording := ARecordingCapabilities;
  FRecording_Specified := True;
end;

function CapabilitiesExtension.Recording_Specified(Index: Integer): boolean;
begin
  Result := FRecording_Specified;
end;

procedure CapabilitiesExtension.SetSearch(Index: Integer; const ASearchCapabilities: SearchCapabilities);
begin
  FSearch := ASearchCapabilities;
  FSearch_Specified := True;
end;

function CapabilitiesExtension.Search_Specified(Index: Integer): boolean;
begin
  Result := FSearch_Specified;
end;

procedure CapabilitiesExtension.SetReplay(Index: Integer; const AReplayCapabilities: ReplayCapabilities);
begin
  FReplay := AReplayCapabilities;
  FReplay_Specified := True;
end;

function CapabilitiesExtension.Replay_Specified(Index: Integer): boolean;
begin
  Result := FReplay_Specified;
end;

procedure CapabilitiesExtension.SetReceiver(Index: Integer; const AReceiverCapabilities: ReceiverCapabilities);
begin
  FReceiver := AReceiverCapabilities;
  FReceiver_Specified := True;
end;

function CapabilitiesExtension.Receiver_Specified(Index: Integer): boolean;
begin
  Result := FReceiver_Specified;
end;

procedure CapabilitiesExtension.SetAnalyticsDevice(Index: Integer; const AAnalyticsDeviceCapabilities: AnalyticsDeviceCapabilities);
begin
  FAnalyticsDevice := AAnalyticsDeviceCapabilities;
  FAnalyticsDevice_Specified := True;
end;

function CapabilitiesExtension.AnalyticsDevice_Specified(Index: Integer): boolean;
begin
  Result := FAnalyticsDevice_Specified;
end;

procedure CapabilitiesExtension.SetExtensions(Index: Integer; const ACapabilitiesExtension2: CapabilitiesExtension2);
begin
  FExtensions := ACapabilitiesExtension2;
  FExtensions_Specified := True;
end;

function CapabilitiesExtension.Extensions_Specified(Index: Integer): boolean;
begin
  Result := FExtensions_Specified;
end;

destructor AnalyticsDeviceCapabilities.Destroy;
begin
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure AnalyticsDeviceCapabilities.SetRuleSupport(Index: Integer; const ABoolean: Boolean);
begin
  FRuleSupport := ABoolean;
  FRuleSupport_Specified := True;
end;

function AnalyticsDeviceCapabilities.RuleSupport_Specified(Index: Integer): boolean;
begin
  Result := FRuleSupport_Specified;
end;

procedure AnalyticsDeviceCapabilities.SetExtension(Index: Integer; const AAnalyticsDeviceExtension: AnalyticsDeviceExtension);
begin
  FExtension := AAnalyticsDeviceExtension;
  FExtension_Specified := True;
end;

function AnalyticsDeviceCapabilities.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

destructor NetworkCapabilities.Destroy;
begin
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure NetworkCapabilities.SetIPFilter(Index: Integer; const ABoolean: Boolean);
begin
  FIPFilter := ABoolean;
  FIPFilter_Specified := True;
end;

function NetworkCapabilities.IPFilter_Specified(Index: Integer): boolean;
begin
  Result := FIPFilter_Specified;
end;

procedure NetworkCapabilities.SetZeroConfiguration(Index: Integer; const ABoolean: Boolean);
begin
  FZeroConfiguration := ABoolean;
  FZeroConfiguration_Specified := True;
end;

function NetworkCapabilities.ZeroConfiguration_Specified(Index: Integer): boolean;
begin
  Result := FZeroConfiguration_Specified;
end;

procedure NetworkCapabilities.SetIPVersion6(Index: Integer; const ABoolean: Boolean);
begin
  FIPVersion6 := ABoolean;
  FIPVersion6_Specified := True;
end;

function NetworkCapabilities.IPVersion6_Specified(Index: Integer): boolean;
begin
  Result := FIPVersion6_Specified;
end;

procedure NetworkCapabilities.SetDynDNS(Index: Integer; const ABoolean: Boolean);
begin
  FDynDNS := ABoolean;
  FDynDNS_Specified := True;
end;

function NetworkCapabilities.DynDNS_Specified(Index: Integer): boolean;
begin
  Result := FDynDNS_Specified;
end;

procedure NetworkCapabilities.SetExtension(Index: Integer; const ANetworkCapabilitiesExtension: NetworkCapabilitiesExtension);
begin
  FExtension := ANetworkCapabilitiesExtension;
  FExtension_Specified := True;
end;

function NetworkCapabilities.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

destructor Capabilities2.Destroy;
begin
  SysUtils.FreeAndNil(FAnalytics);
  SysUtils.FreeAndNil(FDevice);
  SysUtils.FreeAndNil(FEvents);
  SysUtils.FreeAndNil(FImaging);
  SysUtils.FreeAndNil(FMedia);
  SysUtils.FreeAndNil(FPTZ);
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure Capabilities2.SetAnalytics(Index: Integer; const AAnalyticsCapabilities: AnalyticsCapabilities);
begin
  FAnalytics := AAnalyticsCapabilities;
  FAnalytics_Specified := True;
end;

function Capabilities2.Analytics_Specified(Index: Integer): boolean;
begin
  Result := FAnalytics_Specified;
end;

procedure Capabilities2.SetDevice(Index: Integer; const ADeviceCapabilities: DeviceCapabilities);
begin
  FDevice := ADeviceCapabilities;
  FDevice_Specified := True;
end;

function Capabilities2.Device_Specified(Index: Integer): boolean;
begin
  Result := FDevice_Specified;
end;

procedure Capabilities2.SetEvents(Index: Integer; const AEventCapabilities: EventCapabilities);
begin
  FEvents := AEventCapabilities;
  FEvents_Specified := True;
end;

function Capabilities2.Events_Specified(Index: Integer): boolean;
begin
  Result := FEvents_Specified;
end;

procedure Capabilities2.SetImaging(Index: Integer; const AImagingCapabilities: ImagingCapabilities);
begin
  FImaging := AImagingCapabilities;
  FImaging_Specified := True;
end;

function Capabilities2.Imaging_Specified(Index: Integer): boolean;
begin
  Result := FImaging_Specified;
end;

procedure Capabilities2.SetMedia(Index: Integer; const AMediaCapabilities: MediaCapabilities);
begin
  FMedia := AMediaCapabilities;
  FMedia_Specified := True;
end;

function Capabilities2.Media_Specified(Index: Integer): boolean;
begin
  Result := FMedia_Specified;
end;

procedure Capabilities2.SetPTZ(Index: Integer; const APTZCapabilities: PTZCapabilities);
begin
  FPTZ := APTZCapabilities;
  FPTZ_Specified := True;
end;

function Capabilities2.PTZ_Specified(Index: Integer): boolean;
begin
  Result := FPTZ_Specified;
end;

procedure Capabilities2.SetExtension(Index: Integer; const ACapabilitiesExtension: CapabilitiesExtension);
begin
  FExtension := ACapabilitiesExtension;
  FExtension_Specified := True;
end;

function Capabilities2.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

constructor GetRemoteDiscoveryModeResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor SetRemoteDiscoveryMode.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor SetDiscoveryMode.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetDiscoveryModeResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor Dot11AvailableNetworks.Destroy;
begin
  SysUtils.FreeAndNil(FSSID);
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure Dot11AvailableNetworks.SetBSSID(Index: Integer; const Astring: string);
begin
  FBSSID := Astring;
  FBSSID_Specified := True;
end;

function Dot11AvailableNetworks.BSSID_Specified(Index: Integer): boolean;
begin
  Result := FBSSID_Specified;
end;

procedure Dot11AvailableNetworks.SetAuthAndMangementSuite(Index: Integer; const AArray_Of_Dot11AuthAndMangementSuite: Array_Of_Dot11AuthAndMangementSuite);
begin
  FAuthAndMangementSuite := AArray_Of_Dot11AuthAndMangementSuite;
  FAuthAndMangementSuite_Specified := True;
end;

function Dot11AvailableNetworks.AuthAndMangementSuite_Specified(Index: Integer): boolean;
begin
  Result := FAuthAndMangementSuite_Specified;
end;

procedure Dot11AvailableNetworks.SetPairCipher(Index: Integer; const AArray_Of_Dot11Cipher: Array_Of_Dot11Cipher);
begin
  FPairCipher := AArray_Of_Dot11Cipher;
  FPairCipher_Specified := True;
end;

function Dot11AvailableNetworks.PairCipher_Specified(Index: Integer): boolean;
begin
  Result := FPairCipher_Specified;
end;

procedure Dot11AvailableNetworks.SetGroupCipher(Index: Integer; const AArray_Of_Dot11Cipher: Array_Of_Dot11Cipher);
begin
  FGroupCipher := AArray_Of_Dot11Cipher;
  FGroupCipher_Specified := True;
end;

function Dot11AvailableNetworks.GroupCipher_Specified(Index: Integer): boolean;
begin
  Result := FGroupCipher_Specified;
end;

procedure Dot11AvailableNetworks.SetSignalStrength(Index: Integer; const ADot11SignalStrength: Dot11SignalStrength);
begin
  FSignalStrength := ADot11SignalStrength;
  FSignalStrength_Specified := True;
end;

function Dot11AvailableNetworks.SignalStrength_Specified(Index: Integer): boolean;
begin
  Result := FSignalStrength_Specified;
end;

procedure Dot11AvailableNetworks.SetExtension(Index: Integer; const ADot11AvailableNetworksExtension: Dot11AvailableNetworksExtension);
begin
  FExtension := ADot11AvailableNetworksExtension;
  FExtension_Specified := True;
end;

function Dot11AvailableNetworks.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

destructor DeviceCapabilities.Destroy;
begin
  SysUtils.FreeAndNil(FNetwork);
  SysUtils.FreeAndNil(FSystem);
  SysUtils.FreeAndNil(FIO);
  SysUtils.FreeAndNil(FSecurity);
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure DeviceCapabilities.SetNetwork(Index: Integer; const ANetworkCapabilities: NetworkCapabilities);
begin
  FNetwork := ANetworkCapabilities;
  FNetwork_Specified := True;
end;

function DeviceCapabilities.Network_Specified(Index: Integer): boolean;
begin
  Result := FNetwork_Specified;
end;

procedure DeviceCapabilities.SetSystem(Index: Integer; const ASystemCapabilities: SystemCapabilities);
begin
  FSystem := ASystemCapabilities;
  FSystem_Specified := True;
end;

function DeviceCapabilities.System_Specified(Index: Integer): boolean;
begin
  Result := FSystem_Specified;
end;

procedure DeviceCapabilities.SetIO(Index: Integer; const AIOCapabilities: IOCapabilities);
begin
  FIO := AIOCapabilities;
  FIO_Specified := True;
end;

function DeviceCapabilities.IO_Specified(Index: Integer): boolean;
begin
  Result := FIO_Specified;
end;

procedure DeviceCapabilities.SetSecurity(Index: Integer; const ASecurityCapabilities: SecurityCapabilities);
begin
  FSecurity := ASecurityCapabilities;
  FSecurity_Specified := True;
end;

function DeviceCapabilities.Security_Specified(Index: Integer): boolean;
begin
  Result := FSecurity_Specified;
end;

procedure DeviceCapabilities.SetExtension(Index: Integer; const ADeviceCapabilitiesExtension: DeviceCapabilitiesExtension);
begin
  FExtension := ADeviceCapabilitiesExtension;
  FExtension_Specified := True;
end;

function DeviceCapabilities.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

constructor SetSystemFactoryDefault.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor SetRelayOutputState.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SystemCapabilities.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FSupportedVersions)-1 do
    SysUtils.FreeAndNil(FSupportedVersions[I]);
  System.SetLength(FSupportedVersions, 0);
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure SystemCapabilities.SetExtension(Index: Integer; const ASystemCapabilitiesExtension: SystemCapabilitiesExtension);
begin
  FExtension := ASystemCapabilitiesExtension;
  FExtension_Specified := True;
end;

function SystemCapabilities.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

destructor StorageConfiguration.Destroy;
begin
  SysUtils.FreeAndNil(FData);
  inherited Destroy;
end;

destructor PTZNode.Destroy;
begin
  SysUtils.FreeAndNil(FSupportedPTZSpaces);
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure PTZNode.SetFixedHomePosition(Index: Integer; const ABoolean: Boolean);
begin
  FFixedHomePosition := ABoolean;
  FFixedHomePosition_Specified := True;
end;

function PTZNode.FixedHomePosition_Specified(Index: Integer): boolean;
begin
  Result := FFixedHomePosition_Specified;
end;

procedure PTZNode.SetGeoMove(Index: Integer; const ABoolean: Boolean);
begin
  FGeoMove := ABoolean;
  FGeoMove_Specified := True;
end;

function PTZNode.GeoMove_Specified(Index: Integer): boolean;
begin
  Result := FGeoMove_Specified;
end;

procedure PTZNode.SetName_(Index: Integer; const AName_: Name_);
begin
  FName_ := AName_;
  FName__Specified := True;
end;

function PTZNode.Name__Specified(Index: Integer): boolean;
begin
  Result := FName__Specified;
end;

procedure PTZNode.SetAuxiliaryCommands(Index: Integer; const AArray_Of_AuxiliaryData: Array_Of_AuxiliaryData);
begin
  FAuxiliaryCommands := AArray_Of_AuxiliaryData;
  FAuxiliaryCommands_Specified := True;
end;

function PTZNode.AuxiliaryCommands_Specified(Index: Integer): boolean;
begin
  Result := FAuxiliaryCommands_Specified;
end;

procedure PTZNode.SetExtension(Index: Integer; const APTZNodeExtension: PTZNodeExtension);
begin
  FExtension := APTZNodeExtension;
  FExtension_Specified := True;
end;

function PTZNode.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

constructor SendAuxiliaryCommandResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure SendAuxiliaryCommandResponse.SetAuxiliaryCommandResponse(Index: Integer; const AAuxiliaryData: AuxiliaryData);
begin
  FAuxiliaryCommandResponse := AAuxiliaryData;
  FAuxiliaryCommandResponse_Specified := True;
end;

function SendAuxiliaryCommandResponse.AuxiliaryCommandResponse_Specified(Index: Integer): boolean;
begin
  Result := FAuxiliaryCommandResponse_Specified;
end;

constructor SendAuxiliaryCommand.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor UserCredential.Destroy;
begin
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure UserCredential.SetPassword(Index: Integer; const Astring: string);
begin
  FPassword := Astring;
  FPassword_Specified := True;
end;

function UserCredential.Password_Specified(Index: Integer): boolean;
begin
  Result := FPassword_Specified;
end;

procedure UserCredential.SetExtension(Index: Integer; const AExtension3: Extension3);
begin
  FExtension := AExtension3;
  FExtension_Specified := True;
end;

function UserCredential.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

destructor StorageConfigurationData.Destroy;
begin
  SysUtils.FreeAndNil(FUser);
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure StorageConfigurationData.SetLocalPath(Index: Integer; const Astring: string);
begin
  FLocalPath := Astring;
  FLocalPath_Specified := True;
end;

function StorageConfigurationData.LocalPath_Specified(Index: Integer): boolean;
begin
  Result := FLocalPath_Specified;
end;

procedure StorageConfigurationData.SetStorageUri(Index: Integer; const Astring: string);
begin
  FStorageUri := Astring;
  FStorageUri_Specified := True;
end;

function StorageConfigurationData.StorageUri_Specified(Index: Integer): boolean;
begin
  Result := FStorageUri_Specified;
end;

procedure StorageConfigurationData.SetUser(Index: Integer; const AUserCredential: UserCredential);
begin
  FUser := AUserCredential;
  FUser_Specified := True;
end;

function StorageConfigurationData.User_Specified(Index: Integer): boolean;
begin
  Result := FUser_Specified;
end;

procedure StorageConfigurationData.SetExtension(Index: Integer; const AExtension2: Extension2);
begin
  FExtension := AExtension2;
  FExtension_Specified := True;
end;

function StorageConfigurationData.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

constructor GetServiceCapabilities.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetServiceCapabilitiesResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetServiceCapabilitiesResponse.Destroy;
begin
  SysUtils.FreeAndNil(FCapabilities);
  inherited Destroy;
end;

constructor GetServices.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor IOCapabilitiesExtension.Destroy;
begin
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure IOCapabilitiesExtension.SetAuxiliary(Index: Integer; const ABoolean: Boolean);
begin
  FAuxiliary := ABoolean;
  FAuxiliary_Specified := True;
end;

function IOCapabilitiesExtension.Auxiliary_Specified(Index: Integer): boolean;
begin
  Result := FAuxiliary_Specified;
end;

procedure IOCapabilitiesExtension.SetAuxiliaryCommands(Index: Integer; const AArray_Of_AuxiliaryData: Array_Of_AuxiliaryData);
begin
  FAuxiliaryCommands := AArray_Of_AuxiliaryData;
  FAuxiliaryCommands_Specified := True;
end;

function IOCapabilitiesExtension.AuxiliaryCommands_Specified(Index: Integer): boolean;
begin
  Result := FAuxiliaryCommands_Specified;
end;

destructor Service.Destroy;
begin
  SysUtils.FreeAndNil(FCapabilities);
  SysUtils.FreeAndNil(FVersion);
  inherited Destroy;
end;

procedure Service.SetCapabilities(Index: Integer; const ACapabilities3: Capabilities3);
begin
  FCapabilities := ACapabilities3;
  FCapabilities_Specified := True;
end;

function Service.Capabilities_Specified(Index: Integer): boolean;
begin
  Result := FCapabilities_Specified;
end;

destructor IOCapabilities.Destroy;
begin
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure IOCapabilities.SetInputConnectors(Index: Integer; const AInteger: Integer);
begin
  FInputConnectors := AInteger;
  FInputConnectors_Specified := True;
end;

function IOCapabilities.InputConnectors_Specified(Index: Integer): boolean;
begin
  Result := FInputConnectors_Specified;
end;

procedure IOCapabilities.SetRelayOutputs(Index: Integer; const AInteger: Integer);
begin
  FRelayOutputs := AInteger;
  FRelayOutputs_Specified := True;
end;

function IOCapabilities.RelayOutputs_Specified(Index: Integer): boolean;
begin
  Result := FRelayOutputs_Specified;
end;

procedure IOCapabilities.SetExtension(Index: Integer; const AIOCapabilitiesExtension: IOCapabilitiesExtension);
begin
  FExtension := AIOCapabilitiesExtension;
  FExtension_Specified := True;
end;

function IOCapabilities.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

destructor SecurityCapabilities.Destroy;
begin
  SysUtils.FreeAndNil(FExtension);
  inherited Destroy;
end;

procedure SecurityCapabilities.SetExtension(Index: Integer; const ASecurityCapabilitiesExtension: SecurityCapabilitiesExtension);
begin
  FExtension := ASecurityCapabilitiesExtension;
  FExtension_Specified := True;
end;

function SecurityCapabilities.Extension_Specified(Index: Integer): boolean;
begin
  Result := FExtension_Specified;
end;

procedure SystemCapabilities2.SetDiscoveryResolve(Index: Integer; const ABoolean: Boolean);
begin
  FDiscoveryResolve := ABoolean;
  FDiscoveryResolve_Specified := True;
end;

function SystemCapabilities2.DiscoveryResolve_Specified(Index: Integer): boolean;
begin
  Result := FDiscoveryResolve_Specified;
end;

procedure SystemCapabilities2.SetDiscoveryBye(Index: Integer; const ABoolean: Boolean);
begin
  FDiscoveryBye := ABoolean;
  FDiscoveryBye_Specified := True;
end;

function SystemCapabilities2.DiscoveryBye_Specified(Index: Integer): boolean;
begin
  Result := FDiscoveryBye_Specified;
end;

procedure SystemCapabilities2.SetRemoteDiscovery(Index: Integer; const ABoolean: Boolean);
begin
  FRemoteDiscovery := ABoolean;
  FRemoteDiscovery_Specified := True;
end;

function SystemCapabilities2.RemoteDiscovery_Specified(Index: Integer): boolean;
begin
  Result := FRemoteDiscovery_Specified;
end;

procedure SystemCapabilities2.SetSystemBackup(Index: Integer; const ABoolean: Boolean);
begin
  FSystemBackup := ABoolean;
  FSystemBackup_Specified := True;
end;

function SystemCapabilities2.SystemBackup_Specified(Index: Integer): boolean;
begin
  Result := FSystemBackup_Specified;
end;

procedure SystemCapabilities2.SetSystemLogging(Index: Integer; const ABoolean: Boolean);
begin
  FSystemLogging := ABoolean;
  FSystemLogging_Specified := True;
end;

function SystemCapabilities2.SystemLogging_Specified(Index: Integer): boolean;
begin
  Result := FSystemLogging_Specified;
end;

procedure SystemCapabilities2.SetFirmwareUpgrade(Index: Integer; const ABoolean: Boolean);
begin
  FFirmwareUpgrade := ABoolean;
  FFirmwareUpgrade_Specified := True;
end;

function SystemCapabilities2.FirmwareUpgrade_Specified(Index: Integer): boolean;
begin
  Result := FFirmwareUpgrade_Specified;
end;

procedure SystemCapabilities2.SetHttpFirmwareUpgrade(Index: Integer; const ABoolean: Boolean);
begin
  FHttpFirmwareUpgrade := ABoolean;
  FHttpFirmwareUpgrade_Specified := True;
end;

function SystemCapabilities2.HttpFirmwareUpgrade_Specified(Index: Integer): boolean;
begin
  Result := FHttpFirmwareUpgrade_Specified;
end;

procedure SystemCapabilities2.SetHttpSystemBackup(Index: Integer; const ABoolean: Boolean);
begin
  FHttpSystemBackup := ABoolean;
  FHttpSystemBackup_Specified := True;
end;

function SystemCapabilities2.HttpSystemBackup_Specified(Index: Integer): boolean;
begin
  Result := FHttpSystemBackup_Specified;
end;

procedure SystemCapabilities2.SetHttpSystemLogging(Index: Integer; const ABoolean: Boolean);
begin
  FHttpSystemLogging := ABoolean;
  FHttpSystemLogging_Specified := True;
end;

function SystemCapabilities2.HttpSystemLogging_Specified(Index: Integer): boolean;
begin
  Result := FHttpSystemLogging_Specified;
end;

procedure SystemCapabilities2.SetHttpSupportInformation(Index: Integer; const ABoolean: Boolean);
begin
  FHttpSupportInformation := ABoolean;
  FHttpSupportInformation_Specified := True;
end;

function SystemCapabilities2.HttpSupportInformation_Specified(Index: Integer): boolean;
begin
  Result := FHttpSupportInformation_Specified;
end;

procedure SystemCapabilities2.SetStorageConfiguration(Index: Integer; const ABoolean: Boolean);
begin
  FStorageConfiguration := ABoolean;
  FStorageConfiguration_Specified := True;
end;

function SystemCapabilities2.StorageConfiguration_Specified(Index: Integer): boolean;
begin
  Result := FStorageConfiguration_Specified;
end;

procedure SystemCapabilities2.SetMaxStorageConfigurations(Index: Integer; const AInteger: Integer);
begin
  FMaxStorageConfigurations := AInteger;
  FMaxStorageConfigurations_Specified := True;
end;

function SystemCapabilities2.MaxStorageConfigurations_Specified(Index: Integer): boolean;
begin
  Result := FMaxStorageConfigurations_Specified;
end;

procedure SystemCapabilities2.SetGeoLocationEntries(Index: Integer; const AInteger: Integer);
begin
  FGeoLocationEntries := AInteger;
  FGeoLocationEntries_Specified := True;
end;

function SystemCapabilities2.GeoLocationEntries_Specified(Index: Integer): boolean;
begin
  Result := FGeoLocationEntries_Specified;
end;

procedure SystemCapabilities2.SetAutoGeo(Index: Integer; const AStringAttrList: StringAttrList);
begin
  FAutoGeo := AStringAttrList;
  FAutoGeo_Specified := True;
end;

function SystemCapabilities2.AutoGeo_Specified(Index: Integer): boolean;
begin
  Result := FAutoGeo_Specified;
end;

procedure SystemCapabilities2.SetStorageTypesSupported(Index: Integer; const AStringAttrList: StringAttrList);
begin
  FStorageTypesSupported := AStringAttrList;
  FStorageTypesSupported_Specified := True;
end;

function SystemCapabilities2.StorageTypesSupported_Specified(Index: Integer): boolean;
begin
  Result := FStorageTypesSupported_Specified;
end;

procedure MiscCapabilities.SetAuxiliaryCommands(Index: Integer; const AStringAttrList: StringAttrList);
begin
  FAuxiliaryCommands := AStringAttrList;
  FAuxiliaryCommands_Specified := True;
end;

function MiscCapabilities.AuxiliaryCommands_Specified(Index: Integer): boolean;
begin
  Result := FAuxiliaryCommands_Specified;
end;

destructor DeviceServiceCapabilities.Destroy;
begin
  SysUtils.FreeAndNil(FNetwork);
  SysUtils.FreeAndNil(FSecurity);
  SysUtils.FreeAndNil(FSystem);
  SysUtils.FreeAndNil(FMisc);
  inherited Destroy;
end;

procedure DeviceServiceCapabilities.SetMisc(Index: Integer; const AMiscCapabilities: MiscCapabilities);
begin
  FMisc := AMiscCapabilities;
  FMisc_Specified := True;
end;

function DeviceServiceCapabilities.Misc_Specified(Index: Integer): boolean;
begin
  Result := FMisc_Specified;
end;

procedure NetworkCapabilities2.SetIPFilter(Index: Integer; const ABoolean: Boolean);
begin
  FIPFilter := ABoolean;
  FIPFilter_Specified := True;
end;

function NetworkCapabilities2.IPFilter_Specified(Index: Integer): boolean;
begin
  Result := FIPFilter_Specified;
end;

procedure NetworkCapabilities2.SetZeroConfiguration(Index: Integer; const ABoolean: Boolean);
begin
  FZeroConfiguration := ABoolean;
  FZeroConfiguration_Specified := True;
end;

function NetworkCapabilities2.ZeroConfiguration_Specified(Index: Integer): boolean;
begin
  Result := FZeroConfiguration_Specified;
end;

procedure NetworkCapabilities2.SetIPVersion6(Index: Integer; const ABoolean: Boolean);
begin
  FIPVersion6 := ABoolean;
  FIPVersion6_Specified := True;
end;

function NetworkCapabilities2.IPVersion6_Specified(Index: Integer): boolean;
begin
  Result := FIPVersion6_Specified;
end;

procedure NetworkCapabilities2.SetDynDNS(Index: Integer; const ABoolean: Boolean);
begin
  FDynDNS := ABoolean;
  FDynDNS_Specified := True;
end;

function NetworkCapabilities2.DynDNS_Specified(Index: Integer): boolean;
begin
  Result := FDynDNS_Specified;
end;

procedure NetworkCapabilities2.SetDot11Configuration(Index: Integer; const ABoolean: Boolean);
begin
  FDot11Configuration := ABoolean;
  FDot11Configuration_Specified := True;
end;

function NetworkCapabilities2.Dot11Configuration_Specified(Index: Integer): boolean;
begin
  Result := FDot11Configuration_Specified;
end;

procedure NetworkCapabilities2.SetDot1XConfigurations(Index: Integer; const AInteger: Integer);
begin
  FDot1XConfigurations := AInteger;
  FDot1XConfigurations_Specified := True;
end;

function NetworkCapabilities2.Dot1XConfigurations_Specified(Index: Integer): boolean;
begin
  Result := FDot1XConfigurations_Specified;
end;

procedure NetworkCapabilities2.SetHostnameFromDHCP(Index: Integer; const ABoolean: Boolean);
begin
  FHostnameFromDHCP := ABoolean;
  FHostnameFromDHCP_Specified := True;
end;

function NetworkCapabilities2.HostnameFromDHCP_Specified(Index: Integer): boolean;
begin
  Result := FHostnameFromDHCP_Specified;
end;

procedure NetworkCapabilities2.SetNTP(Index: Integer; const AInteger: Integer);
begin
  FNTP := AInteger;
  FNTP_Specified := True;
end;

function NetworkCapabilities2.NTP_Specified(Index: Integer): boolean;
begin
  Result := FNTP_Specified;
end;

procedure NetworkCapabilities2.SetDHCPv6(Index: Integer; const ABoolean: Boolean);
begin
  FDHCPv6 := ABoolean;
  FDHCPv6_Specified := True;
end;

function NetworkCapabilities2.DHCPv6_Specified(Index: Integer): boolean;
begin
  Result := FDHCPv6_Specified;
end;

procedure SecurityCapabilities2.SetTLS1_0(Index: Integer; const ABoolean: Boolean);
begin
  FTLS1_0 := ABoolean;
  FTLS1_0_Specified := True;
end;

function SecurityCapabilities2.TLS1_0_Specified(Index: Integer): boolean;
begin
  Result := FTLS1_0_Specified;
end;

procedure SecurityCapabilities2.SetTLS1_1(Index: Integer; const ABoolean: Boolean);
begin
  FTLS1_1 := ABoolean;
  FTLS1_1_Specified := True;
end;

function SecurityCapabilities2.TLS1_1_Specified(Index: Integer): boolean;
begin
  Result := FTLS1_1_Specified;
end;

procedure SecurityCapabilities2.SetTLS1_2(Index: Integer; const ABoolean: Boolean);
begin
  FTLS1_2 := ABoolean;
  FTLS1_2_Specified := True;
end;

function SecurityCapabilities2.TLS1_2_Specified(Index: Integer): boolean;
begin
  Result := FTLS1_2_Specified;
end;

procedure SecurityCapabilities2.SetOnboardKeyGeneration(Index: Integer; const ABoolean: Boolean);
begin
  FOnboardKeyGeneration := ABoolean;
  FOnboardKeyGeneration_Specified := True;
end;

function SecurityCapabilities2.OnboardKeyGeneration_Specified(Index: Integer): boolean;
begin
  Result := FOnboardKeyGeneration_Specified;
end;

procedure SecurityCapabilities2.SetAccessPolicyConfig(Index: Integer; const ABoolean: Boolean);
begin
  FAccessPolicyConfig := ABoolean;
  FAccessPolicyConfig_Specified := True;
end;

function SecurityCapabilities2.AccessPolicyConfig_Specified(Index: Integer): boolean;
begin
  Result := FAccessPolicyConfig_Specified;
end;

procedure SecurityCapabilities2.SetDefaultAccessPolicy(Index: Integer; const ABoolean: Boolean);
begin
  FDefaultAccessPolicy := ABoolean;
  FDefaultAccessPolicy_Specified := True;
end;

function SecurityCapabilities2.DefaultAccessPolicy_Specified(Index: Integer): boolean;
begin
  Result := FDefaultAccessPolicy_Specified;
end;

procedure SecurityCapabilities2.SetDot1X(Index: Integer; const ABoolean: Boolean);
begin
  FDot1X := ABoolean;
  FDot1X_Specified := True;
end;

function SecurityCapabilities2.Dot1X_Specified(Index: Integer): boolean;
begin
  Result := FDot1X_Specified;
end;

procedure SecurityCapabilities2.SetRemoteUserHandling(Index: Integer; const ABoolean: Boolean);
begin
  FRemoteUserHandling := ABoolean;
  FRemoteUserHandling_Specified := True;
end;

function SecurityCapabilities2.RemoteUserHandling_Specified(Index: Integer): boolean;
begin
  Result := FRemoteUserHandling_Specified;
end;

procedure SecurityCapabilities2.SetX_509Token(Index: Integer; const ABoolean: Boolean);
begin
  FX_509Token := ABoolean;
  FX_509Token_Specified := True;
end;

function SecurityCapabilities2.X_509Token_Specified(Index: Integer): boolean;
begin
  Result := FX_509Token_Specified;
end;

procedure SecurityCapabilities2.SetSAMLToken(Index: Integer; const ABoolean: Boolean);
begin
  FSAMLToken := ABoolean;
  FSAMLToken_Specified := True;
end;

function SecurityCapabilities2.SAMLToken_Specified(Index: Integer): boolean;
begin
  Result := FSAMLToken_Specified;
end;

procedure SecurityCapabilities2.SetKerberosToken(Index: Integer; const ABoolean: Boolean);
begin
  FKerberosToken := ABoolean;
  FKerberosToken_Specified := True;
end;

function SecurityCapabilities2.KerberosToken_Specified(Index: Integer): boolean;
begin
  Result := FKerberosToken_Specified;
end;

procedure SecurityCapabilities2.SetUsernameToken(Index: Integer; const ABoolean: Boolean);
begin
  FUsernameToken := ABoolean;
  FUsernameToken_Specified := True;
end;

function SecurityCapabilities2.UsernameToken_Specified(Index: Integer): boolean;
begin
  Result := FUsernameToken_Specified;
end;

procedure SecurityCapabilities2.SetHttpDigest(Index: Integer; const ABoolean: Boolean);
begin
  FHttpDigest := ABoolean;
  FHttpDigest_Specified := True;
end;

function SecurityCapabilities2.HttpDigest_Specified(Index: Integer): boolean;
begin
  Result := FHttpDigest_Specified;
end;

procedure SecurityCapabilities2.SetRELToken(Index: Integer; const ABoolean: Boolean);
begin
  FRELToken := ABoolean;
  FRELToken_Specified := True;
end;

function SecurityCapabilities2.RELToken_Specified(Index: Integer): boolean;
begin
  Result := FRELToken_Specified;
end;

procedure SecurityCapabilities2.SetSupportedEAPMethods(Index: Integer; const AEAPMethodTypes: EAPMethodTypes);
begin
  FSupportedEAPMethods := AEAPMethodTypes;
  FSupportedEAPMethods_Specified := True;
end;

function SecurityCapabilities2.SupportedEAPMethods_Specified(Index: Integer): boolean;
begin
  Result := FSupportedEAPMethods_Specified;
end;

procedure SecurityCapabilities2.SetMaxUsers(Index: Integer; const AInteger: Integer);
begin
  FMaxUsers := AInteger;
  FMaxUsers_Specified := True;
end;

function SecurityCapabilities2.MaxUsers_Specified(Index: Integer): boolean;
begin
  Result := FMaxUsers_Specified;
end;

procedure SecurityCapabilities2.SetMaxUserNameLength(Index: Integer; const AInteger: Integer);
begin
  FMaxUserNameLength := AInteger;
  FMaxUserNameLength_Specified := True;
end;

function SecurityCapabilities2.MaxUserNameLength_Specified(Index: Integer): boolean;
begin
  Result := FMaxUserNameLength_Specified;
end;

procedure SecurityCapabilities2.SetMaxPasswordLength(Index: Integer; const AInteger: Integer);
begin
  FMaxPasswordLength := AInteger;
  FMaxPasswordLength_Specified := True;
end;

function SecurityCapabilities2.MaxPasswordLength_Specified(Index: Integer): boolean;
begin
  Result := FMaxPasswordLength_Specified;
end;

procedure RegisterTypeProc0;
begin
  RemClassRegistry.RegisterXSClass(EapMethodExtension, 'http://www.onvif.org/ver10/schema', 'EapMethodExtension');
  RemClassRegistry.RegisterXSInfo(TypeInfo(RelayMode), 'http://www.onvif.org/ver10/schema', 'RelayMode');
  RemClassRegistry.RegisterXSInfo(TypeInfo(RelayIdleState), 'http://www.onvif.org/ver10/schema', 'RelayIdleState');
  RemClassRegistry.RegisterXSClass(CertificateInformationExtension, 'http://www.onvif.org/ver10/schema', 'CertificateInformationExtension');
  RemClassRegistry.RegisterXSClass(Dot1XConfigurationExtension, 'http://www.onvif.org/ver10/schema', 'Dot1XConfigurationExtension');
  RemClassRegistry.RegisterXSInfo(TypeInfo(PTZPresetTourOperation), 'http://www.onvif.org/ver10/schema', 'PTZPresetTourOperation');
  RemClassRegistry.RegisterXSClass(PTZNodeExtension2, 'http://www.onvif.org/ver10/schema', 'PTZNodeExtension2');
  RemClassRegistry.RegisterXSClass(PTZPresetTourSupportedExtension, 'http://www.onvif.org/ver10/schema', 'PTZPresetTourSupportedExtension');
  RemClassRegistry.RegisterXSClass(LayoutExtension, 'http://www.onvif.org/ver10/schema', 'LayoutExtension');
  RemClassRegistry.RegisterXSInfo(TypeInfo(DigitalIdleState), 'http://www.onvif.org/ver10/schema', 'DigitalIdleState');
  RemClassRegistry.RegisterXSClass(PTZNodeExtension, 'http://www.onvif.org/ver10/schema', 'PTZNodeExtension');
  RemClassRegistry.RegisterXSClass(ImagingSettingsExtension203, 'http://www.onvif.org/ver10/schema', 'ImagingSettingsExtension203');
  RemClassRegistry.RegisterXSClass(ImagingSettingsExtension20, 'http://www.onvif.org/ver10/schema', 'ImagingSettingsExtension20');
  RemClassRegistry.RegisterXSClass(FocusConfiguration20Extension, 'http://www.onvif.org/ver10/schema', 'FocusConfiguration20Extension');
  RemClassRegistry.RegisterXSClass(DefoggingExtension, 'http://www.onvif.org/ver10/schema', 'DefoggingExtension');
  RemClassRegistry.RegisterXSClass(OSDConfigurationExtension, 'http://www.onvif.org/ver10/schema', 'OSDConfigurationExtension');
  RemClassRegistry.RegisterXSClass(WhiteBalance20Extension, 'http://www.onvif.org/ver10/schema', 'WhiteBalance20Extension');
  RemClassRegistry.RegisterXSInfo(TypeInfo(OSDType), 'http://www.onvif.org/ver10/schema', 'OSDType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ImageStabilizationMode), 'http://www.onvif.org/ver10/schema', 'ImageStabilizationMode');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ImageStabilizationMode), 'ON_', 'ON');
  RemClassRegistry.RegisterXSClass(ImagingSettingsExtension204, 'http://www.onvif.org/ver10/schema', 'ImagingSettingsExtension204');
  RemClassRegistry.RegisterXSClass(ImageStabilizationExtension, 'http://www.onvif.org/ver10/schema', 'ImageStabilizationExtension');
  RemClassRegistry.RegisterXSClass(ToneCompensationExtension, 'http://www.onvif.org/ver10/schema', 'ToneCompensationExtension');
  RemClassRegistry.RegisterXSClass(IrCutFilterAutoAdjustmentExtension, 'http://www.onvif.org/ver10/schema', 'IrCutFilterAutoAdjustmentExtension');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_Space2DDescription), 'http://www.onvif.org/ver10/schema', 'Array_Of_Space2DDescription');
  RemClassRegistry.RegisterXSInfo(TypeInfo(AutoFocusMode), 'http://www.onvif.org/ver10/schema', 'AutoFocusMode');
  RemClassRegistry.RegisterXSClass(PTZSpacesExtension, 'http://www.onvif.org/ver10/schema', 'PTZSpacesExtension');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_IrCutFilterAutoAdjustment), 'http://www.onvif.org/ver10/schema', 'Array_Of_IrCutFilterAutoAdjustment');
  RemClassRegistry.RegisterXSClass(ImagingSettingsExtension202, 'http://www.onvif.org/ver10/schema', 'ImagingSettingsExtension202');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_Space1DDescription), 'http://www.onvif.org/ver10/schema', 'Array_Of_Space1DDescription');
  RemClassRegistry.RegisterXSClass(PTZSpaces, 'http://www.onvif.org/ver10/schema', 'PTZSpaces');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_PTZPresetTourOperation), 'http://www.onvif.org/ver10/schema', 'Array_Of_PTZPresetTourOperation');
  RemClassRegistry.RegisterXSInfo(TypeInfo(IrCutFilterMode), 'http://www.onvif.org/ver10/schema', 'IrCutFilterMode');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(IrCutFilterMode), 'ON_', 'ON');
  RemClassRegistry.RegisterXSInfo(TypeInfo(BacklightCompensationMode), 'http://www.onvif.org/ver10/schema', 'BacklightCompensationMode');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(BacklightCompensationMode), 'ON_', 'ON');
  RemClassRegistry.RegisterXSInfo(TypeInfo(WideDynamicMode), 'http://www.onvif.org/ver10/schema', 'WideDynamicMode');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(WideDynamicMode), 'ON_', 'ON');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_PaneLayout), 'http://www.onvif.org/ver10/schema', 'Array_Of_PaneLayout');
  RemClassRegistry.RegisterXSInfo(TypeInfo(WhiteBalanceMode), 'http://www.onvif.org/ver10/schema', 'WhiteBalanceMode');
  RemClassRegistry.RegisterXSClass(ImagingSettingsExtension, 'http://www.onvif.org/ver10/schema', 'ImagingSettingsExtension');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ExposurePriority), 'http://www.onvif.org/ver10/schema', 'ExposurePriority');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ExposureMode), 'http://www.onvif.org/ver10/schema', 'ExposureMode');
  RemClassRegistry.RegisterXSClass(GetPkcs10RequestResponse, 'http://www.onvif.org/ver10/device/wsdl', 'GetPkcs10RequestResponse');
  RemClassRegistry.RegisterSerializeOptions(GetPkcs10RequestResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetCertificatesStatusResponse, 'http://www.onvif.org/ver10/device/wsdl', 'SetCertificatesStatusResponse');
  RemClassRegistry.RegisterSerializeOptions(SetCertificatesStatusResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(DeleteCertificatesResponse, 'http://www.onvif.org/ver10/device/wsdl', 'DeleteCertificatesResponse');
  RemClassRegistry.RegisterSerializeOptions(DeleteCertificatesResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetClientCertificateModeResponse, 'http://www.onvif.org/ver10/device/wsdl', 'SetClientCertificateModeResponse');
  RemClassRegistry.RegisterSerializeOptions(SetClientCertificateModeResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetCACertificates, 'http://www.onvif.org/ver10/device/wsdl', 'GetCACertificates');
  RemClassRegistry.RegisterSerializeOptions(GetCACertificates, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(LoadCertificates), 'http://www.onvif.org/ver10/device/wsdl', 'LoadCertificates');
  RemClassRegistry.RegisterSerializeOptions(TypeInfo(LoadCertificates), [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(LoadCertificatesResponse, 'http://www.onvif.org/ver10/device/wsdl', 'LoadCertificatesResponse');
  RemClassRegistry.RegisterSerializeOptions(LoadCertificatesResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetClientCertificateMode, 'http://www.onvif.org/ver10/device/wsdl', 'GetClientCertificateMode');
  RemClassRegistry.RegisterSerializeOptions(GetClientCertificateMode, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetAccessPolicy, 'http://www.onvif.org/ver10/device/wsdl', 'GetAccessPolicy');
  RemClassRegistry.RegisterSerializeOptions(GetAccessPolicy, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(RemoveIPAddressFilterResponse, 'http://www.onvif.org/ver10/device/wsdl', 'RemoveIPAddressFilterResponse');
  RemClassRegistry.RegisterSerializeOptions(RemoveIPAddressFilterResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetAccessPolicy, 'http://www.onvif.org/ver10/device/wsdl', 'SetAccessPolicy');
  RemClassRegistry.RegisterSerializeOptions(SetAccessPolicy, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetAccessPolicyResponse, 'http://www.onvif.org/ver10/device/wsdl', 'SetAccessPolicyResponse');
  RemClassRegistry.RegisterSerializeOptions(SetAccessPolicyResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetAccessPolicyResponse, 'http://www.onvif.org/ver10/device/wsdl', 'GetAccessPolicyResponse');
  RemClassRegistry.RegisterSerializeOptions(GetAccessPolicyResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetCertificatesStatus, 'http://www.onvif.org/ver10/device/wsdl', 'GetCertificatesStatus');
  RemClassRegistry.RegisterSerializeOptions(GetCertificatesStatus, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(GetCertificatesStatusResponse), 'http://www.onvif.org/ver10/device/wsdl', 'GetCertificatesStatusResponse');
  RemClassRegistry.RegisterSerializeOptions(TypeInfo(GetCertificatesStatusResponse), [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(SetCertificatesStatus), 'http://www.onvif.org/ver10/device/wsdl', 'SetCertificatesStatus');
  RemClassRegistry.RegisterSerializeOptions(TypeInfo(SetCertificatesStatus), [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(CreateCertificateResponse, 'http://www.onvif.org/ver10/device/wsdl', 'CreateCertificateResponse');
  RemClassRegistry.RegisterSerializeOptions(CreateCertificateResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetCertificates, 'http://www.onvif.org/ver10/device/wsdl', 'GetCertificates');
  RemClassRegistry.RegisterSerializeOptions(GetCertificates, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(GetCertificatesResponse), 'http://www.onvif.org/ver10/device/wsdl', 'GetCertificatesResponse');
  RemClassRegistry.RegisterSerializeOptions(TypeInfo(GetCertificatesResponse), [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(GetCACertificatesResponse), 'http://www.onvif.org/ver10/device/wsdl', 'GetCACertificatesResponse');
  RemClassRegistry.RegisterSerializeOptions(TypeInfo(GetCACertificatesResponse), [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(DeleteDot1XConfigurationResponse, 'http://www.onvif.org/ver10/device/wsdl', 'DeleteDot1XConfigurationResponse');
  RemClassRegistry.RegisterSerializeOptions(DeleteDot1XConfigurationResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetRelayOutputs, 'http://www.onvif.org/ver10/device/wsdl', 'GetRelayOutputs');
  RemClassRegistry.RegisterSerializeOptions(GetRelayOutputs, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(GetRelayOutputsResponse), 'http://www.onvif.org/ver10/device/wsdl', 'GetRelayOutputsResponse');
  RemClassRegistry.RegisterSerializeOptions(TypeInfo(GetRelayOutputsResponse), [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetDot1XConfigurations, 'http://www.onvif.org/ver10/device/wsdl', 'GetDot1XConfigurations');
  RemClassRegistry.RegisterSerializeOptions(GetDot1XConfigurations, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(GetDot1XConfigurationsResponse), 'http://www.onvif.org/ver10/device/wsdl', 'GetDot1XConfigurationsResponse');
  RemClassRegistry.RegisterSerializeOptions(TypeInfo(GetDot1XConfigurationsResponse), [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetRelayOutputStateResponse, 'http://www.onvif.org/ver10/device/wsdl', 'SetRelayOutputStateResponse');
  RemClassRegistry.RegisterSerializeOptions(SetRelayOutputStateResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetRelayOutputSettingsResponse, 'http://www.onvif.org/ver10/device/wsdl', 'SetRelayOutputSettingsResponse');
  RemClassRegistry.RegisterSerializeOptions(SetRelayOutputSettingsResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetCertificateInformationResponse, 'http://www.onvif.org/ver10/device/wsdl', 'GetCertificateInformationResponse');
  RemClassRegistry.RegisterSerializeOptions(GetCertificateInformationResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(LoadCACertificates), 'http://www.onvif.org/ver10/device/wsdl', 'LoadCACertificates');
  RemClassRegistry.RegisterSerializeOptions(TypeInfo(LoadCACertificates), [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(LoadCACertificatesResponse, 'http://www.onvif.org/ver10/device/wsdl', 'LoadCACertificatesResponse');
  RemClassRegistry.RegisterSerializeOptions(LoadCACertificatesResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(LoadCertificateWithPrivateKey), 'http://www.onvif.org/ver10/device/wsdl', 'LoadCertificateWithPrivateKey');
  RemClassRegistry.RegisterSerializeOptions(TypeInfo(LoadCertificateWithPrivateKey), [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(LoadCertificateWithPrivateKeyResponse, 'http://www.onvif.org/ver10/device/wsdl', 'LoadCertificateWithPrivateKeyResponse');
  RemClassRegistry.RegisterSerializeOptions(LoadCertificateWithPrivateKeyResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetDot1XConfigurationResponse, 'http://www.onvif.org/ver10/device/wsdl', 'SetDot1XConfigurationResponse');
  RemClassRegistry.RegisterSerializeOptions(SetDot1XConfigurationResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetDot1XConfigurationResponse, 'http://www.onvif.org/ver10/device/wsdl', 'GetDot1XConfigurationResponse');
  RemClassRegistry.RegisterSerializeOptions(GetDot1XConfigurationResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(CreateDot1XConfiguration, 'http://www.onvif.org/ver10/device/wsdl', 'CreateDot1XConfiguration');
  RemClassRegistry.RegisterSerializeOptions(CreateDot1XConfiguration, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(CreateDot1XConfigurationResponse, 'http://www.onvif.org/ver10/device/wsdl', 'CreateDot1XConfigurationResponse');
  RemClassRegistry.RegisterSerializeOptions(CreateDot1XConfigurationResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetDot1XConfiguration, 'http://www.onvif.org/ver10/device/wsdl', 'SetDot1XConfiguration');
  RemClassRegistry.RegisterSerializeOptions(SetDot1XConfiguration, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetDNSResponse, 'http://www.onvif.org/ver10/device/wsdl', 'GetDNSResponse');
  RemClassRegistry.RegisterSerializeOptions(GetDNSResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetDNSResponse, 'http://www.onvif.org/ver10/device/wsdl', 'SetDNSResponse');
  RemClassRegistry.RegisterSerializeOptions(SetDNSResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetDNS, 'http://www.onvif.org/ver10/device/wsdl', 'GetDNS');
  RemClassRegistry.RegisterSerializeOptions(GetDNS, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetNTPResponse, 'http://www.onvif.org/ver10/device/wsdl', 'SetNTPResponse');
  RemClassRegistry.RegisterSerializeOptions(SetNTPResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetDynamicDNS, 'http://www.onvif.org/ver10/device/wsdl', 'GetDynamicDNS');
  RemClassRegistry.RegisterSerializeOptions(GetDynamicDNS, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetDynamicDNSResponse, 'http://www.onvif.org/ver10/device/wsdl', 'GetDynamicDNSResponse');
  RemClassRegistry.RegisterSerializeOptions(GetDynamicDNSResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetNTP, 'http://www.onvif.org/ver10/device/wsdl', 'GetNTP');
  RemClassRegistry.RegisterSerializeOptions(GetNTP, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetNTPResponse, 'http://www.onvif.org/ver10/device/wsdl', 'GetNTPResponse');
  RemClassRegistry.RegisterSerializeOptions(GetNTPResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetUserResponse, 'http://www.onvif.org/ver10/device/wsdl', 'SetUserResponse');
  RemClassRegistry.RegisterSerializeOptions(SetUserResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetWsdlUrl, 'http://www.onvif.org/ver10/device/wsdl', 'GetWsdlUrl');
  RemClassRegistry.RegisterSerializeOptions(GetWsdlUrl, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(DeleteUsersResponse, 'http://www.onvif.org/ver10/device/wsdl', 'DeleteUsersResponse');
  RemClassRegistry.RegisterSerializeOptions(DeleteUsersResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(SetUser), 'http://www.onvif.org/ver10/device/wsdl', 'SetUser');
  RemClassRegistry.RegisterSerializeOptions(TypeInfo(SetUser), [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetHostnameResponse, 'http://www.onvif.org/ver10/device/wsdl', 'GetHostnameResponse');
  RemClassRegistry.RegisterSerializeOptions(GetHostnameResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetHostnameResponse, 'http://www.onvif.org/ver10/device/wsdl', 'SetHostnameResponse');
  RemClassRegistry.RegisterSerializeOptions(SetHostnameResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetCapabilitiesResponse, 'http://www.onvif.org/ver10/device/wsdl', 'GetCapabilitiesResponse');
  RemClassRegistry.RegisterSerializeOptions(GetCapabilitiesResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetHostname, 'http://www.onvif.org/ver10/device/wsdl', 'GetHostname');
  RemClassRegistry.RegisterSerializeOptions(GetHostname, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetZeroConfigurationResponse, 'http://www.onvif.org/ver10/device/wsdl', 'SetZeroConfigurationResponse');
  RemClassRegistry.RegisterSerializeOptions(SetZeroConfigurationResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetIPAddressFilter, 'http://www.onvif.org/ver10/device/wsdl', 'GetIPAddressFilter');
  RemClassRegistry.RegisterSerializeOptions(GetIPAddressFilter, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetNetworkDefaultGatewayResponse, 'http://www.onvif.org/ver10/device/wsdl', 'SetNetworkDefaultGatewayResponse');
  RemClassRegistry.RegisterSerializeOptions(SetNetworkDefaultGatewayResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetZeroConfiguration, 'http://www.onvif.org/ver10/device/wsdl', 'GetZeroConfiguration');
  RemClassRegistry.RegisterSerializeOptions(GetZeroConfiguration, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetZeroConfigurationResponse, 'http://www.onvif.org/ver10/device/wsdl', 'GetZeroConfigurationResponse');
  RemClassRegistry.RegisterSerializeOptions(GetZeroConfigurationResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(AddIPAddressFilter, 'http://www.onvif.org/ver10/device/wsdl', 'AddIPAddressFilter');
  RemClassRegistry.RegisterSerializeOptions(AddIPAddressFilter, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(AddIPAddressFilterResponse, 'http://www.onvif.org/ver10/device/wsdl', 'AddIPAddressFilterResponse');
  RemClassRegistry.RegisterSerializeOptions(AddIPAddressFilterResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(RemoveIPAddressFilter, 'http://www.onvif.org/ver10/device/wsdl', 'RemoveIPAddressFilter');
  RemClassRegistry.RegisterSerializeOptions(RemoveIPAddressFilter, [xoLiteralParam]);
end;

procedure RegisterTypeProc1;
begin
  RemClassRegistry.RegisterXSClass(GetIPAddressFilterResponse, 'http://www.onvif.org/ver10/device/wsdl', 'GetIPAddressFilterResponse');
  RemClassRegistry.RegisterSerializeOptions(GetIPAddressFilterResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetIPAddressFilter, 'http://www.onvif.org/ver10/device/wsdl', 'SetIPAddressFilter');
  RemClassRegistry.RegisterSerializeOptions(SetIPAddressFilter, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetIPAddressFilterResponse, 'http://www.onvif.org/ver10/device/wsdl', 'SetIPAddressFilterResponse');
  RemClassRegistry.RegisterSerializeOptions(SetIPAddressFilterResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetNetworkProtocols, 'http://www.onvif.org/ver10/device/wsdl', 'GetNetworkProtocols');
  RemClassRegistry.RegisterSerializeOptions(GetNetworkProtocols, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetDynamicDNSResponse, 'http://www.onvif.org/ver10/device/wsdl', 'SetDynamicDNSResponse');
  RemClassRegistry.RegisterSerializeOptions(SetDynamicDNSResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetNetworkInterfaces, 'http://www.onvif.org/ver10/device/wsdl', 'GetNetworkInterfaces');
  RemClassRegistry.RegisterSerializeOptions(GetNetworkInterfaces, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(GetNetworkInterfacesResponse), 'http://www.onvif.org/ver10/device/wsdl', 'GetNetworkInterfacesResponse');
  RemClassRegistry.RegisterSerializeOptions(TypeInfo(GetNetworkInterfacesResponse), [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetNetworkDefaultGateway, 'http://www.onvif.org/ver10/device/wsdl', 'GetNetworkDefaultGateway');
  RemClassRegistry.RegisterSerializeOptions(GetNetworkDefaultGateway, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetNetworkDefaultGatewayResponse, 'http://www.onvif.org/ver10/device/wsdl', 'GetNetworkDefaultGatewayResponse');
  RemClassRegistry.RegisterSerializeOptions(GetNetworkDefaultGatewayResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(GetNetworkProtocolsResponse), 'http://www.onvif.org/ver10/device/wsdl', 'GetNetworkProtocolsResponse');
  RemClassRegistry.RegisterSerializeOptions(TypeInfo(GetNetworkProtocolsResponse), [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(SetNetworkProtocols), 'http://www.onvif.org/ver10/device/wsdl', 'SetNetworkProtocols');
  RemClassRegistry.RegisterSerializeOptions(TypeInfo(SetNetworkProtocols), [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetNetworkProtocolsResponse, 'http://www.onvif.org/ver10/device/wsdl', 'SetNetworkProtocolsResponse');
  RemClassRegistry.RegisterSerializeOptions(SetNetworkProtocolsResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetDot11Capabilities, 'http://www.onvif.org/ver10/device/wsdl', 'GetDot11Capabilities');
  RemClassRegistry.RegisterSerializeOptions(GetDot11Capabilities, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(DateTime, 'http://www.onvif.org/ver10/schema', 'DateTime');
  RemClassRegistry.RegisterXSInfo(TypeInfo(SetDateTimeType), 'http://www.onvif.org/ver10/schema', 'SetDateTimeType');
  RemClassRegistry.RegisterXSClass(SystemDateTimeExtension, 'http://www.onvif.org/ver10/schema', 'SystemDateTimeExtension');
  RemClassRegistry.RegisterXSClass(hexBinary, 'http://www.w3.org/2005/05/xmlmime', 'hexBinary');
  RemClassRegistry.RegisterXSClass(base64Binary, 'http://www.w3.org/2005/05/xmlmime', 'base64Binary');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_OnvifVersion), 'http://www.onvif.org/ver10/schema', 'Array_Of_OnvifVersion');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_NetworkZeroConfiguration), 'http://www.onvif.org/ver10/schema', 'Array_Of_NetworkZeroConfiguration');
  RemClassRegistry.RegisterXSInfo(TypeInfo(SystemLogUriList), 'http://www.onvif.org/ver10/schema', 'SystemLogUriList');
  RemClassRegistry.RegisterXSInfo(TypeInfo(SystemLogType), 'http://www.onvif.org/ver10/schema', 'SystemLogType');
  RemClassRegistry.RegisterXSClass(BinaryData, 'http://www.onvif.org/ver10/schema', 'BinaryData');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(BinaryData), 'contentType', '[Namespace="http://www.w3.org/2005/05/xmlmime"]');
  RemClassRegistry.RegisterXSClass(SystemDateTime, 'http://www.onvif.org/ver10/schema', 'SystemDateTime');
  RemClassRegistry.RegisterXSClass(SetNetworkInterfacesResponse, 'http://www.onvif.org/ver10/device/wsdl', 'SetNetworkInterfacesResponse');
  RemClassRegistry.RegisterSerializeOptions(SetNetworkInterfacesResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetHostnameFromDHCPResponse, 'http://www.onvif.org/ver10/device/wsdl', 'SetHostnameFromDHCPResponse');
  RemClassRegistry.RegisterSerializeOptions(SetHostnameFromDHCPResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetHostnameFromDHCP, 'http://www.onvif.org/ver10/device/wsdl', 'SetHostnameFromDHCP');
  RemClassRegistry.RegisterSerializeOptions(SetHostnameFromDHCP, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetClientCertificateModeResponse, 'http://www.onvif.org/ver10/device/wsdl', 'GetClientCertificateModeResponse');
  RemClassRegistry.RegisterSerializeOptions(GetClientCertificateModeResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetClientCertificateMode, 'http://www.onvif.org/ver10/device/wsdl', 'SetClientCertificateMode');
  RemClassRegistry.RegisterSerializeOptions(SetClientCertificateMode, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(DateTimeRange, 'http://www.onvif.org/ver10/schema', 'DateTimeRange');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(DateTimeRange), 'Until_', '[ExtName="Until"]');
  RemClassRegistry.RegisterXSClass(BackupFile, 'http://www.onvif.org/ver10/schema', 'BackupFile');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(BackupFile), 'Name_', '[ExtName="Name"]');
  RemClassRegistry.RegisterXSClass(SupportInformation, 'http://www.onvif.org/ver10/schema', 'SupportInformation');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SupportInformation), 'String_', '[ExtName="String"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(DeleteUsers), 'http://www.onvif.org/ver10/device/wsdl', 'DeleteUsers');
  RemClassRegistry.RegisterSerializeOptions(TypeInfo(DeleteUsers), [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(EAPMethodConfiguration, 'http://www.onvif.org/ver10/schema', 'EAPMethodConfiguration');
  RemClassRegistry.RegisterXSClass(UserExtension, 'http://www.onvif.org/ver10/schema', 'UserExtension');
  RemClassRegistry.RegisterXSClass(SystemLogUri, 'http://www.onvif.org/ver10/schema', 'SystemLogUri');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SystemLogUri), 'Type_', '[ExtName="Type"]');
  RemClassRegistry.RegisterXSClass(GetWsdlUrlResponse, 'http://www.onvif.org/ver10/device/wsdl', 'GetWsdlUrlResponse');
  RemClassRegistry.RegisterSerializeOptions(GetWsdlUrlResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(Space1DDescription, 'http://www.onvif.org/ver10/schema', 'Space1DDescription');
  RemClassRegistry.RegisterXSClass(Space2DDescription, 'http://www.onvif.org/ver10/schema', 'Space2DDescription');
  RemClassRegistry.RegisterXSClass(Vector, 'http://www.onvif.org/ver10/schema', 'Vector');
  RemClassRegistry.RegisterXSClass(Rectangle, 'http://www.onvif.org/ver10/schema', 'Rectangle');
  RemClassRegistry.RegisterXSClass(WideDynamicRange, 'http://www.onvif.org/ver10/schema', 'WideDynamicRange');
  RemClassRegistry.RegisterXSClass(WhiteBalance, 'http://www.onvif.org/ver10/schema', 'WhiteBalance');
  RemClassRegistry.RegisterXSClass(BacklightCompensation20, 'http://www.onvif.org/ver10/schema', 'BacklightCompensation20');
  RemClassRegistry.RegisterXSClass(BacklightCompensation, 'http://www.onvif.org/ver10/schema', 'BacklightCompensation');
  RemClassRegistry.RegisterXSClass(Exposure, 'http://www.onvif.org/ver10/schema', 'Exposure');
  RemClassRegistry.RegisterXSClass(FocusConfiguration, 'http://www.onvif.org/ver10/schema', 'FocusConfiguration');
  RemClassRegistry.RegisterXSClass(Exposure20, 'http://www.onvif.org/ver10/schema', 'Exposure20');
  RemClassRegistry.RegisterXSClass(NoiseReduction, 'http://www.onvif.org/ver10/schema', 'NoiseReduction');
  RemClassRegistry.RegisterXSClass(ImageStabilization, 'http://www.onvif.org/ver10/schema', 'ImageStabilization');
  RemClassRegistry.RegisterXSClass(WhiteBalance20, 'http://www.onvif.org/ver10/schema', 'WhiteBalance20');
  RemClassRegistry.RegisterXSClass(FocusConfiguration20, 'http://www.onvif.org/ver10/schema', 'FocusConfiguration20');
  RemClassRegistry.RegisterXSClass(WideDynamicRange20, 'http://www.onvif.org/ver10/schema', 'WideDynamicRange20');
  RemClassRegistry.RegisterXSClass(ToneCompensation, 'http://www.onvif.org/ver10/schema', 'ToneCompensation');
  RemClassRegistry.RegisterXSClass(Defogging, 'http://www.onvif.org/ver10/schema', 'Defogging');
  RemClassRegistry.RegisterXSClass(CertificateUsage, 'http://www.onvif.org/ver10/schema', 'CertificateUsage');
  RemClassRegistry.RegisterXSClass(LocalLocation, 'http://www.onvif.org/ver10/schema', 'LocalLocation');
  RemClassRegistry.RegisterXSClass(GeoOrientation, 'http://www.onvif.org/ver10/schema', 'GeoOrientation');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ReferenceToken), 'http://www.onvif.org/ver10/schema', 'ReferenceToken');
  RemClassRegistry.RegisterXSClass(SetNetworkInterfaces, 'http://www.onvif.org/ver10/device/wsdl', 'SetNetworkInterfaces');
  RemClassRegistry.RegisterSerializeOptions(SetNetworkInterfaces, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetZeroConfiguration, 'http://www.onvif.org/ver10/device/wsdl', 'SetZeroConfiguration');
  RemClassRegistry.RegisterSerializeOptions(SetZeroConfiguration, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetDot1XConfiguration, 'http://www.onvif.org/ver10/device/wsdl', 'GetDot1XConfiguration');
  RemClassRegistry.RegisterSerializeOptions(GetDot1XConfiguration, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetRelayOutputSettings, 'http://www.onvif.org/ver10/device/wsdl', 'SetRelayOutputSettings');
  RemClassRegistry.RegisterSerializeOptions(SetRelayOutputSettings, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(DeleteDot1XConfiguration), 'http://www.onvif.org/ver10/device/wsdl', 'DeleteDot1XConfiguration');
  RemClassRegistry.RegisterSerializeOptions(TypeInfo(DeleteDot1XConfiguration), [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(PaneLayout, 'http://www.onvif.org/ver10/schema', 'PaneLayout');
  RemClassRegistry.RegisterXSClass(LocationEntity, 'http://www.onvif.org/ver10/schema', 'LocationEntity');
  RemClassRegistry.RegisterXSClass(LocalOrientation, 'http://www.onvif.org/ver10/schema', 'LocalOrientation');
  RemClassRegistry.RegisterXSClass(Color, 'http://www.onvif.org/ver10/schema', 'Color');
  RemClassRegistry.RegisterXSInfo(TypeInfo(UserLevel), 'http://www.onvif.org/ver10/schema', 'UserLevel');
  RemClassRegistry.RegisterXSClass(User, 'http://www.onvif.org/ver10/schema', 'User');
  RemClassRegistry.RegisterXSClass(GeoLocation, 'http://www.onvif.org/ver10/schema', 'GeoLocation');
  RemClassRegistry.RegisterXSClass(RemoteUser, 'http://www.onvif.org/ver10/schema', 'RemoteUser');
  RemClassRegistry.RegisterXSClass(CreateStorageConfigurationResponse, 'http://www.onvif.org/ver10/device/wsdl', 'CreateStorageConfigurationResponse');
  RemClassRegistry.RegisterSerializeOptions(CreateStorageConfigurationResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetStorageConfiguration, 'http://www.onvif.org/ver10/device/wsdl', 'GetStorageConfiguration');
  RemClassRegistry.RegisterSerializeOptions(GetStorageConfiguration, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetStorageConfigurationResponse, 'http://www.onvif.org/ver10/device/wsdl', 'GetStorageConfigurationResponse');
  RemClassRegistry.RegisterSerializeOptions(GetStorageConfigurationResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetStorageConfigurations, 'http://www.onvif.org/ver10/device/wsdl', 'GetStorageConfigurations');
  RemClassRegistry.RegisterSerializeOptions(GetStorageConfigurations, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(GetStorageConfigurationsResponse), 'http://www.onvif.org/ver10/device/wsdl', 'GetStorageConfigurationsResponse');
  RemClassRegistry.RegisterSerializeOptions(TypeInfo(GetStorageConfigurationsResponse), [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(CreateStorageConfiguration, 'http://www.onvif.org/ver10/device/wsdl', 'CreateStorageConfiguration');
  RemClassRegistry.RegisterSerializeOptions(CreateStorageConfiguration, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(DeleteStorageConfigurationResponse, 'http://www.onvif.org/ver10/device/wsdl', 'DeleteStorageConfigurationResponse');
  RemClassRegistry.RegisterSerializeOptions(DeleteStorageConfigurationResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetGeoLocation, 'http://www.onvif.org/ver10/device/wsdl', 'GetGeoLocation');
  RemClassRegistry.RegisterSerializeOptions(GetGeoLocation, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(GetGeoLocationResponse), 'http://www.onvif.org/ver10/device/wsdl', 'GetGeoLocationResponse');
  RemClassRegistry.RegisterSerializeOptions(TypeInfo(GetGeoLocationResponse), [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetStorageConfiguration, 'http://www.onvif.org/ver10/device/wsdl', 'SetStorageConfiguration');
  RemClassRegistry.RegisterSerializeOptions(SetStorageConfiguration, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetStorageConfigurationResponse, 'http://www.onvif.org/ver10/device/wsdl', 'SetStorageConfigurationResponse');
  RemClassRegistry.RegisterSerializeOptions(SetStorageConfigurationResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(DeleteStorageConfiguration, 'http://www.onvif.org/ver10/device/wsdl', 'DeleteStorageConfiguration');
  RemClassRegistry.RegisterSerializeOptions(DeleteStorageConfiguration, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(ScanAvailableDot11Networks, 'http://www.onvif.org/ver10/device/wsdl', 'ScanAvailableDot11Networks');
  RemClassRegistry.RegisterSerializeOptions(ScanAvailableDot11Networks, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(ScanAvailableDot11NetworksResponse), 'http://www.onvif.org/ver10/device/wsdl', 'ScanAvailableDot11NetworksResponse');
  RemClassRegistry.RegisterSerializeOptions(TypeInfo(ScanAvailableDot11NetworksResponse), [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetSystemUris, 'http://www.onvif.org/ver10/device/wsdl', 'GetSystemUris');
  RemClassRegistry.RegisterSerializeOptions(GetSystemUris, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetDot11CapabilitiesResponse, 'http://www.onvif.org/ver10/device/wsdl', 'GetDot11CapabilitiesResponse');
  RemClassRegistry.RegisterSerializeOptions(GetDot11CapabilitiesResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetDot11Status, 'http://www.onvif.org/ver10/device/wsdl', 'GetDot11Status');
  RemClassRegistry.RegisterSerializeOptions(GetDot11Status, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetDot11StatusResponse, 'http://www.onvif.org/ver10/device/wsdl', 'GetDot11StatusResponse');
  RemClassRegistry.RegisterSerializeOptions(GetDot11StatusResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(StartSystemRestore, 'http://www.onvif.org/ver10/device/wsdl', 'StartSystemRestore');
  RemClassRegistry.RegisterSerializeOptions(StartSystemRestore, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetSystemUrisResponse, 'http://www.onvif.org/ver10/device/wsdl', 'GetSystemUrisResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetSystemUrisResponse), 'SystemLogUris', '[ArrayItemName="SystemLog"]');
  RemClassRegistry.RegisterSerializeOptions(GetSystemUrisResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(Extension, 'http://www.onvif.org/ver10/device/wsdl', 'Extension');
  RemClassRegistry.RegisterXSClass(StartFirmwareUpgrade, 'http://www.onvif.org/ver10/device/wsdl', 'StartFirmwareUpgrade');
  RemClassRegistry.RegisterSerializeOptions(StartFirmwareUpgrade, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(SetGeoLocation), 'http://www.onvif.org/ver10/device/wsdl', 'SetGeoLocation');
  RemClassRegistry.RegisterSerializeOptions(TypeInfo(SetGeoLocation), [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(AnalyticsDeviceExtension, 'http://www.onvif.org/ver10/schema', 'AnalyticsDeviceExtension');
  RemClassRegistry.RegisterXSClass(SystemLog, 'http://www.onvif.org/ver10/schema', 'SystemLog');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SystemLog), 'String_', '[ExtName="String"]');
  RemClassRegistry.RegisterXSClass(AttachmentData, 'http://www.onvif.org/ver10/schema', 'AttachmentData');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(AttachmentData), 'contentType', '[Namespace="http://www.w3.org/2005/05/xmlmime"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(AttachmentData), 'Include', '[Namespace="http://www.w3.org/2004/08/xop/include"]');
  RemClassRegistry.RegisterXSClass(SystemCapabilitiesExtension, 'http://www.onvif.org/ver10/schema', 'SystemCapabilitiesExtension');
  RemClassRegistry.RegisterXSClass(SystemCapabilitiesExtension2, 'http://www.onvif.org/ver10/schema', 'SystemCapabilitiesExtension2');
end;

procedure RegisterTypeProc2;
begin
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_PrefixedIPv4Address), 'http://www.onvif.org/ver10/schema', 'Array_Of_PrefixedIPv4Address');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_IPAddress), 'http://www.onvif.org/ver10/schema', 'Array_Of_IPAddress');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_Dot3Configuration), 'http://www.onvif.org/ver10/schema', 'Array_Of_Dot3Configuration');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_Dot11Configuration), 'http://www.onvif.org/ver10/schema', 'Array_Of_Dot11Configuration');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_PrefixedIPv6Address), 'http://www.onvif.org/ver10/schema', 'Array_Of_PrefixedIPv6Address');
  RemClassRegistry.RegisterXSClass(RealTimeStreamingCapabilities, 'http://www.onvif.org/ver10/schema', 'RealTimeStreamingCapabilities');
  RemClassRegistry.RegisterXSClass(MediaCapabilitiesExtension, 'http://www.onvif.org/ver10/schema', 'MediaCapabilitiesExtension');
  RemClassRegistry.RegisterXSClass(SetGeoLocationResponse, 'http://www.onvif.org/ver10/device/wsdl', 'SetGeoLocationResponse');
  RemClassRegistry.RegisterSerializeOptions(SetGeoLocationResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(DeleteGeoLocation), 'http://www.onvif.org/ver10/device/wsdl', 'DeleteGeoLocation');
  RemClassRegistry.RegisterSerializeOptions(TypeInfo(DeleteGeoLocation), [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(DeleteGeoLocationResponse, 'http://www.onvif.org/ver10/device/wsdl', 'DeleteGeoLocationResponse');
  RemClassRegistry.RegisterSerializeOptions(DeleteGeoLocationResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(NetworkCapabilitiesExtension2, 'http://www.onvif.org/ver10/schema', 'NetworkCapabilitiesExtension2');
  RemClassRegistry.RegisterXSClass(SecurityCapabilitiesExtension, 'http://www.onvif.org/ver10/schema', 'SecurityCapabilitiesExtension');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SecurityCapabilitiesExtension), 'TLS1_0', '[ExtName="TLS1.0"]');
  RemClassRegistry.RegisterXSClass(RealTimeStreamingCapabilitiesExtension, 'http://www.onvif.org/ver10/schema', 'RealTimeStreamingCapabilitiesExtension');
  RemClassRegistry.RegisterXSClass(NetworkCapabilitiesExtension, 'http://www.onvif.org/ver10/schema', 'NetworkCapabilitiesExtension');
  RemClassRegistry.RegisterXSClass(reasontext, 'http://www.w3.org/2003/05/soap-envelope', 'reasontext');
  RemClassRegistry.RegisterXSClass(CreateUsersResponse, 'http://www.onvif.org/ver10/device/wsdl', 'CreateUsersResponse');
  RemClassRegistry.RegisterSerializeOptions(CreateUsersResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(IPv4NetworkInterfaceSetConfiguration, 'http://www.onvif.org/ver10/schema', 'IPv4NetworkInterfaceSetConfiguration');
  RemClassRegistry.RegisterXSClass(NetworkInterfaceSetConfigurationExtension, 'http://www.onvif.org/ver10/schema', 'NetworkInterfaceSetConfigurationExtension');
  RemClassRegistry.RegisterXSClass(DynamicDNSInformationExtension, 'http://www.onvif.org/ver10/schema', 'DynamicDNSInformationExtension');
  RemClassRegistry.RegisterXSClass(CertificateWithPrivateKey, 'http://www.onvif.org/ver10/schema', 'CertificateWithPrivateKey');
  RemClassRegistry.RegisterXSClass(CertificateStatus, 'http://www.onvif.org/ver10/schema', 'CertificateStatus');
  RemClassRegistry.RegisterXSClass(Certificate, 'http://www.onvif.org/ver10/schema', 'Certificate');
  RemClassRegistry.RegisterXSClass(TimeZone, 'http://www.onvif.org/ver10/schema', 'TimeZone');
  RemClassRegistry.RegisterXSClass(SetHostname, 'http://www.onvif.org/ver10/device/wsdl', 'SetHostname');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SetHostname), 'Name_', '[ExtName="Name"]');
  RemClassRegistry.RegisterSerializeOptions(SetHostname, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetCertificateInformation, 'http://www.onvif.org/ver10/device/wsdl', 'GetCertificateInformation');
  RemClassRegistry.RegisterSerializeOptions(GetCertificateInformation, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(CreateCertificate, 'http://www.onvif.org/ver10/device/wsdl', 'CreateCertificate');
  RemClassRegistry.RegisterSerializeOptions(CreateCertificate, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(DeleteCertificates), 'http://www.onvif.org/ver10/device/wsdl', 'DeleteCertificates');
  RemClassRegistry.RegisterSerializeOptions(TypeInfo(DeleteCertificates), [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetDNS, 'http://www.onvif.org/ver10/device/wsdl', 'SetDNS');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SetDNS), 'SearchDomain', '[ArrayItemName="CertificateID"]');
  RemClassRegistry.RegisterSerializeOptions(SetDNS, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetPkcs10Request, 'http://www.onvif.org/ver10/device/wsdl', 'GetPkcs10Request');
  RemClassRegistry.RegisterSerializeOptions(GetPkcs10Request, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(TLSConfiguration, 'http://www.onvif.org/ver10/schema', 'TLSConfiguration');
  RemClassRegistry.RegisterXSClass(OSDPosConfiguration, 'http://www.onvif.org/ver10/schema', 'OSDPosConfiguration');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(OSDPosConfiguration), 'Type_', '[ExtName="Type"]');
  RemClassRegistry.RegisterXSClass(OSDPosConfigurationExtension, 'http://www.onvif.org/ver10/schema', 'OSDPosConfigurationExtension');
  RemClassRegistry.RegisterXSClass(NetworkInterfaceSetConfigurationExtension2, 'http://www.onvif.org/ver10/schema', 'NetworkInterfaceSetConfigurationExtension2');
  RemClassRegistry.RegisterXSClass(OSDReference, 'http://www.onvif.org/ver10/schema', 'OSDReference');
  RemClassRegistry.RegisterXSInfo(TypeInfo(IPType), 'http://www.onvif.org/ver10/schema', 'IPType');
  RemClassRegistry.RegisterXSClass(HostnameInformation, 'http://www.onvif.org/ver10/schema', 'HostnameInformation');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(HostnameInformation), 'Name_', '[ExtName="Name"]');
  RemClassRegistry.RegisterXSClass(HostnameInformationExtension, 'http://www.onvif.org/ver10/schema', 'HostnameInformationExtension');
  RemClassRegistry.RegisterXSInfo(TypeInfo(IPv6Address), 'http://www.onvif.org/ver10/schema', 'IPv6Address');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_IPv6Address), 'http://www.onvif.org/ver10/schema', 'Array_Of_IPv6Address');
  RemClassRegistry.RegisterXSInfo(TypeInfo(DNSName), 'http://www.onvif.org/ver10/schema', 'DNSName');
  RemClassRegistry.RegisterXSClass(NetworkHostExtension, 'http://www.onvif.org/ver10/schema', 'NetworkHostExtension');
  RemClassRegistry.RegisterXSClass(NTPInformationExtension, 'http://www.onvif.org/ver10/schema', 'NTPInformationExtension');
  RemClassRegistry.RegisterXSInfo(TypeInfo(DynamicDNSType), 'http://www.onvif.org/ver10/schema', 'DynamicDNSType');
  RemClassRegistry.RegisterXSClass(DNSInformation, 'http://www.onvif.org/ver10/schema', 'DNSInformation');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(DNSInformation), 'SearchDomain', '[ArrayItemName="CertificateID"]');
  RemClassRegistry.RegisterXSClass(DNSInformationExtension, 'http://www.onvif.org/ver10/schema', 'DNSInformationExtension');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Dot11SecurityMode), 'http://www.onvif.org/ver10/schema', 'Dot11SecurityMode');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Dot11Cipher), 'http://www.onvif.org/ver10/schema', 'Dot11Cipher');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_Dot11Cipher), 'http://www.onvif.org/ver10/schema', 'Array_Of_Dot11Cipher');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Dot11StationMode), 'http://www.onvif.org/ver10/schema', 'Dot11StationMode');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Dot11StationMode), 'Ad_hoc', 'Ad-hoc');
  RemClassRegistry.RegisterXSClass(Dot11SecurityConfiguration, 'http://www.onvif.org/ver10/schema', 'Dot11SecurityConfiguration');
  RemClassRegistry.RegisterXSClass(Dot11PSKSetExtension, 'http://www.onvif.org/ver10/schema', 'Dot11PSKSetExtension');
  RemClassRegistry.RegisterXSClass(Dot11Capabilities, 'http://www.onvif.org/ver10/schema', 'Dot11Capabilities');
  RemClassRegistry.RegisterXSClass(Dot11SecurityConfigurationExtension, 'http://www.onvif.org/ver10/schema', 'Dot11SecurityConfigurationExtension');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Dot11PSK), 'http://www.onvif.org/ver10/schema', 'Dot11PSK');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Dot11PSKPassphrase), 'http://www.onvif.org/ver10/schema', 'Dot11PSKPassphrase');
  RemClassRegistry.RegisterXSClass(Dot11PSKSet, 'http://www.onvif.org/ver10/schema', 'Dot11PSKSet');
  RemClassRegistry.RegisterXSClass(NetworkZeroConfigurationExtension, 'http://www.onvif.org/ver10/schema', 'NetworkZeroConfigurationExtension');
  RemClassRegistry.RegisterXSClass(NetworkZeroConfigurationExtension2, 'http://www.onvif.org/ver10/schema', 'NetworkZeroConfigurationExtension2');
  RemClassRegistry.RegisterXSClass(OSDTextConfigurationExtension, 'http://www.onvif.org/ver10/schema', 'OSDTextConfigurationExtension');
  RemClassRegistry.RegisterXSClass(OSDImgConfiguration, 'http://www.onvif.org/ver10/schema', 'OSDImgConfiguration');
  RemClassRegistry.RegisterXSClass(OSDImgConfigurationExtension, 'http://www.onvif.org/ver10/schema', 'OSDImgConfigurationExtension');
  RemClassRegistry.RegisterXSClass(Description, 'http://docs.oasis-open.org/wsrf/bf-2', 'Description');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Dot11SSIDType), 'http://www.onvif.org/ver10/schema', 'Dot11SSIDType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(IPAddressFilterType), 'http://www.onvif.org/ver10/schema', 'IPAddressFilterType');
  RemClassRegistry.RegisterXSClass(IPAddressFilter, 'http://www.onvif.org/ver10/schema', 'IPAddressFilter');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(IPAddressFilter), 'Type_', '[ExtName="Type"]');
  RemClassRegistry.RegisterXSClass(IPAddressFilterExtension, 'http://www.onvif.org/ver10/schema', 'IPAddressFilterExtension');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Name_), 'http://www.onvif.org/ver10/schema', 'Name_', 'Name');
  RemClassRegistry.RegisterXSInfo(TypeInfo(StringAttrList), 'http://www.onvif.org/ver10/schema', 'StringAttrList');
  RemClassRegistry.RegisterXSClass(ImagingSettings20, 'http://www.onvif.org/ver10/schema', 'ImagingSettings20');
  RemClassRegistry.RegisterXSClass(VideoSourceExtension2, 'http://www.onvif.org/ver10/schema', 'VideoSourceExtension2');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ScopeDefinition), 'http://www.onvif.org/ver10/schema', 'ScopeDefinition');
  RemClassRegistry.RegisterXSClass(Scope, 'http://www.onvif.org/ver10/schema', 'Scope');
  RemClassRegistry.RegisterXSClass(Layout, 'http://www.onvif.org/ver10/schema', 'Layout');
  RemClassRegistry.RegisterXSClass(VideoOutputExtension, 'http://www.onvif.org/ver10/schema', 'VideoOutputExtension');
  RemClassRegistry.RegisterXSClass(DeviceEntity, 'http://www.onvif.org/ver10/schema', 'DeviceEntity');
  RemClassRegistry.RegisterXSClass(AudioOutput, 'http://www.onvif.org/ver10/schema', 'AudioOutput');
  RemClassRegistry.RegisterXSClass(VideoOutput, 'http://www.onvif.org/ver10/schema', 'VideoOutput');
  RemClassRegistry.RegisterXSClass(OSDConfiguration, 'http://www.onvif.org/ver10/schema', 'OSDConfiguration');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(OSDConfiguration), 'Type_', '[ExtName="Type"]');
  RemClassRegistry.RegisterXSClass(DigitalInput, 'http://www.onvif.org/ver10/schema', 'DigitalInput');
  RemClassRegistry.RegisterXSClass(RelayOutput, 'http://www.onvif.org/ver10/schema', 'RelayOutput');
  RemClassRegistry.RegisterXSClass(AudioSource, 'http://www.onvif.org/ver10/schema', 'AudioSource');
  RemClassRegistry.RegisterXSClass(OSDTextConfiguration, 'http://www.onvif.org/ver10/schema', 'OSDTextConfiguration');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(OSDTextConfiguration), 'Type_', '[ExtName="Type"]');
  RemClassRegistry.RegisterXSClass(OSDColor, 'http://www.onvif.org/ver10/schema', 'OSDColor');
  RemClassRegistry.RegisterXSClass(NetworkInterfaceSetConfiguration, 'http://www.onvif.org/ver10/schema', 'NetworkInterfaceSetConfiguration');
  RemClassRegistry.RegisterXSClass(ProfileCapabilities, 'http://www.onvif.org/ver10/schema', 'ProfileCapabilities');
  RemClassRegistry.RegisterXSClass(OnvifVersion, 'http://www.onvif.org/ver10/schema', 'OnvifVersion');
  RemClassRegistry.RegisterXSClass(Date, 'http://www.onvif.org/ver10/schema', 'Date');
  RemClassRegistry.RegisterXSClass(CertificateInformation, 'http://www.onvif.org/ver10/schema', 'CertificateInformation');
  RemClassRegistry.RegisterXSClass(Time, 'http://www.onvif.org/ver10/schema', 'Time');
  RemClassRegistry.RegisterXSClass(PTZPresetTourSupported, 'http://www.onvif.org/ver10/schema', 'PTZPresetTourSupported');
  RemClassRegistry.RegisterXSClass(Dot1XConfiguration, 'http://www.onvif.org/ver10/schema', 'Dot1XConfiguration');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Dot1XConfiguration), 'CACertificateID', '[ArrayItemName="CertificateID"]');
  RemClassRegistry.RegisterXSClass(FloatRange, 'http://www.onvif.org/ver10/schema', 'FloatRange');
  RemClassRegistry.RegisterXSClass(Include2, 'http://www.w3.org/2004/08/xop/include', 'Include2', 'Include');
  RemClassRegistry.RegisterXSClass(Include, 'http://www.w3.org/2004/08/xop/include', 'Include');
  RemClassRegistry.RegisterXSInfo(TypeInfo(NetworkInterfaceConfigPriority), 'http://www.onvif.org/ver10/schema', 'NetworkInterfaceConfigPriority');
  RemClassRegistry.RegisterXSClass(VideoResolution, 'http://www.onvif.org/ver10/schema', 'VideoResolution');
  RemClassRegistry.RegisterXSClass(ImagingSettings, 'http://www.onvif.org/ver10/schema', 'ImagingSettings');
  RemClassRegistry.RegisterXSClass(VideoSourceExtension, 'http://www.onvif.org/ver10/schema', 'VideoSourceExtension');
  RemClassRegistry.RegisterXSClass(DynamicDNSInformation, 'http://www.onvif.org/ver10/schema', 'DynamicDNSInformation');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(DynamicDNSInformation), 'Type_', '[ExtName="Type"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(DynamicDNSInformation), 'Name_', '[ExtName="Name"]');
  RemClassRegistry.RegisterXSClass(StartSystemRestoreResponse, 'http://www.onvif.org/ver10/device/wsdl', 'StartSystemRestoreResponse');
  RemClassRegistry.RegisterSerializeOptions(StartSystemRestoreResponse, [xoLiteralParam]);
end;

procedure RegisterTypeProc3;
begin
  RemClassRegistry.RegisterXSClass(StartFirmwareUpgradeResponse, 'http://www.onvif.org/ver10/device/wsdl', 'StartFirmwareUpgradeResponse');
  RemClassRegistry.RegisterSerializeOptions(StartFirmwareUpgradeResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetDynamicDNS, 'http://www.onvif.org/ver10/device/wsdl', 'SetDynamicDNS');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SetDynamicDNS), 'Type_', '[ExtName="Type"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SetDynamicDNS), 'Name_', '[ExtName="Name"]');
  RemClassRegistry.RegisterSerializeOptions(SetDynamicDNS, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(IrCutFilterAutoAdjustment, 'http://www.onvif.org/ver10/schema', 'IrCutFilterAutoAdjustment');
  RemClassRegistry.RegisterXSClass(RelayOutputSettings, 'http://www.onvif.org/ver10/schema', 'RelayOutputSettings');
  RemClassRegistry.RegisterXSInfo(TypeInfo(IntList), 'http://www.onvif.org/ver10/schema', 'IntList');
  RemClassRegistry.RegisterXSClass(SecurityCapabilitiesExtension2, 'http://www.onvif.org/ver10/schema', 'SecurityCapabilitiesExtension2');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SecurityCapabilitiesExtension2), 'SupportedEAPMethod', '[ArrayItemName="Items"]');
  RemClassRegistry.RegisterXSClass(VideoSource, 'http://www.onvif.org/ver10/schema', 'VideoSource');
  RemClassRegistry.RegisterXSClass(NetworkInterface, 'http://www.onvif.org/ver10/schema', 'NetworkInterface');
  RemClassRegistry.RegisterXSInfo(TypeInfo(IPv6DHCPConfiguration), 'http://www.onvif.org/ver10/schema', 'IPv6DHCPConfiguration');
  RemClassRegistry.RegisterXSClass(IPv6NetworkInterfaceSetConfiguration, 'http://www.onvif.org/ver10/schema', 'IPv6NetworkInterfaceSetConfiguration');
  RemClassRegistry.RegisterXSClass(PrefixedIPv6Address, 'http://www.onvif.org/ver10/schema', 'PrefixedIPv6Address');
  RemClassRegistry.RegisterXSClass(IPv6ConfigurationExtension, 'http://www.onvif.org/ver10/schema', 'IPv6ConfigurationExtension');
  RemClassRegistry.RegisterXSClass(IPv6Configuration, 'http://www.onvif.org/ver10/schema', 'IPv6Configuration');
  RemClassRegistry.RegisterXSClass(IPv4Configuration, 'http://www.onvif.org/ver10/schema', 'IPv4Configuration');
  RemClassRegistry.RegisterXSInfo(TypeInfo(NetworkHostType), 'http://www.onvif.org/ver10/schema', 'NetworkHostType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(IPv4Address), 'http://www.onvif.org/ver10/schema', 'IPv4Address');
  RemClassRegistry.RegisterXSClass(NetworkHost, 'http://www.onvif.org/ver10/schema', 'NetworkHost');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(NetworkHost), 'Type_', '[ExtName="Type"]');
  RemClassRegistry.RegisterXSClass(PrefixedIPv4Address, 'http://www.onvif.org/ver10/schema', 'PrefixedIPv4Address');
  RemClassRegistry.RegisterXSClass(IPAddress, 'http://www.onvif.org/ver10/schema', 'IPAddress');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(IPAddress), 'Type_', '[ExtName="Type"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_IPv4Address), 'http://www.onvif.org/ver10/schema', 'Array_Of_IPv4Address');
  RemClassRegistry.RegisterXSClass(NetworkZeroConfiguration, 'http://www.onvif.org/ver10/schema', 'NetworkZeroConfiguration');
  RemClassRegistry.RegisterXSClass(NetworkGateway, 'http://www.onvif.org/ver10/schema', 'NetworkGateway');
  RemClassRegistry.RegisterXSClass(SetNetworkDefaultGateway, 'http://www.onvif.org/ver10/device/wsdl', 'SetNetworkDefaultGateway');
  RemClassRegistry.RegisterSerializeOptions(SetNetworkDefaultGateway, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(NetworkProtocolType), 'http://www.onvif.org/ver10/schema', 'NetworkProtocolType');
  RemClassRegistry.RegisterXSClass(NetworkProtocol, 'http://www.onvif.org/ver10/schema', 'NetworkProtocol');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(NetworkProtocol), 'Name_', '[ExtName="Name"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(NetworkProtocol), 'Port', '[ArrayItemName="Items"]');
  RemClassRegistry.RegisterXSClass(NetworkProtocolExtension, 'http://www.onvif.org/ver10/schema', 'NetworkProtocolExtension');
  RemClassRegistry.RegisterXSClass(IPv6NetworkInterface, 'http://www.onvif.org/ver10/schema', 'IPv6NetworkInterface');
  RemClassRegistry.RegisterXSInfo(TypeInfo(IANA_IfTypes), 'http://www.onvif.org/ver10/schema', 'IANA_IfTypes', 'IANA-IfTypes');
  RemClassRegistry.RegisterXSClass(NetworkInterfaceExtension, 'http://www.onvif.org/ver10/schema', 'NetworkInterfaceExtension');
  RemClassRegistry.RegisterXSClass(NetworkInterfaceLink, 'http://www.onvif.org/ver10/schema', 'NetworkInterfaceLink');
  RemClassRegistry.RegisterXSClass(IPv4NetworkInterface, 'http://www.onvif.org/ver10/schema', 'IPv4NetworkInterface');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Duplex), 'http://www.onvif.org/ver10/schema', 'Duplex');
  RemClassRegistry.RegisterXSClass(NetworkInterfaceConnectionSetting, 'http://www.onvif.org/ver10/schema', 'NetworkInterfaceConnectionSetting');
  RemClassRegistry.RegisterXSInfo(TypeInfo(HwAddress), 'http://www.onvif.org/ver10/schema', 'HwAddress');
  RemClassRegistry.RegisterXSClass(NetworkInterfaceInfo, 'http://www.onvif.org/ver10/schema', 'NetworkInterfaceInfo');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(NetworkInterfaceInfo), 'Name_', '[ExtName="Name"]');
  RemClassRegistry.RegisterXSClass(Dot3Configuration, 'http://www.onvif.org/ver10/schema', 'Dot3Configuration');
  RemClassRegistry.RegisterXSClass(Dot11Configuration, 'http://www.onvif.org/ver10/schema', 'Dot11Configuration');
  RemClassRegistry.RegisterXSClass(NetworkInterfaceExtension2, 'http://www.onvif.org/ver10/schema', 'NetworkInterfaceExtension2');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Dot11SignalStrength), 'http://www.onvif.org/ver10/schema', 'Dot11SignalStrength');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Dot11SignalStrength), 'Very_Bad', 'Very Bad');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Dot11SignalStrength), 'Very_Good', 'Very Good');
  RemClassRegistry.RegisterXSClass(Dot11Status, 'http://www.onvif.org/ver10/schema', 'Dot11Status');
  RemClassRegistry.RegisterXSInfo(TypeInfo(GetSystemBackupResponse), 'http://www.onvif.org/ver10/device/wsdl', 'GetSystemBackupResponse');
  RemClassRegistry.RegisterSerializeOptions(TypeInfo(GetSystemBackupResponse), [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetSystemSupportInformation, 'http://www.onvif.org/ver10/device/wsdl', 'GetSystemSupportInformation');
  RemClassRegistry.RegisterSerializeOptions(GetSystemSupportInformation, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetSystemSupportInformationResponse, 'http://www.onvif.org/ver10/device/wsdl', 'GetSystemSupportInformationResponse');
  RemClassRegistry.RegisterSerializeOptions(GetSystemSupportInformationResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(RestoreSystem), 'http://www.onvif.org/ver10/device/wsdl', 'RestoreSystem');
  RemClassRegistry.RegisterSerializeOptions(TypeInfo(RestoreSystem), [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(RestoreSystemResponse, 'http://www.onvif.org/ver10/device/wsdl', 'RestoreSystemResponse');
  RemClassRegistry.RegisterSerializeOptions(RestoreSystemResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetSystemBackup, 'http://www.onvif.org/ver10/device/wsdl', 'GetSystemBackup');
  RemClassRegistry.RegisterSerializeOptions(GetSystemBackup, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(GetScopesResponse), 'http://www.onvif.org/ver10/device/wsdl', 'GetScopesResponse');
  RemClassRegistry.RegisterSerializeOptions(TypeInfo(GetScopesResponse), [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(SetScopes), 'http://www.onvif.org/ver10/device/wsdl', 'SetScopes');
  RemClassRegistry.RegisterSerializeOptions(TypeInfo(SetScopes), [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetScopesResponse, 'http://www.onvif.org/ver10/device/wsdl', 'SetScopesResponse');
  RemClassRegistry.RegisterSerializeOptions(SetScopesResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetSystemLog, 'http://www.onvif.org/ver10/device/wsdl', 'GetSystemLog');
  RemClassRegistry.RegisterSerializeOptions(GetSystemLog, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetSystemLogResponse, 'http://www.onvif.org/ver10/device/wsdl', 'GetSystemLogResponse');
  RemClassRegistry.RegisterSerializeOptions(GetSystemLogResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetScopes, 'http://www.onvif.org/ver10/device/wsdl', 'GetScopes');
  RemClassRegistry.RegisterSerializeOptions(GetScopes, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetSystemDateAndTimeResponse, 'http://www.onvif.org/ver10/device/wsdl', 'SetSystemDateAndTimeResponse');
  RemClassRegistry.RegisterSerializeOptions(SetSystemDateAndTimeResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetSystemDateAndTime, 'http://www.onvif.org/ver10/device/wsdl', 'GetSystemDateAndTime');
  RemClassRegistry.RegisterSerializeOptions(GetSystemDateAndTime, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetSystemDateAndTimeResponse, 'http://www.onvif.org/ver10/device/wsdl', 'GetSystemDateAndTimeResponse');
  RemClassRegistry.RegisterSerializeOptions(GetSystemDateAndTimeResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetDeviceInformation, 'http://www.onvif.org/ver10/device/wsdl', 'GetDeviceInformation');
  RemClassRegistry.RegisterSerializeOptions(GetDeviceInformation, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetDeviceInformationResponse, 'http://www.onvif.org/ver10/device/wsdl', 'GetDeviceInformationResponse');
  RemClassRegistry.RegisterSerializeOptions(GetDeviceInformationResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetSystemDateAndTime, 'http://www.onvif.org/ver10/device/wsdl', 'SetSystemDateAndTime');
  RemClassRegistry.RegisterSerializeOptions(SetSystemDateAndTime, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(UpgradeSystemFirmwareResponse, 'http://www.onvif.org/ver10/device/wsdl', 'UpgradeSystemFirmwareResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(UpgradeSystemFirmwareResponse), 'Message_', '[ExtName="Message"]');
  RemClassRegistry.RegisterSerializeOptions(UpgradeSystemFirmwareResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SystemReboot, 'http://www.onvif.org/ver10/device/wsdl', 'SystemReboot');
  RemClassRegistry.RegisterSerializeOptions(SystemReboot, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SystemRebootResponse, 'http://www.onvif.org/ver10/device/wsdl', 'SystemRebootResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SystemRebootResponse), 'Message_', '[ExtName="Message"]');
  RemClassRegistry.RegisterSerializeOptions(SystemRebootResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetSystemFactoryDefaultResponse, 'http://www.onvif.org/ver10/device/wsdl', 'SetSystemFactoryDefaultResponse');
  RemClassRegistry.RegisterSerializeOptions(SetSystemFactoryDefaultResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(UpgradeSystemFirmware, 'http://www.onvif.org/ver10/device/wsdl', 'UpgradeSystemFirmware');
  RemClassRegistry.RegisterSerializeOptions(UpgradeSystemFirmware, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(AddScopes), 'http://www.onvif.org/ver10/device/wsdl', 'AddScopes');
  RemClassRegistry.RegisterSerializeOptions(TypeInfo(AddScopes), [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetEndpointReference, 'http://www.onvif.org/ver10/device/wsdl', 'GetEndpointReference');
  RemClassRegistry.RegisterSerializeOptions(GetEndpointReference, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetEndpointReferenceResponse, 'http://www.onvif.org/ver10/device/wsdl', 'GetEndpointReferenceResponse');
  RemClassRegistry.RegisterSerializeOptions(GetEndpointReferenceResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetRemoteUser, 'http://www.onvif.org/ver10/device/wsdl', 'GetRemoteUser');
  RemClassRegistry.RegisterSerializeOptions(GetRemoteUser, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(GetDPAddressesResponse), 'http://www.onvif.org/ver10/device/wsdl', 'GetDPAddressesResponse');
  RemClassRegistry.RegisterSerializeOptions(TypeInfo(GetDPAddressesResponse), [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(NTPInformation, 'http://www.onvif.org/ver10/schema', 'NTPInformation');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(NTPInformation), 'NTPFromDHCP', '[ArrayItemName="DPAddress"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(NTPInformation), 'NTPManual', '[ArrayItemName="DPAddress"]');
  RemClassRegistry.RegisterXSClass(SetNTP, 'http://www.onvif.org/ver10/device/wsdl', 'SetNTP');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SetNTP), 'NTPManual', '[ArrayItemName="DPAddress"]');
  RemClassRegistry.RegisterSerializeOptions(SetNTP, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(SetDPAddresses), 'http://www.onvif.org/ver10/device/wsdl', 'SetDPAddresses');
  RemClassRegistry.RegisterSerializeOptions(TypeInfo(SetDPAddresses), [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetDPAddressesResponse, 'http://www.onvif.org/ver10/device/wsdl', 'SetDPAddressesResponse');
  RemClassRegistry.RegisterSerializeOptions(SetDPAddressesResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetUsers, 'http://www.onvif.org/ver10/device/wsdl', 'GetUsers');
  RemClassRegistry.RegisterSerializeOptions(GetUsers, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(GetUsersResponse), 'http://www.onvif.org/ver10/device/wsdl', 'GetUsersResponse');
  RemClassRegistry.RegisterSerializeOptions(TypeInfo(GetUsersResponse), [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(CreateUsers), 'http://www.onvif.org/ver10/device/wsdl', 'CreateUsers');
  RemClassRegistry.RegisterSerializeOptions(TypeInfo(CreateUsers), [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetRemoteUserResponse, 'http://www.onvif.org/ver10/device/wsdl', 'GetRemoteUserResponse');
  RemClassRegistry.RegisterSerializeOptions(GetRemoteUserResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetRemoteUser, 'http://www.onvif.org/ver10/device/wsdl', 'SetRemoteUser');
  RemClassRegistry.RegisterSerializeOptions(SetRemoteUser, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetRemoteUserResponse, 'http://www.onvif.org/ver10/device/wsdl', 'SetRemoteUserResponse');
  RemClassRegistry.RegisterSerializeOptions(SetRemoteUserResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetDiscoveryMode, 'http://www.onvif.org/ver10/device/wsdl', 'GetDiscoveryMode');
  RemClassRegistry.RegisterSerializeOptions(GetDiscoveryMode, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(AddScopesResponse, 'http://www.onvif.org/ver10/device/wsdl', 'AddScopesResponse');
  RemClassRegistry.RegisterSerializeOptions(AddScopesResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(RemoveScopes), 'http://www.onvif.org/ver10/device/wsdl', 'RemoveScopes');
  RemClassRegistry.RegisterSerializeOptions(TypeInfo(RemoveScopes), [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(RemoveScopesResponse), 'http://www.onvif.org/ver10/device/wsdl', 'RemoveScopesResponse');
  RemClassRegistry.RegisterSerializeOptions(TypeInfo(RemoveScopesResponse), [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetRemoteDiscoveryModeResponse, 'http://www.onvif.org/ver10/device/wsdl', 'SetRemoteDiscoveryModeResponse');
  RemClassRegistry.RegisterSerializeOptions(SetRemoteDiscoveryModeResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetDPAddresses, 'http://www.onvif.org/ver10/device/wsdl', 'GetDPAddresses');
  RemClassRegistry.RegisterSerializeOptions(GetDPAddresses, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetDiscoveryModeResponse, 'http://www.onvif.org/ver10/device/wsdl', 'SetDiscoveryModeResponse');
  RemClassRegistry.RegisterSerializeOptions(SetDiscoveryModeResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetRemoteDiscoveryMode, 'http://www.onvif.org/ver10/device/wsdl', 'GetRemoteDiscoveryMode');
  RemClassRegistry.RegisterSerializeOptions(GetRemoteDiscoveryMode, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(DeviceIOCapabilities, 'http://www.onvif.org/ver10/schema', 'DeviceIOCapabilities');
  RemClassRegistry.RegisterXSClass(DisplayCapabilities, 'http://www.onvif.org/ver10/schema', 'DisplayCapabilities');
  RemClassRegistry.RegisterXSClass(RecordingCapabilities, 'http://www.onvif.org/ver10/schema', 'RecordingCapabilities');
  RemClassRegistry.RegisterXSClass(MediaCapabilities, 'http://www.onvif.org/ver10/schema', 'MediaCapabilities');
  RemClassRegistry.RegisterXSClass(PTZCapabilities, 'http://www.onvif.org/ver10/schema', 'PTZCapabilities');
  RemClassRegistry.RegisterXSClass(CapabilitiesExtension, 'http://www.onvif.org/ver10/schema', 'CapabilitiesExtension');
  RemClassRegistry.RegisterXSClass(AnalyticsDeviceCapabilities, 'http://www.onvif.org/ver10/schema', 'AnalyticsDeviceCapabilities');
  RemClassRegistry.RegisterXSClass(CapabilitiesExtension2, 'http://www.onvif.org/ver10/schema', 'CapabilitiesExtension2');
  RemClassRegistry.RegisterXSClass(NetworkCapabilities, 'http://www.onvif.org/ver10/schema', 'NetworkCapabilities');
  RemClassRegistry.RegisterXSClass(SearchCapabilities, 'http://www.onvif.org/ver10/schema', 'SearchCapabilities');
  RemClassRegistry.RegisterXSClass(ReplayCapabilities, 'http://www.onvif.org/ver10/schema', 'ReplayCapabilities');
  RemClassRegistry.RegisterXSClass(ReceiverCapabilities, 'http://www.onvif.org/ver10/schema', 'ReceiverCapabilities');
  RemClassRegistry.RegisterXSClass(Capabilities2, 'http://www.onvif.org/ver10/schema', 'Capabilities2', 'Capabilities');
  RemClassRegistry.RegisterXSInfo(TypeInfo(DiscoveryMode), 'http://www.onvif.org/ver10/schema', 'DiscoveryMode');
end;

procedure RegisterTypeProc4;
begin
  RemClassRegistry.RegisterXSClass(GetRemoteDiscoveryModeResponse, 'http://www.onvif.org/ver10/device/wsdl', 'GetRemoteDiscoveryModeResponse');
  RemClassRegistry.RegisterSerializeOptions(GetRemoteDiscoveryModeResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetRemoteDiscoveryMode, 'http://www.onvif.org/ver10/device/wsdl', 'SetRemoteDiscoveryMode');
  RemClassRegistry.RegisterSerializeOptions(SetRemoteDiscoveryMode, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetDiscoveryMode, 'http://www.onvif.org/ver10/device/wsdl', 'SetDiscoveryMode');
  RemClassRegistry.RegisterSerializeOptions(SetDiscoveryMode, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetDiscoveryModeResponse, 'http://www.onvif.org/ver10/device/wsdl', 'GetDiscoveryModeResponse');
  RemClassRegistry.RegisterSerializeOptions(GetDiscoveryModeResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(AnalyticsCapabilities, 'http://www.onvif.org/ver10/schema', 'AnalyticsCapabilities');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Dot11AuthAndMangementSuite), 'http://www.onvif.org/ver10/schema', 'Dot11AuthAndMangementSuite');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_Dot11AuthAndMangementSuite), 'http://www.onvif.org/ver10/schema', 'Array_Of_Dot11AuthAndMangementSuite');
  RemClassRegistry.RegisterXSClass(Dot11AvailableNetworks, 'http://www.onvif.org/ver10/schema', 'Dot11AvailableNetworks');
  RemClassRegistry.RegisterXSClass(Dot11AvailableNetworksExtension, 'http://www.onvif.org/ver10/schema', 'Dot11AvailableNetworksExtension');
  RemClassRegistry.RegisterXSClass(DeviceCapabilities, 'http://www.onvif.org/ver10/schema', 'DeviceCapabilities');
  RemClassRegistry.RegisterXSClass(EventCapabilities, 'http://www.onvif.org/ver10/schema', 'EventCapabilities');
  RemClassRegistry.RegisterXSClass(ImagingCapabilities, 'http://www.onvif.org/ver10/schema', 'ImagingCapabilities');
  RemClassRegistry.RegisterXSInfo(TypeInfo(CapabilityCategory), 'http://www.onvif.org/ver10/schema', 'CapabilityCategory');
  RemClassRegistry.RegisterXSInfo(TypeInfo(GetCapabilities), 'http://www.onvif.org/ver10/device/wsdl', 'GetCapabilities');
  RemClassRegistry.RegisterSerializeOptions(TypeInfo(GetCapabilities), [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(FactoryDefaultType), 'http://www.onvif.org/ver10/schema', 'FactoryDefaultType');
  RemClassRegistry.RegisterXSClass(SetSystemFactoryDefault, 'http://www.onvif.org/ver10/device/wsdl', 'SetSystemFactoryDefault');
  RemClassRegistry.RegisterSerializeOptions(SetSystemFactoryDefault, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(RelayLogicalState), 'http://www.onvif.org/ver10/schema', 'RelayLogicalState');
  RemClassRegistry.RegisterXSClass(SetRelayOutputState, 'http://www.onvif.org/ver10/device/wsdl', 'SetRelayOutputState');
  RemClassRegistry.RegisterSerializeOptions(SetRelayOutputState, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SystemCapabilities, 'http://www.onvif.org/ver10/schema', 'SystemCapabilities');
  RemClassRegistry.RegisterXSClass(Extension2, 'http://www.onvif.org/ver10/device/wsdl', 'Extension2', 'Extension');
  RemClassRegistry.RegisterXSClass(StorageConfiguration, 'http://www.onvif.org/ver10/device/wsdl', 'StorageConfiguration');
  RemClassRegistry.RegisterXSInfo(TypeInfo(AuxiliaryData), 'http://www.onvif.org/ver10/schema', 'AuxiliaryData');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_AuxiliaryData), 'http://www.onvif.org/ver10/schema', 'Array_Of_AuxiliaryData');
  RemClassRegistry.RegisterXSClass(PTZNode, 'http://www.onvif.org/ver10/schema', 'PTZNode');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(PTZNode), 'Name_', '[ExtName="Name"]');
  RemClassRegistry.RegisterXSClass(SendAuxiliaryCommandResponse, 'http://www.onvif.org/ver10/device/wsdl', 'SendAuxiliaryCommandResponse');
  RemClassRegistry.RegisterSerializeOptions(SendAuxiliaryCommandResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SendAuxiliaryCommand, 'http://www.onvif.org/ver10/device/wsdl', 'SendAuxiliaryCommand');
  RemClassRegistry.RegisterSerializeOptions(SendAuxiliaryCommand, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(UserCredential, 'http://www.onvif.org/ver10/device/wsdl', 'UserCredential');
  RemClassRegistry.RegisterXSClass(Extension3, 'http://www.onvif.org/ver10/device/wsdl', 'Extension3', 'Extension');
  RemClassRegistry.RegisterXSClass(StorageConfigurationData, 'http://www.onvif.org/ver10/device/wsdl', 'StorageConfigurationData');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(StorageConfigurationData), 'type_', '[ExtName="type"]');
  RemClassRegistry.RegisterXSClass(GetServiceCapabilities, 'http://www.onvif.org/ver10/device/wsdl', 'GetServiceCapabilities');
  RemClassRegistry.RegisterSerializeOptions(GetServiceCapabilities, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetServiceCapabilitiesResponse, 'http://www.onvif.org/ver10/device/wsdl', 'GetServiceCapabilitiesResponse');
  RemClassRegistry.RegisterSerializeOptions(GetServiceCapabilitiesResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(IOCapabilitiesExtension2, 'http://www.onvif.org/ver10/schema', 'IOCapabilitiesExtension2');
  RemClassRegistry.RegisterXSClass(GetServices, 'http://www.onvif.org/ver10/device/wsdl', 'GetServices');
  RemClassRegistry.RegisterSerializeOptions(GetServices, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(GetServicesResponse), 'http://www.onvif.org/ver10/device/wsdl', 'GetServicesResponse');
  RemClassRegistry.RegisterSerializeOptions(TypeInfo(GetServicesResponse), [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(IOCapabilitiesExtension, 'http://www.onvif.org/ver10/schema', 'IOCapabilitiesExtension');
  RemClassRegistry.RegisterXSClass(Service, 'http://www.onvif.org/ver10/device/wsdl', 'Service');
  RemClassRegistry.RegisterXSClass(Capabilities3, 'http://www.onvif.org/ver10/device/wsdl', 'Capabilities3', 'Capabilities');
  RemClassRegistry.RegisterXSClass(IOCapabilities, 'http://www.onvif.org/ver10/schema', 'IOCapabilities');
  RemClassRegistry.RegisterXSClass(SecurityCapabilities, 'http://www.onvif.org/ver10/schema', 'SecurityCapabilities');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SecurityCapabilities), 'TLS1_1', '[ExtName="TLS1.1"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SecurityCapabilities), 'TLS1_2', '[ExtName="TLS1.2"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SecurityCapabilities), 'X_509Token', '[ExtName="X.509Token"]');
  RemClassRegistry.RegisterXSClass(DeviceCapabilitiesExtension, 'http://www.onvif.org/ver10/schema', 'DeviceCapabilitiesExtension');
  RemClassRegistry.RegisterXSClass(SystemCapabilities2, 'http://www.onvif.org/ver10/device/wsdl', 'SystemCapabilities2', 'SystemCapabilities');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SystemCapabilities2), 'AutoGeo', '[Namespace="http://www.onvif.org/ver10/schema"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SystemCapabilities2), 'StorageTypesSupported', '[Namespace="http://www.onvif.org/ver10/schema"]');
  RemClassRegistry.RegisterXSClass(MiscCapabilities, 'http://www.onvif.org/ver10/device/wsdl', 'MiscCapabilities');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(MiscCapabilities), 'AuxiliaryCommands', '[Namespace="http://www.onvif.org/ver10/schema"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(EAPMethodTypes), 'http://www.onvif.org/ver10/device/wsdl', 'EAPMethodTypes');
  RemClassRegistry.RegisterXSClass(DeviceServiceCapabilities, 'http://www.onvif.org/ver10/device/wsdl', 'DeviceServiceCapabilities');
  RemClassRegistry.RegisterXSClass(Capabilities, 'http://www.onvif.org/ver10/device/wsdl', 'Capabilities');
  RemClassRegistry.RegisterXSClass(NetworkCapabilities2, 'http://www.onvif.org/ver10/device/wsdl', 'NetworkCapabilities2', 'NetworkCapabilities');
  RemClassRegistry.RegisterXSClass(SecurityCapabilities2, 'http://www.onvif.org/ver10/device/wsdl', 'SecurityCapabilities2', 'SecurityCapabilities');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SecurityCapabilities2), 'TLS1_0', '[ExtName="TLS1.0"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SecurityCapabilities2), 'TLS1_1', '[ExtName="TLS1.1"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SecurityCapabilities2), 'TLS1_2', '[ExtName="TLS1.2"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SecurityCapabilities2), 'X_509Token', '[ExtName="X.509Token"]');
end;

procedure RegisterTypeProc5;
begin
end;

initialization
  { Device }
  InvRegistry.RegisterInterface(TypeInfo(Device), 'http://www.onvif.org/ver10/device/wsdl', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(Device), 'http://www.onvif.org/ver10/device/wsdl/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(Device), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(Device), ioLiteral);
  InvRegistry.RegisterInvokeOptions(TypeInfo(Device), ioSOAP12);
  { Device.GetServices }
  InvRegistry.RegisterParamInfo(TypeInfo(Device), 'GetServices', 'parameters', '',
                                '[ArrayItemName="Service"]');
  { Device.RestoreSystem }
  InvRegistry.RegisterParamInfo(TypeInfo(Device), 'RestoreSystem', 'parameters', '',
                                '[ArrayItemName="BackupFiles"]');
  { Device.GetSystemBackup }
  InvRegistry.RegisterParamInfo(TypeInfo(Device), 'GetSystemBackup', 'parameters', '',
                                '[ArrayItemName="BackupFiles"]');
  { Device.GetScopes }
  InvRegistry.RegisterParamInfo(TypeInfo(Device), 'GetScopes', 'parameters', '',
                                '[ArrayItemName="Scopes"]');
  { Device.SetScopes }
  InvRegistry.RegisterParamInfo(TypeInfo(Device), 'SetScopes', 'parameters', '',
                                '[ArrayItemName="Scopes"]');
  { Device.AddScopes }
  InvRegistry.RegisterParamInfo(TypeInfo(Device), 'AddScopes', 'parameters', '',
                                '[ArrayItemName="ScopeItem"]');
  { Device.RemoveScopes }
  InvRegistry.RegisterParamInfo(TypeInfo(Device), 'RemoveScopes', 'parameters', '',
                                '[ArrayItemName="ScopeItem"]');
  InvRegistry.RegisterParamInfo(TypeInfo(Device), 'RemoveScopes', 'parameters', '',
                                '[ArrayItemName="ScopeItem"]');
  { Device.GetDPAddresses }
  InvRegistry.RegisterParamInfo(TypeInfo(Device), 'GetDPAddresses', 'parameters', '',
                                '[ArrayItemName="DPAddress"]');
  { Device.SetDPAddresses }
  InvRegistry.RegisterParamInfo(TypeInfo(Device), 'SetDPAddresses', 'parameters', '',
                                '[ArrayItemName="DPAddress"]');
  { Device.GetUsers }
  InvRegistry.RegisterParamInfo(TypeInfo(Device), 'GetUsers', 'parameters', '',
                                '[ArrayItemName="User"]');
  { Device.CreateUsers }
  InvRegistry.RegisterParamInfo(TypeInfo(Device), 'CreateUsers', 'parameters', '',
                                '[ArrayItemName="User"]');
  { Device.DeleteUsers }
  InvRegistry.RegisterParamInfo(TypeInfo(Device), 'DeleteUsers', 'parameters', '',
                                '[ArrayItemName="Username"]');
  { Device.SetUser }
  InvRegistry.RegisterParamInfo(TypeInfo(Device), 'SetUser', 'parameters', '',
                                '[ArrayItemName="User"]');
  { Device.GetCapabilities }
  InvRegistry.RegisterParamInfo(TypeInfo(Device), 'GetCapabilities', 'parameters', '',
                                '[ArrayItemName="Category"]');
  { Device.GetNetworkInterfaces }
  InvRegistry.RegisterParamInfo(TypeInfo(Device), 'GetNetworkInterfaces', 'parameters', '',
                                '[ArrayItemName="NetworkInterfaces"]');
  { Device.GetNetworkProtocols }
  InvRegistry.RegisterParamInfo(TypeInfo(Device), 'GetNetworkProtocols', 'parameters', '',
                                '[ArrayItemName="NetworkProtocols"]');
  { Device.SetNetworkProtocols }
  InvRegistry.RegisterParamInfo(TypeInfo(Device), 'SetNetworkProtocols', 'parameters', '',
                                '[ArrayItemName="NetworkProtocols"]');
  { Device.GetCertificates }
  InvRegistry.RegisterParamInfo(TypeInfo(Device), 'GetCertificates', 'parameters', '',
                                '[ArrayItemName="NvtCertificate"]');
  { Device.GetCertificatesStatus }
  InvRegistry.RegisterParamInfo(TypeInfo(Device), 'GetCertificatesStatus', 'parameters', '',
                                '[ArrayItemName="CertificateStatus"]');
  { Device.SetCertificatesStatus }
  InvRegistry.RegisterParamInfo(TypeInfo(Device), 'SetCertificatesStatus', 'parameters', '',
                                '[ArrayItemName="CertificateStatus"]');
  { Device.DeleteCertificates }
  InvRegistry.RegisterParamInfo(TypeInfo(Device), 'DeleteCertificates', 'parameters', '',
                                '[ArrayItemName="CertificateID"]');
  { Device.LoadCertificates }
  InvRegistry.RegisterParamInfo(TypeInfo(Device), 'LoadCertificates', 'parameters', '',
                                '[ArrayItemName="NVTCertificate"]');
  { Device.GetRelayOutputs }
  InvRegistry.RegisterParamInfo(TypeInfo(Device), 'GetRelayOutputs', 'parameters', '',
                                '[ArrayItemName="RelayOutputs"]');
  { Device.GetCACertificates }
  InvRegistry.RegisterParamInfo(TypeInfo(Device), 'GetCACertificates', 'parameters', '',
                                '[ArrayItemName="CACertificate"]');
  { Device.LoadCertificateWithPrivateKey }
  InvRegistry.RegisterParamInfo(TypeInfo(Device), 'LoadCertificateWithPrivateKey', 'parameters', '',
                                '[ArrayItemName="CertificateWithPrivateKey"]');
  { Device.LoadCACertificates }
  InvRegistry.RegisterParamInfo(TypeInfo(Device), 'LoadCACertificates', 'parameters', '',
                                '[ArrayItemName="CACertificate"]');
  { Device.GetDot1XConfigurations }
  InvRegistry.RegisterParamInfo(TypeInfo(Device), 'GetDot1XConfigurations', 'parameters', '',
                                '[ArrayItemName="Dot1XConfiguration"]');
  { Device.DeleteDot1XConfiguration }
  InvRegistry.RegisterParamInfo(TypeInfo(Device), 'DeleteDot1XConfiguration', 'parameters', '',
                                '[ArrayItemName="Dot1XConfigurationToken"]');
  { Device.ScanAvailableDot11Networks }
  InvRegistry.RegisterParamInfo(TypeInfo(Device), 'ScanAvailableDot11Networks', 'parameters', '',
                                '[ArrayItemName="Networks"]');
  { Device.GetStorageConfigurations }
  InvRegistry.RegisterParamInfo(TypeInfo(Device), 'GetStorageConfigurations', 'parameters', '',
                                '[ArrayItemName="StorageConfigurations"]');
  { Device.GetGeoLocation }
  InvRegistry.RegisterParamInfo(TypeInfo(Device), 'GetGeoLocation', 'parameters', '',
                                '[ArrayItemName="Location"]');
  { Device.SetGeoLocation }
  InvRegistry.RegisterParamInfo(TypeInfo(Device), 'SetGeoLocation', 'parameters', '',
                                '[ArrayItemName="Location"]');
  { Device.DeleteGeoLocation }
  InvRegistry.RegisterParamInfo(TypeInfo(Device), 'DeleteGeoLocation', 'parameters', '',
                                '[ArrayItemName="Location"]');
  RegisterTypeProc0;
  RegisterTypeProc1;
  RegisterTypeProc2;
  RegisterTypeProc3;
  RegisterTypeProc4;

end.