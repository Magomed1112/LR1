program MrPuzyrjok;

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
    n:= 47000;
    for i:= 1 to n do
    begin
      mas[i]:= random(100000);
    end;
    Assign(f, 'C:\games\vvod.txt');
    rewrite(f);
    Write(f, n);
    Writeln(f);
    for i:= 1 to n do
    write(f, ' ', mas[i]);
    Close(f);
    Time:= Now;
    per:= 0;
    sr:= 0;
      begin
        for i:= 1 to n-1 do
          for j:= n downto i+1 do
          begin
            sr:= sr+1;
            if mas[j-1]>mas[j] then
            begin
              x:= mas[j-1];
              mas[j-1]:=mas[j];
              mas[j]:=x;
              per:= per+1;
            end;
          end;
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
    Write(f, 'Puzyrjok.');
    writeln(f);
    writeln(f, sr);
    Writeln(f, per);
    Writeln(f, floattostr(TimeSum));
    CloseFile(f);
end.

