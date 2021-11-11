# frozen_string_literal: true

# Use this setup block to configure all options available in SimpleForm.
SimpleForm.setup do |config|
  config.error_notification_class = ''
  config.button_class = ''
  config.boolean_label_class = nil

  config.wrappers :vdn do |b|
    # b.use :html5
    # b.use :placeholder
    # b.optional :maxlength
    # b.optional :minlength
    # b.optional :pattern
    # b.optional :min_max
    b.optional :readonly
=begin
    b.optional :required
=end
    b.use :label, class: 'form-label'
    b.use :input,
          class: 'form-input',
          wrap_with: { tag: 'div', class: 'my-1' },
          error_class: 'input-error has-error'
    b.use :hint, wrap_with: { tag: 'p', class: 'form-hint' }
    b.use :full_error, wrap_with: { tag: 'span', class: 'has-error' }
  end

  config.wrappers :vdn_file do |b|
    # b.use :html5
    # b.use :placeholder
    # b.optional :maxlength
    # b.optional :minlength
    # b.optional :readonly
    b.use :label, class: 'form-label'
    b.use :input,
          wrap_with: { tag: 'div', class: 'mt-1' }
    b.use :hint, wrap_with: { tag: 'p', class: 'form-hint' }
    b.use :full_error, wrap_with: { tag: 'p', class: 'has-error' }
  end

  config.wrappers :vdn_checkbox do |b|
    # b.use :html5
    # b.optional :readonly
    b.use :label, class: 'form-label'
    b.use :input, class: 'switch',
          wrap_with: { tag: 'div', class: 'mt-1' }
    # b.use :error, wrap_with: { tag: 'span', class: 'hint hint-error' }
    # b.use :hint, wrap_with: { tag: 'p', class: 'hint' }
  end

  config.wrappers :contact_form do |b|
    # b.use :html5
    # b.use :placeholder
    # b.optional :maxlength
    # b.optional :minlength
    # b.optional :pattern
    # b.optional :min_max
    # b.optional :readonly
    # b.optional :required
    # b.use :label, class: 'form-label'
    # b.use :input, class: 'switch', error_class: 'input-error has-error'
    # b.use :hint, wrap_with: { tag: 'p', class: 'form-hint' }
    # b.use :error, wrap_with: { tag: 'span', class: 'has-error' }
  end

  #This configure the wrapper for default input family
  config.wrappers :vertical_form do |b|
    # b.use :html5
    # b.use :placeholder
    # b.optional :maxlength
    # b.optional :minlength
    # b.optional :pattern
    # b.optional :min_max
    # b.optional :readonly
    # b.optional :required
    # b.wrapper tag: :div, class: 'BELEKALAFRONT' do |component|
    #   component.use :label, class: 'form-label'
    #   component.use :input, class: 'form-input', error_class: 'input-error has-error'
    #   component.use :error, wrap_with: { tag: 'p', class: 'form-error hint-error' }
    #   component.use :hint, wrap_with: { tag: 'p', class: 'form-hint' }
    # end
  end

  config.wrappers :vertical_file_input do |b|
    # b.use :html5
    # b.use :placeholder
    # b.optional :maxlength
    # b.optional :minlength
    # b.optional :readonly
    # b.use :label, class: 'label'
    # b.use :input, class: 'form-input'
    # b.use :error, wrap_with: { tag: 'span', class: 'hint hint-error' }
    # b.use :hint, wrap_with: { tag: 'p', class: 'hint' }
  end

  config.wrappers :vertical_boolean do |b|
    # b.use :html5
    # b.optional :readonly
    #
    # b.wrapper tag: 'div', class: 'checkbox' do |ba|
    #   ba.use :label_input
    # end
    #
    # b.use :error, wrap_with: { tag: 'span', class: 'hint hint-error' }
    # b.use :hint, wrap_with: { tag: 'p', class: 'hint' }
  end

  # config.wrappers :vertical_radio_and_checkboxes, tag: 'div', class: 'relative inline-block w-10 mr-2 align-middle select-none transition duration-200 ease-in', error_class: 'has-error' do |b|
  #   b.use :html5
  #   b.optional :readonly
  #   b.use :input, class: 'toggle-checkbox absolute block w-6 h-6 rounded-full bg-white border-4 appearance-none cursor-pointer form-input'
  #   b.use :label, class: 'toggle-label block overflow-hidden h-6 rounded-full bg-gray-300 cursor-pointer form-label-checkbox'
  #   b.use :error, wrap_with: { tag: 'span', class: 'hint hint-error' }
  #   b.use :hint, wrap_with: { tag: 'p', class: 'hint' }
  # end

  config.wrappers :vertical_radio_and_checkboxes do |b|
    # b.use :html5
    # b.optional :readonly
    # b.use :input, class: ''
    # b.use :label, class: ''
    # b.use :error, wrap_with: { tag: 'span', class: 'hint hint-error' }
    # b.use :hint, wrap_with: { tag: 'p', class: 'hint' }
  end

  config.wrappers :horizontal_form do |b|
    # b.use :html5
    # b.use :placeholder
    # b.optional :maxlength
    # b.optional :minlength
    # b.optional :pattern
    # b.optional :min_max
    # b.optional :readonly
    # b.use :label, class: 'col-sm-3 label'
    #
    # b.wrapper tag: 'div', class: 'col-sm-9' do |ba|
    #   ba.use :input, class: 'form-input'
    #   ba.use :error, wrap_with: { tag: 'span', class: 'hint hint-error' }
    #   ba.use :hint, wrap_with: { tag: 'p', class: 'hint' }
    # end
  end

  config.wrappers :horizontal_file_input do |b|
    # b.use :html5
    # b.use :placeholder
    # b.optional :maxlength
    # b.optional :minlength
    # b.optional :readonly
    # b.use :label, class: 'col-sm-3 label'
    #
    # b.wrapper tag: 'div', class: 'col-sm-9' do |ba|
    #   ba.use :input
    #   ba.use :error, wrap_with: { tag: 'span', class: 'hint hint-error' }
    #   ba.use :hint, wrap_with: { tag: 'p', class: 'hint' }
    # end
  end

  config.wrappers :horizontal_boolean do |b|
    # b.use :html5
    # b.optional :readonly
    #
    # b.wrapper tag: 'div', class: 'col-sm-offset-3 col-sm-9' do |wr|
    #   wr.wrapper tag: 'div', class: 'checkbox' do |ba|
    #     ba.use :label_input
    #   end
    #
    #   wr.use :error, wrap_with: { tag: 'span', class: 'hint hint-error' }
    #   wr.use :hint, wrap_with: { tag: 'p', class: 'hint hint-error' }
    # end
  end

  config.wrappers :horizontal_radio_and_checkboxes do |b|
