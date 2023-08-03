unit uJogoVelha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, GIFImg, ExtCtrls,
  jpeg, StdCtrls;

type
  TFrmVelha = class(TForm)
    imgTabuleiro: TImage;
    imgx: TImage;
    imgb: TImage;
    img1: TImage;
    img2: TImage;
    img3: TImage;
    img4: TImage;
    img5: TImage;
    img6: TImage;
    img7: TImage;
    img8: TImage;
    img9: TImage;
    Button1: TButton;
    imgVazio: TImage;
    procedure FormShow(Sender: TObject);
    procedure img1Click(Sender: TObject);
    procedure img2Click(Sender: TObject);
    procedure img3Click(Sender: TObject);
    procedure img4Click(Sender: TObject);
    procedure img5Click(Sender: TObject);
    procedure img6Click(Sender: TObject);
    procedure img7Click(Sender: TObject);
    procedure img8Click(Sender: TObject);
    procedure img9Click(Sender: TObject);
    procedure ReiniciaJogo();
    procedure CheckForWin();
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    vez, velha :integer;
    xlinha1, xlinha2, xlinha3, xcoluna1, xcoluna2, xcoluna3, xdiagonal1, xdiagonal2 : integer;
    blinha1, blinha2, blinha3, bcoluna1, bcoluna2, bcoluna3, bdiagonal1, bdiagonal2 : integer;
  public
    { Public declarations }
  end;

var
  FrmVelha: TFrmVelha;

implementation

{$R *.dfm}

procedure TFrmVelha.Button1Click(Sender: TObject);
begin
  ReiniciaJogo;
end;

procedure TFrmVelha.FormShow(Sender: TObject);
begin
  ReiniciaJogo;
end;

procedure TFrmVelha.img1Click(Sender: TObject);
begin
  Velha    :=  Velha + 1;
  if vez = 0 then
  begin
    img1.Picture := imgx.Picture;
    vez := 1;
    xlinha1 := xlinha1 + 1;
    xcoluna1 := xcoluna1 + 1;
    xdiagonal1 := xdiagonal1 + 1;
  end else
  begin
    img1.Picture := imgb.Picture;
    vez := 0;
    blinha1 := blinha1 + 1;
    bcoluna1 := bcoluna1 + 1;
    bdiagonal1 := bdiagonal1 + 1;
  end;

  img1.Enabled := false;

  CheckForWin; // Chama o procedimento para verificar se há vitória ou empate
end;

procedure TFrmVelha.img2Click(Sender: TObject);
begin
Velha    :=  Velha + 1;
  if vez = 0 then
  begin
    img2.Picture := imgx.Picture;
    vez := 1;
    xlinha1 := xlinha1 + 1;
    xcoluna2 := xcoluna2 + 1;
  end else
  begin
    img2.Picture := imgb.Picture;
    vez := 0;
    blinha1 := blinha1 + 1;
    bcoluna2 := bcoluna2 + 1;
  end;
  img2.Enabled := false;


  CheckForWin; // Chama o procedimento para verificar se há vitória ou empate
end;

procedure TFrmVelha.img3Click(Sender: TObject);
begin
Velha    :=  Velha + 1;
 if vez = 0 then
  begin
    img3.Picture := imgx.Picture;
    vez := 1;
    xlinha1 := xlinha1 + 1;
    xcoluna3 := xcoluna3 + 1;
    xdiagonal2 := xdiagonal2 + 1;
  end else
  begin
    img3.Picture := imgb.Picture;
    vez := 0;
    blinha1 := blinha1 + 1;
    bcoluna3 := bcoluna3 + 1;
    bdiagonal2 := bdiagonal2 + 1;
  end;
  img3.Enabled := false;

  CheckForWin; // Chama o procedimento para verificar se há vitória ou empate
end;

procedure TFrmVelha.img4Click(Sender: TObject);
begin
Velha    :=  Velha + 1;
   if vez = 0 then
  begin
    img4.Picture := imgx.Picture;
    vez := 1;
    xlinha2 := xlinha2 + 1;
    xcoluna1 := xcoluna1 + 1;
  end else
  begin
    img4.Picture := imgb.Picture;
    vez := 0;
    blinha2 := blinha2 + 1;
    bcoluna1 := bcoluna1 + 1;
  end;
  img4.Enabled := false;

  CheckForWin; // Chama o procedimento para verificar se há vitória ou empate

end;

procedure TFrmVelha.img5Click(Sender: TObject);
begin
Velha    :=  Velha + 1;
 if vez = 0 then
  begin
    img5.Picture := imgx.Picture;
    vez := 1;
    xlinha2 := xlinha2 + 1;
    xcoluna2 := xcoluna2 + 1;
    xdiagonal1 := xdiagonal1 + 1;
    xdiagonal2 := xdiagonal2 + 1;
  end else
  begin
    img5.Picture := imgb.Picture;
    vez := 0;
    blinha2 := blinha1 + 1;
    bcoluna2 := bcoluna2 + 1;
    bdiagonal1 := bdiagonal1 + 1;
    bdiagonal2 := bdiagonal2 + 1;
  end;
  img5.Enabled := false;

  CheckForWin; // Chama o procedimento para verificar se há vitória ou empate

end;

