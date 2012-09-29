class ActiveRecord::Base  
  # Class methods
  class << self
    # ロケールファイルに定義された、モデルや属性の表示名を取得する。
    # 引数は属性名を表す文字列かシンボル。引数を省略すると、モデル名が取得できます。
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