=begin
    b.use :html5
    b.optional :readonly
=end
    b.use :label, class: 'form-label'
    b.wrapper tag: 'div', class: 'col-sm-10' do |ba|
      ba.use :input, class: 'switch'
      ba.use :error, wrap_with: { tag: 'span', class: 'hint hint-error' }
      ba.use :hint, wrap_with: { tag: 'p', class: 'hint hint-error' }
    end
  end

  config.wrappers :inline_form do |b|
    # b.use :html5
    # b.use :placeholder
    # b.optional :maxlength
    # b.optional :minlength
    # b.optional :pattern
    # b.optional :min_max
    # b.optional :readonly
    # b.use :label, class: 'sr-only'
    #
    # b.use :input, class: 'input'
    # b.use :error, wrap_with: { tag: 'span', class: 'hint hint-error' }
    # b.use :hint, wrap_with: { tag: 'p', class: 'hint hint-error' }
  end

  config.wrappers :multi_select do |b|
    # b.use :html5
    # b.optional :readonly
    # b.optional :pattern
    # b.use :label, class: 'form-label'
    # b.use :select, class: 'form-input trucpouet', error_class: 'input-error has-error'
    # b.use :error, wrap_with: { tag: 'p', class: 'form-error hint-error' }
    # b.use :hint,  wrap_with: { tag: 'p', class: 'form-hint' }
  end

  config.wrappers :horizontal_form do |b|
    # b.use :html5
    # b.use :placeholder
    # b.optional :maxlength
    # b.optional :minlength
    # b.optional :pattern
    # b.optional :min_max
    # b.optional :readonly
    # b.use :label, class: 'form-label'
    # b.wrapper tag: 'div', class: 'truchose' do |ba|
    #   ba.use :input, class: 'form-input'
    #   ba.use :error, wrap_with: { tag: 'span', class: 'hint hint-error' }
    #   ba.use :hint, wrap_with: { tag: 'p', class: 'hint' }
    # end
  end

  config.wrappers :search do |b|
    # b.use :html5
    # b.use :placeholder
    # b.optional :maxlength
    # b.optional :minlength
    # b.optional :pattern
    # b.optional :min_max
    # b.optional :readonly
    #
    # b.use :label, class: "block text-sm font-medium text-gray-100 font-bold uppercase"
    # b.use :input,
    #       class: 'appearance-none block w-full p-3 bg-gray-100 border border-blue rounded-lg shadow-sm placeholder-gray-400 focus:outline-none focus:ring-yellow focus:border-yellow sm:text-sm',
    #       error_class: 'block w-full pr-10 border-red-300 text-red-900 placeholder-red-300 focus:outline-none focus:ring-red-500 focus:border-red-500 sm:text-sm rounded-lg'
    # b.use :full_error, wrap_with: { tag: 'p', class: 'mt-2 text-sm text-red-600' }
    # b.use :hint, wrap_with: { tag: :p, class: "mt-2 text-sm text-gray-500" }
  end

  # Wrappers for forms and inputs using the Bootstrap toolkit.
  # Check the Bootstrap docs (http://getbootstrap.com)
  # to learn about the different styles for forms and inputs,
  # buttons and other elements.
  config.default_wrapper = :vdn
  config.wrapper_mappings = {
    check_boxes: :vdn_checkbox,
    radio_buttons: :vertical_radio_and_checkboxes,
    file: :vdn_file,
    boolean: :vdn_checkbox,
    # boolean: :vertical_boolean,
    datetime: :multi_select,
    date: :multi_select,
    time: :multi_select,
  }
end

