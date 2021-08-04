unit uTAnimator;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Ani, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Effects,
  FMX.Objects, FMX.ISBase, FMX.ISBase.Presented, FMX.ISEditEx, FMX.Layouts;

type
  TForm57 = class(TForm)
    Button1: TButton;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Grafico: TRectangle;
    ShadowEffect1: TShadowEffect;
    ShadowEffect2: TShadowEffect;
    ShadowEffect3: TShadowEffect;
    ShadowEffect4: TShadowEffect;
    T0: TRadioButton;
    T1: TRadioButton;
    T2: TRadioButton;
    I0: TRadioButton;
    I7: TRadioButton;
    I2: TRadioButton;
    I4: TRadioButton;
    I3: TRadioButton;
    I1: TRadioButton;
    I5: TRadioButton;
    I6: TRadioButton;
    I8: TRadioButton;
    I10: TRadioButton;
    I9: TRadioButton;
    Button2: TButton;
    ShadowEffect5: TShadowEffect;
    Rectangle3: TRectangle;
    ShadowEffect6: TShadowEffect;
    Circulo: TCircle;
    Circulo2: TCircle;
    Inv: TCheckBox;
    Quadrado: TRectangle;
    Quadrado2: TRectangle;
    Quadrado3: TRectangle;
    Quadrado4: TRectangle;
    Text1: TText;
    Text2: TText;
    Text3: TText;
    Text4: TText;
    Layout1: TLayout;
    Text5: TText;
    Text6: TText;
    Linha: TText;
    Button3: TButton;
    ShadowEffect7: TShadowEffect;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    FEixoY : Single;
    FEixoX : Single;
    procedure SetEixoY(const Value: Single);
  public
     Property EixoY : Single    Read FEixoY     Write SetEixoY;
  end;

var
  Form57: TForm57;

implementation

{$R *.fmx}

procedure TForm57.Button1Click(Sender: TObject);
Var
   AniType   : TAnimationType;
   IntType   : TInterpolationType;
begin
Linha.Text := 'TAnimator.AnimateFloat(Objeto, '#39'Propriedade'#39', Valor, Tempo, ';
if t0.IsChecked then Linha.Text := Linha.Text + 'TAnimationType.&In';
if t1.IsChecked then Linha.Text := Linha.Text + 'TAnimationType.Out';
if t2.IsChecked then Linha.Text := Linha.Text + 'TAnimationType.InOut';

Linha.Text := Linha.Text + ', ';

if I0 .IsChecked then Linha.Text := Linha.Text + 'TInterpolationType.Linear';
if I1 .IsChecked then Linha.Text := Linha.Text + 'TInterpolationType.Quadratic';
if I2 .IsChecked then Linha.Text := Linha.Text + 'TInterpolationType.Cubic';
if I3 .IsChecked then Linha.Text := Linha.Text + 'TInterpolationType.Quartic';
if I4 .IsChecked then Linha.Text := Linha.Text + 'TInterpolationType.Quintic';
if I5 .IsChecked then Linha.Text := Linha.Text + 'TInterpolationType.Sinusoidal';
if I6 .IsChecked then Linha.Text := Linha.Text + 'TInterpolationType.Exponential';
if I7 .IsChecked then Linha.Text := Linha.Text + 'TInterpolationType.Circular';
if I8 .IsChecked then Linha.Text := Linha.Text + 'TInterpolationType.Elastic';
if I9 .IsChecked then Linha.Text := Linha.Text + 'TInterpolationType.Back';
if I10.IsChecked then Linha.Text := Linha.Text + 'TInterpolationType.Bounce';
Linha.Text := Linha.Text + ');';


if t0.IsChecked then AniType := TAnimationType.&In;
if t1.IsChecked then AniType := TAnimationType.Out;
if t2.IsChecked then AniType := TAnimationType.InOut;

if I0 .IsChecked then IntType := TInterpolationType.Linear;
if I1 .IsChecked then IntType := TInterpolationType.Quadratic;
if I2 .IsChecked then IntType := TInterpolationType.Cubic;
if I3 .IsChecked then IntType := TInterpolationType.Quartic;
if I4 .IsChecked then IntType := TInterpolationType.Quintic;
if I5 .IsChecked then IntType := TInterpolationType.Sinusoidal;
if I6 .IsChecked then IntType := TInterpolationType.Exponential;
if I7 .IsChecked then IntType := TInterpolationType.Circular;
if I8 .IsChecked then IntType := TInterpolationType.Elastic;
if I9 .IsChecked then IntType := TInterpolationType.Back;
if I10.IsChecked then IntType := TInterpolationType.Bounce;

FEixoX := 20;
FEixoY := 0;

Circulo  .Position.X    := 60;
Circulo  .Position.y    := 197;
Circulo2 .Position.X    := 290;
Circulo2 .Position.y    := 60;
Quadrado .XRadius       := 0;
Quadrado .YRadius       := 0;
Quadrado .RotationAngle := 0;
Quadrado2.Width         := 150;
Quadrado2.Height        := 150;
Quadrado3.Width         := 150;
Quadrado3.Height        := 150;
Quadrado4.Width         := 150;
Quadrado4.Height        := 150;

