# == Schema Information
#
# Table name: favorites
#
#  id               :integer          not null, primary key
#  favoritable_type :string(255)      not null
#  favoritable_id   :integer          not null
#  favoritor_type   :string(255)      not null
#  favoritor_id     :integer          not null
#  scope            :string(255)      default("favorite"), not null
#  blocked          :boolean          default(FALSE), not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  fk_favoritables                                         (favoritable_id,favoritable_type)
#  fk_favorites                                            (favoritor_id,favoritor_type)
#  index_favorites_on_blocked                              (blocked)
#  index_favorites_on_favoritable_type_and_favoritable_id  (favoritable_type,favoritable_id)
#  index_favorites_on_favoritor_type_and_favoritor_id      (favoritor_type,favoritor_id)
#  index_favorites_on_scope                                (scope)
#

class Favorite < ActiveRecord::Base

    extend ActsAsFavoritor::FavoritorLib
    extend ActsAsFavoritor::FavoriteScopes

    belongs_to :favoritable, polymorphic: true
    belongs_to :favoritor, polymorphic: true

    def block!
        self.update_attributes blocked: true
    end

end
