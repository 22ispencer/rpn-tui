const std = @import("std");
const ncurses = @cImport({
    @cInclude("ncurses.h");
});

pub fn main() !void {
    _ = ncurses.initscr();

    const win = ncurses.newwin(15, 17, 2, 10);
    _ = ncurses.refresh();

    _ = ncurses.box(win, 0, 0);

    _ = ncurses.mvwprintw(win, 0, 1, "Greeter");
    _ = ncurses.mvwprintw(win, 1, 1, "Hello");

    _ = ncurses.wrefresh(win);

    _ = ncurses.getch();
    _ = ncurses.endwin();
}
