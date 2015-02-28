///gameOver(win)

win = argument[0];

if (win) {
    room_goto(rm_game_win)
} else {
    room_goto(rm_game_lose)
}