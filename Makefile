default: build

build_ast:
	javac -d target java/com/nickelkr/tool/GenerateAst.java

build: build_ast run_ast build_lox

build_lox:
	javac -d target java/com/nickelkr/lox/Lox.java \
		java/com/nickelkr/lox/Scanner.java \
		java/com/nickelkr/lox/Token.java \
		java/com/nickelkr/lox/TokenType.java \
		java/com/nickelkr/lox/Expr.java \
		java/com/nickelkr/lox/Parser.java \
		java/com/nickelkr/lox/Interpreter.java \
		java/com/nickelkr/lox/RuntimeError.java \
		java/com/nickelkr/lox/Stmt.java \
		java/com/nickelkr/lox/Environment.java \
		java/com/nickelkr/lox/LoxCallable.java \
		java/com/nickelkr/lox/LoxFunction.java

run:
	java -cp target com.nickelkr.lox.Lox

run_ast:
	java -cp target com.nickelkr.tool.GenerateAst java/com/nickelkr/lox
