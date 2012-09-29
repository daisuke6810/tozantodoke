class ActiveRecord::Base  
  # Class methods
  class << self
    # ロケールファイルに定義された、DBテーブルやカラムの表示名を取得する。
    def label(field=nil)
      key = "activerecord."
      if field
        key << "attributes." << self.name.underscore << "." << field.to_s
      else
        key << "models." << self.name.underscore
      end
      return I18n.t key
    end   
  end  
end