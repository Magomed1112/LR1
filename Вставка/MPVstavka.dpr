program MPVstavka;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
  nn = 1000000;

type
  arr = array [1..nn] of Integer;

var
  mas: arr;
  n, i, k, j, x, per, sr: Integer;
  f: TextFile;
  Time: TDateTime;
  TimeHour, TimeMin, TimeSec, TimeMilli: word;
  TimeSum: double;

begin
    randomize;
    n:= 9000;
    for i := 1 to n do
    begin
      mas[i]:= random(100000);
    end;
  Assign(f, 'C:\games\vvod.txt');
  rewrite(f);
  Write(f, n);
  Writeln(f);
    for i:= 1 to n do
    Write(f, ' ', mas[i]);
    Close(f);
    Time:= Now;
    per:= 0;
    sr:= 0;
      for i:=2 to N do
      begin
        x:=mas[i];
        j:=i;
        sr:= sr+1;
        while (j>1) and (x<mas[j-1]) do
          begin
            mas[j]:=mas[j-1];
            j:=j-1;
            per:= per+1;
          end;
        mas[j]:=x;
      end;
      Time:= Now-Time;
      DecodeTime(Time, TimeHour, TimeMin, TimeSec, TimeMilli);
      TimeSum:= TimeMilli/1000 + TimeSec + 60*TimeMin + 3600*TimeHour;
    AssignFile(f, 'C:\games\vivod.txt');
    rewrite(f);
    writeln(f, n);
      for i:= 1 to n-1 do
      write(f, mas[i], ' ');
      writeln(f, mas[n]);
    Write(f, 'Vstavka.');
    writeln(f);
    writeln(f, sr);
    Writeln(f, per);
    Writeln(f, floattostr(TimeSum));
    CloseFile(f);
end.