procedure TFrmVelha.img6Click(Sender: TObject);
begin
Velha    :=  Velha + 1;
  if vez = 0 then
  begin
    img6.Picture := imgx.Picture;
    vez := 1;
    xlinha2 := xlinha2 + 1;
    xcoluna3 := xcoluna3 + 1;
  end else
  begin
    img6.Picture := imgb.Picture;
    vez := 0;
    blinha2 := blinha2 + 1;
    bcoluna3 := bcoluna3 + 1;

  end;
  img6.Enabled := false;


  CheckForWin; // Chama o procedimento para verificar se há vitória ou empate
end;

procedure TFrmVelha.img7Click(Sender: TObject);
begin
Velha    :=  Velha + 1;
  if vez = 0 then
  begin
    img7.Picture := imgx.Picture;
    vez := 1;
    xlinha3 := xlinha3 + 1;
    xcoluna1 := xcoluna1 + 1;
    xdiagonal2 := xdiagonal2 + 1;
  end else
  begin
    img7.Picture := imgb.Picture;
    vez := 0;
    blinha3 := blinha3 + 1;
    bcoluna1 := bcoluna1 + 1;
    bdiagonal2 := bdiagonal2 + 1;
  end;
  img7.Enabled := false;

  CheckForWin; // Chama o procedimento para verificar se há vitória ou empate
end;

procedure TFrmVelha.img8Click(Sender: TObject);
begin
Velha    :=  Velha + 1;
 if vez = 0 then
  begin
    img8.Picture := imgx.Picture;
    vez := 1;
    xlinha3 := xlinha3 + 1;
    xcoluna2 := xcoluna2 + 1;
  end else
  begin
    img8.Picture := imgb.Picture;
    vez := 0;
    blinha3 := blinha3 + 1;
    bcoluna2 := bcoluna2 + 1;
   end;

  CheckForWin; // Chama o procedimento para verificar se há vitória ou empate
end;

procedure TFrmVelha.img9Click(Sender: TObject);
begin
 Velha    :=  Velha + 1;
 if vez = 0 then
  begin
    img9.Picture := imgx.Picture;
    vez := 1;
    xlinha3 := xlinha3 + 1;
    xcoluna3 := xcoluna3 + 1;
    xdiagonal1 := xdiagonal1 + 1;

  end else
  begin
    img9.Picture := imgb.Picture;
    vez := 0;
    blinha3 := blinha3 + 1;
    bcoluna3 := bcoluna3 + 1;
    bdiagonal1 := bdiagonal1 + 1;

  end;
  img6.Enabled := false;

   CheckForWin; // Chama o procedimento para verificar se há vitória ou empate


end;

procedure TFrmVelha.ReiniciaJogo;
begin
  vez := 0;
  Velha := 0;
  xlinha1 := 0;
  xlinha2 := 0;
  xlinha3 := 0;
  xcoluna1 := 0;
  xcoluna2 := 0;
  xcoluna3 := 0;
  xdiagonal1 := 0;
  xdiagonal2 := 0;
  blinha1 := 0;
  blinha2 := 0;
  blinha3 := 0;
  bcoluna1 := 0;
  bcoluna2 := 0;
  bcoluna3 := 0;
  bdiagonal1 := 0;
  bdiagonal2 := 0;
  img1.Picture := imgVazio.Picture;
  img2.Picture := imgVazio.Picture;
  img3.Picture := imgVazio.Picture;
  img4.Picture := imgVazio.Picture;
  img5.Picture := imgVazio.Picture;
  img6.Picture := imgVazio.Picture;
  img7.Picture := imgVazio.Picture;
  img8.Picture := imgVazio.Picture;
  img9.Picture := imgVazio.Picture;
  img1.Enabled := true;
  img2.Enabled := true;
  img3.Enabled := true;
  img4.Enabled := true;
  img5.Enabled := true;
  img6.Enabled := true;
  img7.Enabled := true;
  img8.Enabled := true;
  img9.Enabled := true;
end;

procedure TFrmVelha.CheckForWin;
begin
  // Verifica vitória nas linhas
  if (xlinha1 = 3) or (xlinha2 = 3) or (xlinha3 = 3) then
  begin
    ShowMessage('Jogador X Venceu');
    ReiniciaJogo;
    Exit;
  end;
  if (blinha1 = 3) or (blinha2 = 3) or (blinha3 = 3) then
  begin
    ShowMessage('Jogador Bolinha Venceu');
    ReiniciaJogo;
    Exit;
  end;

  // Verifica vitória nas colunas
  if (xcoluna1 = 3) or (xcoluna2 = 3) or (xcoluna3 = 3) then
  begin
    ShowMessage('Jogador X Venceu');
    ReiniciaJogo;
    Exit;
  end;
  if (bcoluna1 = 3) or (bcoluna2 = 3) or (bcoluna3 = 3) then
  begin
    ShowMessage('Jogador Bolinha Venceu');
    ReiniciaJogo;
    Exit;
  end;

  // Verifica vitória nas diagonais
  if (xdiagonal1 = 3) or (xdiagonal2 = 3) then
  begin
    ShowMessage('Jogador X Venceu');
    ReiniciaJogo;
    Exit;
  end;
  if (bdiagonal1 = 3) or (bdiagonal2 = 3) then
  begin
    ShowMessage('Jogador Bolinha Venceu');
    ReiniciaJogo;
    Exit;
  end;

  // Verifica empate (todas as células preenchidas)
  if Velha = 9 then
  begin
    ShowMessage('Empate!');
    ReiniciaJogo;
  end;
end;



end.
