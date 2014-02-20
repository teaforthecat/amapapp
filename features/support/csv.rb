require 'csv'
module CSVBuilder

  # writes to ./tmp/

  def generate_csv filename, table
    file_path = File.join('tmp', filename)
    CSV.open('tmp/'+filename, 'wb') do |csv|
      csv << table.headers
      table.rows.each do |row|
        csv << row
      end
    end
    file_path
  end
end

World(CSVBuilder)
