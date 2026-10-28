// main.zig is the entrypoint for the game.
// Copyright (C) 2026 solosrc.com
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.

const engine = @import("engine");

pub fn main() !void {
    var game = try engine.Game.init();
    defer game.deinit();

    try game.createWindow("Blade & Mana", 800, 600);
    game.run();
}
