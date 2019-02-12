//By Stalker1917 GNU LGPL 3.0

unit formMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Spin, StdCtrls, Vcl.ExtCtrls,devicemgmt;

type
  TForm1 = class(TForm)
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    Label7: TLabel;
    Label8: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    LabeledEdit5: TLabeledEdit;
    Button3: TButton;
    Button4: TButton;

    //==============Procedures
    function GetURLString(YesDevice:Boolean=False):String;
    procedure WriteLog(TargetFile:Boolean=False;NumberTest:Integer=0);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    function ImplementTest(Number:Integer;var ResString:String):Byte;
    function TestString(Number:Integer):String;

  private

  public

  end;

var
  Form1: TForm1;
  LogXml : TextFile;
  TestPass : TextFile;
  //============Service
  Service: Device;
  TimeData : GetSystemDateAndTimeResponse;
  CapableData : GetCapabilitiesResponse;
  ScopeData : GetScopesResponse;
  DNSData : GetDNSResponse;
  NetWorkData : GetNetworkInterfacesResponse;
  DeviceInfoData : GetDeviceInformationResponse;
implementation

{$R *.dfm}

uses
  unitdevice;

procedure TForm1.WriteLog;
begin
if TargetFile then
  begin
    if NumberTest>0 then
      begin
         Writeln(LogXml,'');
         Writeln(LogXml,'=========Тест №',NumberTest,'===========');
      end;
    Writeln(LogXml,'XmlRequest');
    Writeln(LogXml,XmlRequest.DataString);
    Writeln(LogXml,'');
    Writeln(LogXml,'XmlAnswer');
    Writeln(LogXml,XmlResponse.DataString);
    Writeln(LogXml,'');
    Writeln(LogXml,'====================');
    Flush(LogXml);
  end
else
  begin
    Memo1.Clear;
    Memo2.Clear;
    Memo1.Lines.Add(XmlRequest.DataString);
    Memo2.Lines.Add(XmlResponse.DataString);
  end;
end;

function TForm1.GetURLString;
var
Tail : String;
begin
  if YesDevice then Tail :='Device'
               else Tail :='IMyService';
  if labelededit5.Text='' then result := labelededit4.Text+':8080/soap/'+Tail
  else  result := labelededit4.Text+':'+labelededit5.Text+'/soap/'+Tail;;

end;



procedure TForm1.Button3Click(Sender: TObject);
var
  Service: Device;
  ResData: GetSystemDateAndTimeResponse;
  i: Integer;
begin
    Service := GetIDevice(false,GetURLString(True));
    try
    ResData := Service.GetSystemDateAndTime(GetSystemDateAndTime.Create);

    try
      // Display the response
      WriteLog;
      LabeledEdit1.Text := IntToStr(ResData.SystemDateAndTime.UTCDateTime.Date.Year);
      LabeledEdit2.Text := IntToStr(ResData.SystemDateAndTime.UTCDateTime.Date.Month);
      LabeledEdit3.Text := IntToStr(ResData.SystemDateAndTime.UTCDateTime.Date.Day);

    finally
      ResData.Free;
    end;
    except
      Memo1.Clear;
      Memo1.Lines.Add(XmlRequest.DataString);
      ResData.Free;
    end;
end;

function TForm1.TestString;
begin
  case Number of
    1: Result := 'GetSystemDateAndTime';
    2: Result := 'GetCapabilities';
    3: Result := 'GetScopes';
    4: Result := 'GetDNS';
    5: Result := 'GetNetworkInterfaces';
    6: Result := 'GetDeviceInformation';
    else Result := 'UnknownFunction';
  end;
end;
function  TForm1.ImplementTest;
var i: Integer;
begin
ResString:='';
Result := 255; //Нераспознанная ошибка
//==============Попытка подачи запроса на сервер ==================
try
  case Number of
    1: TimeData       := Service.GetSystemDateAndTime(GetSystemDateAndTime.Create);
    2: CapableData    := Service.GetCapabilities(GetCapabilities.Create(CapabilityCategory.All));
    3: ScopeData      := Service.GetScopes(GetScopes.Create);
    4: DNSData        := Service.GetDNS(GetDns.Create);
    5: NetWorkData    := Service.GetNetworkInterfaces(GetNetworkInterfaces.Create);
    6: DeviceInfoData := Service.GetDeviceInformation(GetDeviceInformation.Create);
    else
      begin
        Result := 5; //Нет такого теста
        exit;
      end;
  end;
except
  On E : Exception do
    begin
      ResString := E.Message;
      Result := 1; // Код 1  - нет ответа
      exit;
    end;
  else exit;
