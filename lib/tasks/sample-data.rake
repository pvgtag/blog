namespace :db do
    desc "Fill database with sample data"
    task populate: :environment do
      Mark.delete_all
      Comment.delete_all
      Post.delete_all
      User.delete_all
      User.create!(name: "test User",
                   email: "test@test.org",
                   moderator: false)
      User.create!(name: "test Moderator",
                   email: "moderator@test.org",
                   moderator: true)
      id = User.find_by(name: 'test User').id             
      Post.create(title: 'test0_title', 
                  body: 'test0 text',
                  user_id: id,
                  visible: true)
      id = User.find_by(name: 'test Moderator').id             
      p_id = Post.find_by(title: 'test0_title').id
      Comment.create!( body: 'test comment body', 
                   user_id: id,
                   post_id: p_id,
                   visible: true)
    end
  end