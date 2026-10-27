// This is the entrypoint for the game.
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

const sdl = @import("sdl");

pub fn main() !void {
    if (!sdl.SDL_Init(sdl.SDL_INIT_VIDEO)) {
        sdl.SDL_Log("Error initializing SDL: %s", sdl.SDL_GetError());
        return;
    }

    const window = sdl.SDL_CreateWindow("Blade & Mana", 800, 600, 0) orelse {
        sdl.SDL_LogCritical(
            sdl.SDL_LOG_CATEGORY_APPLICATION,
            "Cannot create window: %s",
            sdl.SDL_GetError(),
        );
        return;
    };
    
    var done: bool = false;
    while (!done) {
        var event: sdl.SDL_Event = undefined;

        while (sdl.SDL_PollEvent(&event)) {
            if (event.type == sdl.SDL_EVENT_QUIT) {
                done = true;
            }
        }
    }

    sdl.SDL_DestroyWindow(window);
    sdl.SDL_Quit();
}

