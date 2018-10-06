class CreatePostaResumes < ActiveRecord::Migration[5.1]
  def change
    create_table :posta_resumes do |t|
      t.string :yourname
      t.string :youremail
      t.string :professionalauto
      t.string :location
      t.string :photoname
      t.string :resumecategory
      t.string :resumecontent
      t.string :skills
      t.string :url
      t.string :education
      t.string :experience
      t.string :resumefilename

      t.timestamps
    end
  end
end
