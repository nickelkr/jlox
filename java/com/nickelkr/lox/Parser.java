package com.nickelkr.lox;

import java.util.List;

import static com.nickelkr.lox.TokenType.*;

class Parser {
  private final List<Token> tokens;
  private int current = 0;

  Parser(List<Token> tokens) {
    this.tokens = tokens;
  }

  private Expr expression() {
    return equality();
  }
}
