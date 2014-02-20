# SimpleForm.setup do |config|
#   config.wrappers :default, class: :input,
#     hint_class: :field_with_hint, error_class: :field_with_errors do |b|
#     b.use :html5
#     b.use :placeholder
#     b.optional :maxlength
#     b.optional :pattern
#     b.optional :min_max
#     b.optional :readonly

#     ## Inputs
#     b.use :label_input
#     b.use :hint,  wrap_with: { tag: :span, class: :hint }
#     b.use :error, wrap_with: { tag: :span, class: :error }
#   end
#   config.boolean_style = :inline
#   # config.error_method = :first
#   # config.error_notification_tag = :div
#   # config.error_notification_id = nil
#   # config.collection_label_methods = [ :to_label, :name, :title, :to_s ]
#   # config.collection_value_methods = [ :id, :to_s ]
#   # config.collection_wrapper_tag = nil #radio/check boxes
#   # config.collection_wrapper_class = nil

#   # You can wrap each item in a collection of radio/check boxes with a tag,
#   # defaulting to :span. Please note that when using :boolean_style = :nested,
#   # SimpleForm will force this option to be a label.
#   # config.item_wrapper_tag = :span
#   # config.item_wrapper_class = nil
#   # config.label_text = lambda { |label, required| "#{required} #{label}" }
#   # config.label_class = 'control-label'
#   # config.form_class = :simple_form
#   # config.generate_additional_classes_for = [:wrapper, :label, :input]
#   # config.required_by_default = true
#   config.browser_validations = false #no novalidate
#   # config.file_methods = [ :mounted_as, :file?, :public_filename ]
#   # config.input_mappings = { /count/ => :integer }
#   # config.wrapper_mappings = { string: :prepend }
#   # config.time_zone_priority = nil
#   # config.country_priority = nil
#   # config.translate_labels = true
#   # config.inputs_discovery = true
#   # config.cache_discovery = !Rails.env.development?
#   # config.input_class = nil
# end
