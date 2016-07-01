module AgentImporters
  def importTsv(file)
    CSV.foreach(file, {col_sep: "\t", headers: true}) do |row|
      Agent.create row.to_hash
    end
  end
end
