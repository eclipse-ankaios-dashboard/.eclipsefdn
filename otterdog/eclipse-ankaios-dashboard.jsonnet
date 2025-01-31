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
    orgs.newRepo('ankaios-dashboard') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Eclipse Ankaios Dashboard - provides a convenient user interface for managing and debugging applications running on the Ankaios platform.",
      gh_pages_build_type: "workflow",
      topics+: [
        "ankaios",
        "automotive",
        "containers",
        "orchestration",
        "dashboard"
      ],
      web_commit_signoff_required: false,
      rulesets: [
      ],
      environments: [
      ],
    },
  ],
} + {
  # snippet added due to 'https://github.com/EclipseFdn/otterdog-configs/blob/main/blueprints/add-dot-github-repo.yml'
  _repositories+:: [
    orgs.newRepo('.github')
  ],
}
