
-- Copyright (C) 2002 Morgan Kaufmann Publishers, Inc

-- This file is part of VESTs (Vhdl tESTs).

-- VESTs is free software; you can redistribute it and/or modify it
-- under the terms of the GNU General Public License as published by the
-- Free Software Foundation; either version 2 of the License, or (at
-- your option) any later version. 

-- VESTs is distributed in the hope that it will be useful, but WITHOUT
-- ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
-- FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
-- for more details. 

-- You should have received a copy of the GNU General Public License
-- along with VESTs; if not, write to the Free Software Foundation,
-- Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA 

entity counter is
  port ( clk : in bit;  count : out natural );
end entity counter;

--------------------------------------------------

architecture behavior of counter is
begin

  incrementer : process is
    variable count_value : natural := 0;
  begin
    count <= count_value;
    loop
      wait until clk = '1';
      count_value := (count_value + 1) mod 16;
      count <= count_value;
    end loop;
  end process incrementer;

end architecture behavior;
