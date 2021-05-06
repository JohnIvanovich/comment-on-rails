class Comment < ApplicationRecord
  def self.search(str)
    comment = Comment.arel_table

    where(comment[:author].matches("%#{str}%"))
      .or(
        where(comment[:address].matches("%#{str}%"))
      )
      .or(
        where(comment[:body].matches("%#{str}%"))
      )
  end
end
