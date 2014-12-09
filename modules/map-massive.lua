----------------------------------------------------------------
--  MODULE: Massive map size
----------------------------------------------------------------
--
--  Copyright (C) 2014 Hetdegon
--
--  This program is free software; you can redistribute it and/or
--  modify it under the terms of the GNU General Public License
--  as published by the Free Software Foundation; either version 2
--  of the License, or (at your option) any later version.
--
--  This program is distributed in the hope that it will be useful,
--  but WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--  GNU General Public License for more details.
--
----------------------------------------------------------------


MASSIVE_MAP = { }

function MASSIVE_MAP.setup(self)
  gui.printf("Enabling massive map size!\n")
  OB_CONFIG.size = "massive"
  --Hetdegon: Not sure where else to hook up to.
end

OB_MODULES["massive_map"] = {
  label = "Massive map size (limit-removing)"
  
  engine = { skulltag = 1, zdoom = 1, gzdoom = 1 }
  
  hooks = { setup = MASSIVE_MAP.setup }
}
