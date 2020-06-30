class Market < ApplicationRecord
    enum status: {Bull: 0 , Bear: 1, Caution: 2}

    has_rich_text :market_status_update
end
