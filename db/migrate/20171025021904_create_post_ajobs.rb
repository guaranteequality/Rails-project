class CreatePostAjobs < ActiveRecord::Migration[5.1]
  def change
    create_table :post_ajobs do |t|
      t.string :youremail
      t.string :jobtitle
      t.string :joblocation
      t.string :jobregion
      t.string :jobtype
      t.string :jobcategory
      t.string :jobtags
      t.string :description
      t.string :applicationemailurl
      t.string :closingdata
      t.string :companyname
      t.string :companydescription
      t.string :twittername
      t.string :website
      t.string :googleusername
      t.string :facebookusername
      t.string :linkedinusername
      t.string :imagename

      t.timestamps
    end
  end
end
