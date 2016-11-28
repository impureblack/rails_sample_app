module ApplicationHelper
    
    #
    #ページタイトルを出力します
    #
    def fullTitle(pageTitle)
        baseTitle = "Ruby on Rails Tutorial Sample App"
        if pageTitle.empty?
            baseTitle
        else
            "#{baseTitle} | #{pageTitle}"
        end
    end
    
end
