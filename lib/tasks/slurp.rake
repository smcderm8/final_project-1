namespace :slurp do
  desc "TODO"
  task holes: :environment do
    
    require "csv"

      csv_text = File.read(Rails.root.join("lib", "csvs", "holes.csv"))
      csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
      csv.each do |row|
        h = Hole.new
        h.course_id = row["course_id"]
        h.hole_number = row["hole_number"]
        h.par = row["par"]
        h.yardage = row["yardage"]
        h.handicap = row["handicap"]
        h.save
        puts "#{h.course_id}, #{h.hole_number} saved"
      end
      
      puts "There are now #{Hole.count} rows in the holes table"
    
    
  end

end
