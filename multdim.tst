DECLARE
   my_3d_array   multdim.dim3_t;

   PROCEDURE bpl (val IN BOOLEAN)
   IS
   BEGIN
      IF val
      THEN
         DBMS_OUTPUT.put_line ('TRUE');
      ELSIF NOT val
      THEN
         DBMS_OUTPUT.put_line ('FALSE');
      ELSE
         DBMS_OUTPUT.put_line ('NULL');
      END IF;
   END bpl;
BEGIN
   multdim.setcell (my_3d_array, 1, 5, 800, 'def');
   multdim.setcell (my_3d_array, 1, 15, 800, 'def');
   multdim.setcell (my_3d_array, 5, 5, 800, 'def');
   multdim.setcell (my_3d_array, 5, 5, 805, 'def');

   DBMS_OUTPUT.put_line (multdim.getcell (my_3d_array, 1, 5, 800));
   bpl (multdim.EXISTS (my_3d_array, 1, 5, 800));
   bpl (multdim.EXISTS (my_3d_array, 6000, 5, 800));
   bpl (multdim.EXISTS (my_3d_array, 6000, 5, 807));

   DBMS_OUTPUT.put_line (my_3d_array.COUNT);
END;
/



/*======================================================================
| Supplement to the fifth edition of Oracle PL/SQL Programming by Steven
| Feuerstein with Bill Pribyl, Copyright (c) 1997-2009 O'Reilly Media, Inc. 
| To submit corrections or find more code samples visit
| http://oreilly.com/catalog/9780596514464/
*/
