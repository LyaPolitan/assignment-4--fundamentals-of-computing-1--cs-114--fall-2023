boolean gameEnded = false; // Flag to track game end
boolean gameInProgress = true; // Flag to track ongoing game

void setup() {
  size(500, 500);
  initializeGame(); // Initialize the game
  computerMove(); // Computer plays the first move
}

void draw() {
  background(255);
  drawBoard();
  if (gameInProgress && !gameEnded && !checkForWinner() && !isBoardFull()) {
    println("Game is still in play.");
    gameInProgress = false; // Set flag after displaying once
  }
}

void keyPressed() {
  if (!gameEnded) {
    if (key >= '0' && key <= '8') {
      int index = key - '0';
      if (isSquareEmpty(index)) {
        userMove(index); // User makes a move
        if (!gameEnded && !checkForWinner() && !isBoardFull()) {
          computerMove(); // Computer makes a move
          gameInProgress = true; // Set flag for the user's next move
        }
      } else {
        println("That square is already taken. Choose an empty square.");
      }
    } else {
      println("Invalid input. Choose a number between 0-8.");
    }
  } else {
    println("The game has ended. Press any key to restart.");
    if (keyPressed) {
      initializeGame();
      computerMove(); // Computer plays the first move
      gameEnded = false; // Reset flags for new game
      gameInProgress = true;
    }
  }
}
