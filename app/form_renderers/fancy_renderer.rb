class FancyRenderer
  def render
    ApplicationController.render(
      template: '_form_renderers/fancy/main',
      assigns: assigns,
      layout: false
    )
  end

  private

  def assigns
    {
      form: form_object,
      submit_path: submit_path,
    }
  end

  def form_object
    FormObject.new
  end

  def submit_path
    @submit_path ||= begin
      Rails.application.routes.url_helpers.fruits_path
    end
  end

  class FormObject
    include ActiveModel::Model
    attr_accessor :name, :weight

    validates_presence_of :name, :weight

    # def self.model_name
    #   Fruit.model_name
    # end
  end
end