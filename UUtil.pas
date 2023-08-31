unit UUtil;

interface

uses cxMaskEdit, System.SysUtils;

type
 TUtil = class
   private
   public
     class function RemoveMascara(Value: TcxMaskEdit): string;
 end;

implementation

{ TUtil }

class function TUtil.RemoveMascara(Value: TcxMaskEdit): string;
  var texto : string;
begin
  texto := Value.Text;
  texto := StringReplace(texto,'-','', [rfReplaceAll, rfIgnoreCase]);
  texto := StringReplace(texto,'/','', [rfReplaceAll, rfIgnoreCase]);
  texto := StringReplace(texto,'.','', [rfReplaceAll, rfIgnoreCase]);
  Result :=  texto;
end;

end.
