Post.joins(:user).where( users: { moderator: true })
# или
# Post.find_by_sql("SELECT posts.* FROM posts INNER JOIN users ON users.id = posts.user_id WHERE users.moderator")