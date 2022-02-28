PROGRAM Hello(INPUT, OUTPUT);
USES
  DOS;
VAR
  QueryString, Name, Parameter: STRING;
  Int: INTEGER;
BEGIN{Hello}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  QueryString:= GetEnv('QUERY_STRING');
  Parameter:= COPY(QueryString, 1, 5);
  IF Parameter = 'name='
  THEN
    BEGIN
      Int:= (POS('&', QueryString)) - 1;
      IF Int <> - 1
      THEN
        Name:= COPY(QueryString, 6, Int)
      ELSE
        Name:= COPY(QueryString, 6);
      IF Name = ''
      THEN
        WRITELN('Hello Anonymous!')
      ELSE
        WRITELN('Hello dear, ', Name)
    END
  ELSE
    WRITELN('Hello Anonymous!')
END.{Hello}
