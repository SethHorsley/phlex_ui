# frozen_string_literal: true

module PhlexUI
    class ShortcutKey < Base
        def template(&)
            kbd(**attrs, &)
        end

        private

        def default_attrs
            {
                class: "pointer-events-none inline-flex h-5 select-none items-center gap-1 rounded border bg-muted px-1.5 font-mono text-[10px] font-medium text-muted-foreground opacity-100"
            }
        end
    end
end