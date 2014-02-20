module Pagination
  extend ActiveSupport::Concerns

  def pagination_args
    { page: (params[:page].try(:to_i) || 1),
      per_page: (params[:per_page].try(:to_i) || 20)
    }
  end
end
