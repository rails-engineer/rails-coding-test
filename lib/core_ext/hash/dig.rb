class Hash
  def dig(*args)
    raise ArgumentError, "wrong number of arguments (given #{args.size}, expected 1+)" if args.empty?
    args.inject(self) { |a, e| a.try(:[], e) }
  end
end
