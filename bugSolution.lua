local function foo(a)
  if a == nil then
    return 0  -- Provide a default return value
    -- or you can raise an error: error("Argument 'a' cannot be nil")
  end
  return a + 1
end

print(foo(5))  -- Output: 6
print(foo(nil)) -- Output: 0
print(foo())   -- Output: 0