--
--  (c) 2023 Jesper Quorning, license: MIT OR Apache 2.0
--

package body Vanilla_Replace
is
   package body Items_V1
   is
      -------------
      -- Process --
      -------------

      procedure Process (Item : Item_In)
      is
      begin
         if State_Break then
            declare
               S : Item_String renames Map (Item);
            begin
               for I in Map (Item)'Range loop
                  Put (S (I));
               end loop;
            end;
            State_Break := False;
         else
            if Item = Break then
               State_Break := True;
            else
               Put (To_Item_Out (Item));
            end if;
         end if;
      end Process;

      -------------
      -- Process --
      -------------

      procedure Process (Item : String)
      is
      begin
         for A in Item'Range loop
            Process (Item (A));
         end loop;
      end Process;

   end Items;

end Vanilla_Replace;

-----------------------------------------------------------------------------
-----  - - -- = = ==  G U D  B E V A R E  D A N M A R K  == = = -- - -  -----
-----------------------------------------------------------------------------
