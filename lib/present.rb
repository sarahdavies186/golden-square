class Present
  def wrap(contents)
    fail "An item has already been wrapped." unless @contents.nil?
    @contents = contents
  end

  def unwrap
    fail "No items have been wrapped." if @contents.nil?
    return @contents
  end
end

# box_one = Present.new
# puts box_one.wrap("socks")
# puts box_one.unwrap
