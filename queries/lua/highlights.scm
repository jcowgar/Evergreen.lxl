;; Keywords

"return" @keyword.return

[
 "goto"
 "in"
 "local"
] @keyword

(label_statement) @label

(break_statement) @keyword

(do_statement
[
  "do"
  "end"
] @keyword)

(while_statement
[
  "while"
  "do"
  "end"
] @repeat)

(repeat_statement
[
  "repeat"
  "until"
] @repeat)

(if_statement
[
  "if"
  "elseif"
  "else"
  "then"
  "end"
] @conditional)

(elseif_statement
[
  "elseif"
  "then"
  "end"
] @conditional)

(else_statement
[
  "else"
  "end"
] @conditional)

(for_statement
[
  "for"
  "do"
  "end"
] @repeat)

(function_declaration
[
  "function"
  "end"
] @keyword.function)

(function_definition
[
  "function"
  "end"
] @keyword.function)

;; Operators

[
 "and"
 "not"
 "or"
] @keyword.operator

[
  "+"
  "-"
  "*"
  "/"
  "%"
  "^"
  "#"
  "=="
  "~="
  "<="
  ">="
  "<"
  ">"
  "="
  "&"
  "~"
  "|"
  "<<"
  ">>"
  "//"
  ".."
] @operator

;; Punctuations

[
  ";"
  ":"
  ","
  "."
] @punctuation.delimiter

;; Brackets

[
 "("
 ")"
 "["
 "]"
 "{"
 "}"
] @punctuation.bracket

;; Variables

(identifier) @variable

(variable_list
   attribute: (attribute
     (["<" ">"] @punctuation.bracket
      (identifier) @attribute)))

;; Constants

(vararg_expression) @constant

(nil) @constant.builtin

[
  (false)
  (true)
] @boolean

;; Tables

(field name: (identifier) @field)

(dot_index_expression field: (identifier) @field)

(table_constructor
[
  "{"
  "}"
] @constructor)

;; Functions

(parameters (identifier) @parameter)

(function_call name: (identifier) @function.call)
(function_declaration name: (identifier) @function)

(function_call name: (dot_index_expression field: (identifier) @function.call))
(function_declaration name: (dot_index_expression field: (identifier) @function))

(method_index_expression method: (identifier) @method.call)

;; Others

(comment) @comment

(hash_bang_line) @preproc

(number) @number

(string) @string

;; Error
(ERROR) @error
