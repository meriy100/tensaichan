module SearchHelper
  def message(text)
    content_tag :div, class: 'chat-box' do
      content_tag :div, class: "chat-area" do
        content_tag :div, text, class: "chat-hukidashi someone"
      end
    end
  end
end
