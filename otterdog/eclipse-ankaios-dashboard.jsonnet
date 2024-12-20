local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('automotive.ankaios.ankaios-dashboard', 'eclipse-ankaios-dashboard') {
  settings+: {
    description: "",
    name: "Eclipse Ankaios Dashboard",
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
  _repositories+:: [
  ],
} + {
  # snippet added due to 'https://github.com/EclipseFdn/otterdog-configs/blob/main/blueprints/add-dot-github-repo.yml'
  _repositories+:: [
    orgs.newRepo('.github')
  ],
}