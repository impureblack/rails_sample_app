module ApplicationHelper
    
    #
    # ページタイトルを出力します。
    # @params page_title
    # @return ベースタイトル＋引数のタイトル
    #
    def full_title(page_title)
        base_title = "Ruby on Rails Tutorial Sample App"
        if page_title.empty?
            base_title
        else
            "#{base_title} | #{page_title}"
        end
    end
    
    #
    # flash変数をbootstrapクラスに変換します。
    # @params flash_title
    # @return bootstrapクラス
    #
    def bootstrap_class_for(flash_type)
        case flash_type
            when :success
                "alert_success"
            when :error
                "alert_error"
            when :alert
                "alert_warning"
            when :notice
                "alert_notice"
            else
                flash_type.to_s
        end
    end
    
end