TAnimator.AnimateFloat(Self,      'EixoY',         200, 4, AniType, IntType);
TAnimator.AnimateFloat(Circulo,   'Position.X',    520, 4, AniType, IntType);
TAnimator.AnimateFloat(Circulo2,  'Position.Y',    334, 4, AniType, IntType);
TAnimator.AnimateFloat(Quadrado,  'XRadius',        75, 4, AniType, IntType);
TAnimator.AnimateFloat(Quadrado,  'YRadius',        75, 4, AniType, IntType);
TAnimator.AnimateFloat(Quadrado2, 'RotationAngle', 360, 4, AniType, IntType);
TAnimator.AnimateFloat(Quadrado3, 'Width',           0, 4, AniType, IntType);
TAnimator.AnimateFloat(Quadrado3, 'Height',          0, 4, AniType, IntType);
TAnimator.AnimateFloat(Quadrado4, 'Width',           0, 4, AniType, IntType);
TAnimator.AnimateFloat(Quadrado4, 'Height',          0, 4, AniType, IntType);


if Inv.IsChecked then
   TThread.CreateAnonymousThread(
      Procedure
      Begin
      Sleep(4000);
      TThread.Queue(Nil,
         procedure
         Begin
         FEixoX  := 20;
         FEixoY  := 200;
         If AniType = TAnimationType.Out Then AniType := TAnimationType.&In
         Else
         If AniType = TAnimationType.&In Then AniType := TAnimationType.Out;
         TAnimator.AnimateFloat(Self,      'EixoY',         0, 4, AniType, IntType);
         TAnimator.AnimateFloat(Circulo,   'Position.X',   60, 4, AniType, IntType);
         TAnimator.AnimateFloat(Circulo2,  'Position.Y',   60, 4, AniType, IntType);
         TAnimator.AnimateFloat(Quadrado,  'XRadius',       0, 4, AniType, IntType);
         TAnimator.AnimateFloat(Quadrado,  'YRadius',       0, 4, AniType, IntType);
         TAnimator.AnimateFloat(Quadrado2, 'RotationAngle', 0, 4, AniType, IntType);
         TAnimator.AnimateFloat(Quadrado3, 'Width',       150, 4, AniType, IntType);
         TAnimator.AnimateFloat(Quadrado3, 'Height',      150, 4, AniType, IntType);
         TAnimator.AnimateFloat(Quadrado4, 'Width',       150, 4, AniType, IntType);
         TAnimator.AnimateFloat(Quadrado4, 'Height',      150, 4, AniType, IntType);
         End);
      End).Start;
end;

procedure TForm57.Button2Click(Sender: TObject);
Var
   Rect      : TRectF;
begin
Linha.Text := '';
Rect := Grafico.BoundsRect;
Rect.Inflate(-5,-5);
Grafico.Canvas.BeginScene;
Grafico.Canvas.Fill.Color := TAlphaColorS.White;
Grafico.Canvas.FillRect(Rect, 0, 0, [], 1);
Grafico.Canvas.Fill.Color := TAlphaColorS.Red;
Grafico.Canvas.FillRect(TRectF.Create(Rect.Left+10, Rect.Top+ 90, Rect.Left+Rect.Width-20, Rect.Top+ 91), 0, 0, [], 1);
Grafico.Canvas.FillRect(TRectF.Create(Rect.Left+10, Rect.Top+300, Rect.Left+Rect.Width-20, Rect.Top+301), 0, 0, [], 1);
Grafico.Canvas.EndScene;
Circulo  .Position.X    := 60;
Circulo  .Position.y    := 197;
Circulo2 .Position.X    := 290;
Circulo2 .Position.y    := 60;
Quadrado .XRadius       := 0;
Quadrado .YRadius       := 0;
Quadrado .RotationAngle := 0;
Quadrado2.Width         := 150;
Quadrado2.Height        := 150;
Quadrado3.Width         := 150;
Quadrado3.Height        := 150;
Quadrado4.Width         := 150;
Quadrado4.Height        := 150;
end;

procedure TForm57.Button3Click(Sender: TObject);
begin
TThread.CreateAnonymousThread(
   Procedure
   Var
      T : Cardinal;
   Begin
   T := TTHread.GetTickCount;
   while (TTHread.GetTickCount - T) < 6000 do
      Begin
      Sleep(30);
      TTHread.Synchronize(Nil, Procedure Begin Sleep(50); End);
      End;
   End).Start;
end;

procedure TForm57.FormShow(Sender: TObject);
begin
TThread.CreateAnonymousThread(
   Procedure
   Begin
   Sleep(50);
   TThread.Queue(Nil,
      Procedure
      Begin
      Button2Click(Nil);
      End);
   End).Start;
end;

procedure TForm57.SetEixoY(const Value: Single);
Var
   Rect : TRectF;
begin
FEixoY := Value;
FEixoX := FEixoX + 2;
Rect   := Grafico.BoundsRect;
Grafico.Canvas.BeginScene;
Grafico.Canvas.Fill.Color := TAlphaColorS.Black;
Grafico.Canvas.FillRect(TREctF.Create(FEixoX+10+Rect.Left, (200-EixoY)+100+Rect.Top+2, FEixoX+10+Rect.Left+2, (200-FEixoY)+100+Rect.Top), 0, 0, [], 1);
Grafico.Canvas.EndScene;
end;

end.
