class Counter
  def self.calculate_percent_complete(completed_task, total_task)
    completed_task.to_f / total_task.to_f * 100
  end
end