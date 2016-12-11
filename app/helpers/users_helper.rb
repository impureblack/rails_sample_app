module UsersHelper
    
    # 
    # 該当ユーザのGravatar画像URLをイメージ要素として取得します。
    # @params user
    # @return Gravatarの画像URLで生成したイメージ要素
    #
    def gravatar_for(user)
       gravatar_id = Digest::MD5::hexdigest(user.email.downcase) 
       gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
       image_tag(gravatar_url, alt: user.name, class: "gravatar")
    end
    
end
