class FastingDay < ApplicationRecord
    def get_readable_restriction
        case self.fasting_code
        when 1
            return "No meat, fish, oil, wine, dairy, or eggs."
        when 2
            return "No meat, fish, dairy, or eggs. Wine and oil allowed."
        when 3
            return "No meat, dairy, or eggs."
        when 4
            return "No meat. Fish, oil, dairy, and wine allowed."
        else
            return "No restrictions."
        end

    end
end
