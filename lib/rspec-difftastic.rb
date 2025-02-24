require 'difftastic'

module RSpec
  module Support
    class Differ

      DIFFTASTIC_DIFFER = Difftastic::Differ.new(
        background: :dark,
        color: :always,
        left_label: "Expected",
        right_label: "Actual"
      )

      def diff_as_string(actual, expected)
        diff_string = DIFFTASTIC_DIFFER.diff_strings(actual, expected)
        "\n\n#{diff_string}\n"
      end

      def diff_as_object(actual, expected)
         diff_string = DIFFTASTIC_DIFFER.diff_objects(actual, expected)
        "\n\n#{diff_string}\n"
      end

    end
  end
end
