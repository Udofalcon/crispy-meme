-- Loop indefinitely
while true do
  
  -- Check first inventory slot; If not full, step in
  if turtle.getItemSpace(1) > 0 then
    
	-- Check block below; If block is there, step in
    if turtle.detectDown() then
      
      -- Mine cobblestone below
      turtle.digDown()
    end
  
  -- Otherwise, step in
  else
    
    -- Try to insert first inventory slot to inventory above
    turtle.dropUp()
  end
  sleep(0)
end