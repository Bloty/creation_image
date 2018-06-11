unit script_couleur;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btNoir: TButton;
    btRouge: TButton;
    btCouleurs: TButton;
    btRayure: TButton;
    btDamier: TButton;
    imgCouleur: TImage;
    procedure btCouleursClick(Sender: TObject);
    procedure btDamierClick(Sender: TObject);
    procedure btNoirClick(Sender: TObject);
    procedure btRayureClick(Sender: TObject);
    procedure btRougeClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btNoirClick(Sender: TObject);
begin
    imgCouleur.Canvas.pen.Color:=clBlack;
    imgCouleur.Canvas.brush.Color:=clBlack;
    imgCouleur.canvas.Rectangle (0, 0,300,300);
end;

procedure TForm1.btRayureClick(Sender: TObject);

var
  pxHorizon : integer;

begin
    pxHorizon:=0;
    repeat
     imgCouleur.Canvas.pen.Color:=clRed;
     imgCouleur.Canvas.Line(pxHorizon,0,pxHorizon,300);
     imgCouleur.Canvas.pen.Color:=clYellow;
     imgCouleur.Canvas.Line(pxHorizon+1,0,pxHorizon+1,300);
     imgCouleur.Canvas.pen.Color:=clGreen;
     imgCouleur.Canvas.Line(pxHorizon+2,0,pxHorizon+2,300);
     imgCouleur.Canvas.pen.Color:=clBlue;
     imgCouleur.Canvas.Line(pxHorizon+3,0,pxHorizon+3,300);

     pxHorizon:=pxHorizon+4;
    until (pxHorizon>300);
end;

procedure TForm1.btCouleursClick(Sender: TObject);
begin
   imgCouleur.Canvas.pen.Color:=clRed;
   imgCouleur.Canvas.brush.Color:=clRed;
   imgCouleur.canvas.Rectangle (0, 0,150,150);

   imgCouleur.Canvas.pen.Color:=clYellow;
   imgCouleur.Canvas.brush.Color:=clYellow;
   imgCouleur.canvas.Rectangle (150, 0,300,150);

   imgCouleur.Canvas.pen.Color:=clGreen;
   imgCouleur.Canvas.brush.Color:=clGreen;
   imgCouleur.canvas.Rectangle (0, 150,150,300);

   imgCouleur.Canvas.pen.Color:=clBlue;
   imgCouleur.Canvas.brush.Color:=clBlue;
   imgCouleur.canvas.Rectangle (150, 150,300,300);
end;

procedure TForm1.btDamierClick(Sender: TObject);

var
  ligne, cpt : integer;
  test : boolean;

begin
    imgCouleur.Canvas.pen.Color:=clBlack;
    imgCouleur.Canvas.brush.Color:=clBlack;
    imgCouleur.canvas.Rectangle (0, 0,300,300);

    ligne:=0;
    test:=true;
    repeat
        begin
          cpt:=0;
          if test then
            begin
              test:=false;
              repeat
                begin
                   imgCouleur.Canvas.pen.Color:=clWhite;
                   imgCouleur.Canvas.brush.Color:=clWhite;
                   imgCouleur.canvas.Rectangle (0+cpt, 0+ligne, 30+cpt, 30+ligne);

                   cpt:=cpt+60;
                end;
              until (cpt=300);
            end
          else
            begin
               test:=true;
              repeat
                begin
                   imgCouleur.Canvas.pen.Color:=clWhite;
                   imgCouleur.Canvas.brush.Color:=clWhite;
                   imgCouleur.canvas.Rectangle (0+cpt,0+ligne, 30+cpt, 30+ligne);

                   cpt:=cpt+60;
                end;
              until (cpt=300);
            end;
          ligne:=ligne+30;
        end;
    until (ligne=300);
end;

procedure TForm1.btRougeClick(Sender: TObject);
begin
    imgCouleur.Canvas.pen.Color:=clRed;
    imgCouleur.Canvas.brush.Color:=clRed;
    imgCouleur.canvas.Rectangle (0, 0,300,300);
end;

end.

