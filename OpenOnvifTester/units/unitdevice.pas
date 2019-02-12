unit unitdevice;

interface
uses devicemgmt,SOAPHTTPClient,Soap.WebNode,Soap.OpConvertOptions,System.Classes;

function GetIDevice(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): Device;

type
TRioClass = Class
    constructor Create(var Rio : THTTPRIO);
    procedure HTTPRIOBeforeExecute(const MethodName: string;
                                     SOAPRequest: TStream);
    procedure HTTPRIOAfterExecute(const MethodName: string;
                                     SOAPResponse: TStream);
  End;

var
XMLRequest : TStringStream;//Array of Char;
XMLResponse : TStringStream;//Array of Char;

implementation
uses SysUtils;

function GetIDevice;
const
  defWSDL = 'http://localhost:8080/wsdl/IMyService';
  defURL  = 'http://localhost:8080/soap/IMyService';
  defSvc  = 'IMyServiceservice';
  defPrt  = 'IMyServicePort';
var
  RIO: THTTPRIO;
  RioCl : TRioClass;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Rio.WebNode.Options := [wnoSOAP12]; //wnoSOAP12
    Rio.Converter.Options := Rio.Converter.Options+[soSOAP12]+[soDocument]+[soLiteralParams];
    RioCl := TRioClass.Create(Rio);
    Result := (RIO as Device);
   // Rio.WebNode.Options := [wnoSOAP12];
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;

procedure TRioClass.HTTPRIOBeforeExecute;
var
l:Integer;
begin
  // l :=  SoapRequest.Size;
  // SetLength(XMLRequest,l);
  if XMLRequest=nil then  XMLRequest:=TStringStream.Create('',TEncoding.UTF8);
   XMLRequest.Encoding.UTF8;
   XMLRequest.LoadFromStream(SoapRequest);
   //SoapRequest.Read(XMLRequest[0],l);
   //Length(SoapResponse);
end;
procedure TRioClass.HTTPRIOAfterExecute;
var
l:Integer;
begin
   if XmlResponse=nil then  XmlResponse:=TStringStream.Create('',TEncoding.UTF8);
  // l :=  SoapResponse.Size;
   //SetLength(XMLResponse,l);
   XmlResponse.LoadFromStream(SoapResponse);
   //SoapResponse.Read(XMLResponse[0],l);
   //Length(SoapResponse);
end;

constructor TRioClass.Create(var Rio: THTTPRIO);
begin
  Rio.OnBeforeExecute := HTTPRIOBeforeExecute;
  Rio.OnAfterExecute :=  HTTPRIOAfterExecute;
end;

end.
