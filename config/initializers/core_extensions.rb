Kernel.module_eval do
  def now
    Time.now
  end
  def today
    Date.today
  end
end

Array.module_eval do
  def rand
    self[Kernel.rand(size)]
  end
end

Range.module_eval do
  def rand # todo not the most performant..but whatev
    self.to_a.rand
  end
end
