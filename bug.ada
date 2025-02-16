```ada
function Check_Range (Num : Integer) return Boolean is
begin
   if Num >= 10 and then Num <= 20 then  --Error: Incorrect range check
      return True;
   else
      return False;
   end if;
end Check_Range;
```