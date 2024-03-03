# frozen_string_literal: true

module PhlexUI
  class Command < Base
    def template(&block)
      div(**attrs, &block)
    end

    private

    def default_attrs
      {
        data: {controller: "command", command_target: "content"}
      }
    end
  end
end
