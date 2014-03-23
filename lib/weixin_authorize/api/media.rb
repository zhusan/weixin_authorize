# encoding: utf-8
module WeixinAuthorize
  module Api
    module Media

      # 上传多媒体文件
      # http请求方式: POST/FORM
      # http://file.api.weixin.qq.com/cgi-bin/media/upload?access_token=ACCESS_TOKEN&type=TYPE
      def upload_image(openid, lang="zh_CN")
        user_info_url = "#{media_base_url}/upload"
        http_get(user_info_url, {openid: openid, lang: lang})
      end

      # 获取关注者列表
      # https://api.weixin.qq.com/cgi-bin/user/get?access_token=ACCESS_TOKEN&next_openid=NEXT_OPENID
      def followers(next_openid="")
        followers_url = "#{media_base_url}/get"
        http_get(followers_url, {next_openid: next_openid})
      end

      private

        def media_base_url
          "/media"
        end

    end
  end
end
