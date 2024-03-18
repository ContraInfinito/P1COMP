lexer grammar Scanner;

//IDENTIFIER
ID: ('_'|) LETTER (LETTER|DIGIT|'_')* ;
fragment LETTER : 'a'..'z' | 'A'..'Z';
fragment DIGIT : '0'..'9' ;
NUMERO : DIGIT+;


//PALABRAS RESERVADAS
IF:'if';
ELSE: 'else';
ELSEIF:'else if';
CONST:'cons';
VAR:'var';
FOR:'for';
FUNC:'func';
RETURN:'return';
IMPORT:'import';
MAIN:'main';
LEN:'len';
APPEND:'append';
MAKE:'make';
PACKAGE: 'package';
SWITCH: 'switch';
CASE: 'case';
DEFAULT: 'default';
SELECT: 'select';
CHAN: 'chan';
MAP: 'map';
STRUCT: 'struct';
TYPE: 'type';
BREAK: 'break';
CONTINUE: 'continue';
FALLTHROUGH: 'fallthrough';


//TIPO DE DATOS BASICOS
STRING:'string';
INT:'int';
BOOL:'bool';
FLOAT:'float';
BYTE:'byte';
RUNE:'rune';


//IMPRESION, ESPACIO EN BLANCO Y COMENTARIOS
PRINTLN: 'println';
PRINTF: 'printf';
WS:[ \t\n\r]+ -> skip ;
COMMENT:'//' ~[\r\n]* -> skip ;

//SIMBOLOS
SUM: '+';
RES: '-';
MUL: '*';
DIV: '/';
ASSIGN: '=';
EQ: '==';
NEQ: '!=';
MNQ: '<';
MNEQ: '<=';
MYQ: '>';
MYEQ: '>=';
PORCENT:'%';


// Otros tokens
PINITIAL: '(';
PFINAL: ')';
LEFTCLASP: '{';
RIGTHCLASP: '}';
ISCLASP: '[';
FSCLASP: ']';
SEMICOLON: ';';
TWODOT: ':';  //QUITAR (solo lo puse para verificar el scanner, pero no es parte de grammarGo)
COMMA: ',';
DOT: '.';
AND: '&&';
OR: '||';
NOT: '!';
SHIFTBYTELEFT:'<<';
SHIFTBYTERIGHT:'>>';
DIRECOPERATOR:'&';
BITOR:'|';
BITXOR:'^';
SUM_ASSING: '+=';
AND_ASSING: '&=';
RES_ASSING: '-=';
OR_ASSING: '|=';
MULT_ASSING: '*=';
XOR_ASSING: '^=';
DES_LEFT_ASSING: '<<=';
DES_RIGHT_ASSING: '>>=';
AND_NO_ASSING: '&^=';
MOD_ASSING: '%=';
DIV_ASSIGN: '/=';


