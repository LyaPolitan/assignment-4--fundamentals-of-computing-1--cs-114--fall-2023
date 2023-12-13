boolean isGameEnded() {
  return checkForWinner() || isBoardFull(); // Checking if the game has ended
}

char[] board; // Game board represented as an array

void initializeGame() {
  // Initializing the game board
  board = new char[BOARD_SIZE * BOARD_SIZE];
  for (int i = 0; i < board.length; i++) {
    board[i] = ' ';
  }
}

boolean isSquareEmpty(int index) {
  return board[index] == ' '; // Checking if a square is empty
}

void userMove(int index) {
  board[index] = 'O'; // Making a move for the user
}

void computerMove() {
  int index;
  do {
    index = (int) random(0, BOARD_SIZE * BOARD_SIZE);
  } while (!isSquareEmpty(index));

  board[index] = 'X'; // Making a move for the computer
}

boolean checkForWinner() {
  // Checking for a winner based on winning combinations
  for (int[] combination : WINNING_COMBINATIONS) {
    if (board[combination[0]] != ' ' &&
        board[combination[0]] == board[combination[1]] &&
        board[combination[1]] == board[combination[2]]) {
      println("Player " + board[combination[0]] + " wins!");
      gameEnded = true; // Setting flag to indicate game end
      return true;
    }
  }

  if (isBoardFull()) {
    println("It's a draw! No one wins.");
    gameEnded = true; // Setting flag for a draw
    return true;
  }

  return false;
}

boolean isBoardFull() {
  // Checking if the board is full
  for (char square : board) {
    if (square == ' ') {
      return false;
    }
  }
  return true;
}
