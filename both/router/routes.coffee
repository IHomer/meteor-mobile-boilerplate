Router.route '/', ->
  @render 'home'

Router.route '/dashboard',
  name: 'dashboard',
  controller: 'DashboardController'

Router.plugin 'ensureSignedIn',
  only: ['dashboard']