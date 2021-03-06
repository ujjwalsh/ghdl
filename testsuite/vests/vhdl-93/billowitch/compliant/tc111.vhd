
-- Copyright (C) 2001 Bill Billowitch.

-- Some of the work to develop this test suite was done with Air Force
-- support.  The Air Force and Bill Billowitch assume no
-- responsibilities for this software.

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

-- ---------------------------------------------------------------------
--
-- $Id: tc111.vhd,v 1.2 2001-10-26 16:29:39 paw Exp $
-- $Revision: 1.2 $
--
-- ---------------------------------------------------------------------

ENTITY c04s03b02x00p29n06i00111ent IS
END c04s03b02x00p29n06i00111ent;

ARCHITECTURE c04s03b02x00p29n06i00111arch OF c04s03b02x00p29n06i00111ent IS
  PROCEDURE p1 ( prm_out : OUT INTEGER ) IS
    ATTRIBUTE attr1 : INTEGER;
    ATTRIBUTE attr1 OF prm_out : VARIABLE IS 300;
  BEGIN
    ASSERT prm_out'attr1 = 300 REPORT "ERROR: Bad value for prm_out'attr1" SEVERITY FAILURE;
    assert NOT(prm_out'attr1 = 300)
      report "***PASSED TEST: c04s03b02x00p29n06i00111"
      severity NOTE;
    assert (prm_out'attr1 = 300)
      report "***FAILED TEST: c04s03b02x00p29n06i00111 - Reading of the attributes of the interface element of mode out in a subprogram testing failed." 
      severity ERROR;
  END;
BEGIN
  TESTING: PROCESS
    VARIABLE tmp : INTEGER;
  BEGIN
--
    p1 ( tmp );
--   
    wait;
  END PROCESS TESTING;

END c04s03b02x00p29n06i00111arch;
