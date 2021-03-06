require "spec_helper"

describe WeixinAuthorize::Api::Custom do
  let(:text_message) do
    "text Custom message"
  end

  it "#send_text_custom" do
    response = $client.send_text_custom(ENV["OPENID"], text_message)
    expect(response["errcode"]).to eq(0)
  end

  it "#send_news_custom" do
    articles = [{
                  "title" => "Happy Day",
                  "description" => "Is Really A Happy Day",
                  "url"   => "http://www.baidu.com",
                  "picurl" => "http://www.baidu.com/img/bdlogo.gif"
                },
                {
                  "title" => "Happy Day",
                  "description" => "Is Really A Happy Day",
                  "url"  => "http://www.baidu.com",
                  "picurl"=> "http://www.baidu.com/img/bdlogo.gif"
                }]
    response = $client.send_news_custom(ENV["OPENID"], articles)
    expect(response["errcode"]).to eq(0)
  end

  it "#send_image_custom" do
    pending("The test must have a media_id")
    this_should_not_get_executed
  end

  it "#send_video_custom" do
    pending("The test must have a media_id")
    this_should_not_get_executed
  end

  it "#send_music_custom" do
    pending("The test must have a media_id")
    this_should_not_get_executed
  end

  it "#send_voice_custom" do
    pending("The test must have a media_id")
    this_should_not_get_executed
  end

end
