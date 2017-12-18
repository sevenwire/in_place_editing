module InPlaceMacrosHelper
  private

  def options_for_javascript(options)
    if options.empty?
      '{}'
    else
      "{#{options.keys.map { |k| "#{k}:#{options[k]}" }.sort.join(', ')}}"
    end
  end
end
