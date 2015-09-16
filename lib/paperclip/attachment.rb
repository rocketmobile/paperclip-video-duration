module Paperclip
  module Video
    module Duration

    end
  end

  class Attachment
    # prepend Paperclip::Video::Duration
    # mix in our types extensions
    # 'below' the base (Paperclip::Attachment) class definition
    # so we _override_ the extensions instead of
    # _overwriting_ them (e.g. so we can use `super`)
    #
    # http://stackoverflow.com/questions/4470108/when-monkey-patching-a-method-can-you-call-the-overridden-method-from-the-new-i#answer-4471202
  end
end
