lexer grammar ClassicLexer;

// Skip
WS: [ \t\f\r\n]+ -> skip;
COMMENT: '/*' ((.|WS))* '*/' -> skip;

// Symbols
DOT: '.';
COMMA: ',';
SEMICOLON: ';';
QUERY: '?';
COLON: ':';
LPAREN: '(';
RPAREN: ')';
LBRACE: '{';
RBRACE: '}';
LBRACKET: '[';
RBRACKET: ']';
DEREF: '->';
UNDERSCORE: '_';
ELLIPSIS: '...';
SQUOTE: '\'';
DQUOTE: '"';

// Basic
fragment DIGIT: [0-9];
fragment LETTER: [a-zA-Z];
fragment ALPHANUM: DIGIT | LETTER;
IDENT: (UNDERSCORE | LETTER) (UNDERSCORE | ALPHANUM)*;
L_FLOAT: OP_SUB DIGIT+ (DOT DIGIT+)? 'f';
L_DOUBLE: OP_SUB DIGIT+ (DOT DIGIT+)?;
L_INT: OP_SUB DIGIT+;

// Assignments
ASSIGN: '=';
ASSIGN_ADD: OP_ADD ASSIGN;
ASSIGN_SUB: OP_SUB ASSIGN;
ASSIGN_MUL: OP_MULT_STAR ASSIGN;
ASSIGN_DIV: OP_DIV ASSIGN;
ASSIGN_MOD: OP_MOD ASSIGN;
ASSIGN_LSHIFT: OP_LSHIFT ASSIGN;
ASSIGN_RSHIFT: OP_RSHIFT ASSIGN;
ASSIGN_BITAND: OP_BITAND_ADDR ASSIGN;
ASSIGN_BITOR: OP_BITOR ASSIGN;
ASSIGN_BITXOR: OP_BITXOR ASSIGN;
ASSIGN_BITNOT: OP_BITNOT ASSIGN;

// Unary operators
OP_INCR: OP_ADD OP_ADD;
OP_DECR: OP_SUB OP_SUB;
OP_LOGNOT: '!';
OP_BITNOT: '~';

// Binary operators
OP_LT: '<';
OP_LE: '<=';
OP_EQ: '==';
OP_GT: '>';
OP_GE: '>=';
OP_NE: '!=';
OP_ADD: '+';
OP_SUB: '-';
OP_MULT_STAR: '*';
OP_DIV: '/';
OP_MOD: '%';
OP_LSHIFT: '<<';
OP_RSHIFT: '>>';
OP_BITAND_ADDR: '&';
OP_BITOR: '|';
OP_BITXOR: '^';
OP_LOGAND: OP_BITAND_ADDR OP_BITAND_ADDR;
OP_LOGOR: OP_BITOR OP_BITOR;

// Keywords
K_TYPEDEF: 'typedef';
K_EXTERN: 'extern';
K_STATIC: 'static';
K_AUTO: 'auto';
K_REGISTER: 'register';
K_GOTO: 'goto';
K_CONTINUE: 'continue';
K_BREAK: 'break';
K_RETURN: 'return';
K_CONST: 'const';
K_VOLATILE: 'volatile';
K_SIZEOF: 'sizeof';

// Types
T_VOID: 'void';
T_CHAR: 'char';
T_SHORT: 'short';
T_INT: 'int';
T_LONG: 'long';
T_FLOAT: 'float';
T_DOUBLE: 'double';
T_SIGNED: 'signed';
T_UNSIGNED: 'unsigned';
T_STRUCT: 'struct';
T_UNION: 'union';
T_ENUM: 'enum';

// Blocks
B_IF: 'if';
B_ELSE: 'else';
B_SWITCH: 'switch';
B_CASE: 'case';
B_DEFAULT: 'default';
B_WHILE: 'while';
B_DO: 'do';
B_FOR: 'for';