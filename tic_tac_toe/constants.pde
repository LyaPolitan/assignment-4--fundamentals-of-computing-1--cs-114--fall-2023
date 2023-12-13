final int BOARD_SIZE = 3; // Size of the game board
final int SQUARE_SIZE = 500 / BOARD_SIZE; // Size of each square
final int EMPTY = -1; // Constant for an empty square

final int[][] WINNING_COMBINATIONS = {
  {0, 1, 2}, {3, 4, 5}, {6, 7, 8}, // Rows
  {0, 3, 6}, {1, 4, 7}, {2, 5, 8}, // Columns
  {0, 4, 8}, {2, 4, 6} // Diagonals
}; // Winning combinations on the board
