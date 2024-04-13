# frozen_string_literal: true

module PhlexUI
  class Command::Group < Base
    def initialize(title: nil, **attrs)
      @title = title
      super(**attrs)
    end

    def view_template(&block)
      div(**attrs) do
        render_header if @title
        render_items(&block)
      end
    end

    private

    def render_header
      div(group_heading: @title) do
        @title
      end
    end

    def render_items(&block)
      div(group_items: "", role: "group", &block)
    end

    def default_attrs
      {
        class:
              "overflow-hidden p-1 text-foreground [&_[group-heading]]:px-2 [&_[group-heading]]:py-1.5 [&_[group-heading]]:text-xs [&_[group-heading]]:font-medium [&_[group-heading]]:text-muted-foreground",
        role: "presentation",
        data: {
          value: @title,
          command_target: "group"
        }
      }
    end
  end
end
