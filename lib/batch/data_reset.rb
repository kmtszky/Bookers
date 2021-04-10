class Bach::DataReset
  def self.datareset
    Book.delete_all
    p "投稿をすべて削除しました"
  end
end