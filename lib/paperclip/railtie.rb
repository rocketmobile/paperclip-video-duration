require "paperclip-video-duration"

module Paperclip
  module Video
    module Duration

      if defined? ::Rails::Railtie
        class Railtie < ::Rails::Railtie
          initializer :paperclip_video_duration do
            ActiveSupport.on_load :active_record do
              Paperclip::Video::Duration::Railtie.insert
            end
          end
        end
      end

      class Railtie
        def self.insert
          Paperclip::Attachment.send(:include, Paperclip::Video::Duration::Attachment)
        end
      end

    end
  end
end
