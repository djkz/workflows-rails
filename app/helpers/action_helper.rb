module ActionHelper
  def action_button(label, exec, params = {})
    button_to(
      label, {
        controller: "actions", action: "run",
        params: params.merge({ exec: exec }),
      },
      remote: true,
      data: {
        disable_with: label,
        type: "js",
      },
    )
  end
end