end;
Result := 2;
//==============Проверка на нулевой указатель==================
case Number of
  1: if TimeData         = nil then exit;
  2: if CapableData      = nil then exit;
  3: if ScopeData        = nil then exit;
  4: if DNSData          = nil then exit;
  5: if NetWorkData      = nil then exit;
  6: if DeviceInfoData   = nil then exit;
end;
//==============Проверка корректности значения==================
try
  WriteLog(True,Number);
  Result := 4;
  case Number of
    1:
      begin
        i:= TimeData.SystemDateAndTime.UTCDateTime.Date.Month;
        ResString := 'Текущий месяц - '+IntToStr(i);
        if (i>=0) and (i<13) then Result :=0;
      end;
    2:
      begin
        i:= CapableData.Capabilities.Device.System.SupportedVersions[0].Major;
        ResString := 'Версия Major - '+IntToStr(i);
        if (i>=0) and (i<31) then Result :=0;
      end;
    3: if Length(ScopeData)>0 then
          begin
            ResString := ScopeData[0].ScopeItem;
            if (ScopeData[0].ScopeItem[1]='h') or (ScopeData[0].ScopeItem[1]='o') then Result :=0;
            ResString :='Протокол Onvif - ' + ResString;
          end;
    4: if (DNSData.DNSInformation.FromDHCP)
         then  if (DNSData.DNSInformation.DNSFromDHCP<>nil) and (Length(DNSData.DNSInformation.DNSFromDHCP)>0) then
                 begin
                   ResString := 'Адрес из DHCP  - ' + DNSData.DNSInformation.DNSFromDHCP[0].IPv4Address;
                   Result :=0;
                 end
               else
         else if (DNSData.DNSInformation.DNSManual<>nil) and (Length(DNSData.DNSInformation.DNSManual)>0) then
                 begin

                   ResString := 'Адрес из Manual  - ' + DNSData.DNSInformation.DNSManual[0].IPv4Address;
                   Result :=0;
                 end;
    5:  if (Length(NetworkData)>0) then
          begin
            ResString := 'Mac-адрес устройства - ' + NetworkData[0].Info.HwAddress;
            if (Length(NetworkData[0].Info.HwAddress)>5) then  Result :=0;
          end;
    6:
      begin
        ResString := DeviceInfoData.FirmwareVersion;
        i := StrToInt(ResString[1]);
        ResString := 'Версия прошивки - ' + ResString;
        if (i>=0) and (i<10) then Result :=0;
      end;
  end;
 // Result := 0; //Без ошибок
except
  On E : Exception do
    begin
      ResString:= E.Message;
      Result := 3; // Неизвестная ошибка в тесте
    end;
end;

end;

procedure TForm1.Button4Click(Sender: TObject);
var
  i: Integer;
  MaxTests : Integer;
  PassedTests:Integer;
  s: String;
begin
  MaxTests := 6;
  PassedTests := 0;
  Service := GetIDevice(false,GetURLString(True));
  WriteLn(TestPass,'Ожидается провести ',MaxTests,' тестов.');
  WriteLn(TestPass,'');
   for I := 1 to MaxTests do
      begin
         WriteLn(TestPass,'Тест №',IntToStr(i),'.',' Проверка работоспособности функции ',TestString(i),'.');
         case ImplementTest(i,s) of
           0:
             begin
               WriteLn(TestPass,'Тест №',IntToStr(i),' успешен. ',s);
               inc(PassedTests);
             end;
           1:   WriteLn(TestPass,'Тест №',IntToStr(i),' провален. Не получен ответ или получен ошибочный ответ. Сообщение об ошибке:', s);
           2:   WriteLn(TestPass,'Тест №',IntToStr(i),' провален. Получен нулевой указатель.');
           3:   WriteLn(TestPass,'Тест №',IntToStr(i),' провален. Ошибка при обратотке результатов фунции. Сообщение об ошибке:', s);
           4:   WriteLn(TestPass,'Тест №',IntToStr(i),' провален. Некорректное значение тестируемого параметра. ',s);
           5:   WriteLn(TestPass,'Тест №',IntToStr(i),' провален. Не существует такого теста');
           255: WriteLn(TestPass,'Тест №',IntToStr(i),' провален. Неизвестная ошибка');
         end;
         WriteLn(TestPass,'');
         Flush(TestPass);
      end;
  WriteLn(TestPass,'Успешно пройдено ',PassedTests,' тестов из ',MaxTests,'.');
  Flush(TestPass);
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CloseFile(LogXml);
  CloseFile(TestPass);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  AssignFile(LogXml,'LogXml.txt');
  Rewrite(LogXml);
  AssignFile(TestPass,'TestPass.txt');
  Rewrite(TestPass);
end;

end.
