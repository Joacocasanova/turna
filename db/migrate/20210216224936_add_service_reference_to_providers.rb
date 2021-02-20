class AddServiceReferenceToProviders < ActiveRecord::Migration[6.0]
  def change
    add_reference :providers, :service, foreign_key: true
  end
end
