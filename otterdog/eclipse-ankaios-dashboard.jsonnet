local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-ankaios-dashboard') {
  settings+: {
    description: "",
    name: "Eclipse Ankaios Dashboard",
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
}
