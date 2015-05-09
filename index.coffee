{Emitter, CompositeDisposable} = require 'event-kit'
subscriptions = new CompositeDisposable

module.exports =
  activate: (exmode) =>
    { CompletionView } = require 'command-line-views'
    subscriptions.add exmode.onDidAttachCmdlineView ({ viewModel }) =>
      new CompletionView(viewModel)
  deactivate: =>
    subscriptions.dispose()
