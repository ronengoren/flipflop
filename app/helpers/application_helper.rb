module ApplicationHelper

    def gravatar_for(user, size = 30, title = user.user_name)
        image_tag gravatar_image_url(user.email, size: size), title: title, class: 'img-rounded'
      end

      def page_header(text)
        content_for(:page_header) { text.to_s }
      end







    def avatar_for(user)
        @avatar = user.avatar
        if @avatar.empty?
            flash.now[:notice] = 'Please upload your face image!'
        else
            flash.now[:notice] = 'Please upload your face image!'
        end
    end
end
