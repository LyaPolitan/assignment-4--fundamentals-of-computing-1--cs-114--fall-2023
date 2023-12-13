void drawBoard() {
  // Drawing the game board
  for (int i = 0; i < BOARD_SIZE; i++) {
    for (int j = 0; j < BOARD_SIZE; j++) {
      int index = i * BOARD_SIZE + j;
      drawSquare(j * SQUARE_SIZE, i * SQUARE_SIZE, SQUARE_SIZE, index);
    }
  }
}

void drawSquare(int x, int y, int size, int index) {
  // Drawing squares on the board
  rect(x, y, size, size);
  if (board[index] == 'O') {
    drawCircle(x + size / 2, y + size / 2, size * 0.8);
  } else if (board[index] == 'X') {
    drawX(x, y, size);
  }
}

void drawCircle(float x, float y, float diameter) {
  // Drawing circles for player "O"
  ellipse(x, y, diameter, diameter);
}

void drawX(float x, float y, float size) {
  // Drawing "X" for player "X"
  line(x, y, x + size, y + size);
  line(x + size, y, x, y + size);
}
