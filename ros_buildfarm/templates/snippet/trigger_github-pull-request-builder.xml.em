    <org.jenkinsci.plugins.ghprb.GhprbTrigger plugin="ghprb@@1.42.0">
      <spec/>
      <latestVersion>3</latestVersion>
      <configVersion>3</configVersion>
      <adminlist/>
      <allowMembersOfWhitelistedOrgsAsAdmin>true</allowMembersOfWhitelistedOrgsAsAdmin>
      <orgslist>@ESCAPE(github_orgunit)</orgslist>
      <cron/>
      <buildDescTemplate/>
      <onlyTriggerPhrase>false</onlyTriggerPhrase>
      <useGitHubHooks>true</useGitHubHooks>
      <permitAll>true</permitAll>
      <whitelist/>
      <autoCloseFailedPullRequests>false</autoCloseFailedPullRequests>
      <displayBuildErrorsOnDownstreamBuilds>false</displayBuildErrorsOnDownstreamBuilds>
      <whiteListTargetBranches>
        <org.jenkinsci.plugins.ghprb.GhprbBranch>
          <branch>@ESCAPE(branch_name)</branch>
        </org.jenkinsci.plugins.ghprb.GhprbBranch>
      </whiteListTargetBranches>
      <blackListTargetBranches>
        <org.jenkinsci.plugins.ghprb.GhprbBranch>
          <branch></branch>
        </org.jenkinsci.plugins.ghprb.GhprbBranch>
      </blackListTargetBranches>
      <triggerPhrase/>
      <skipBuildPhrase>.*\[skip\W+ci\].*</skipBuildPhrase>
      <blackListCommitAuthor/>
      <blackListLabels/>
      <whiteListLabels/>
      <includedRegions/>
      <excludedRegions/>
      <extensions>
        <org.jenkinsci.plugins.ghprb.extensions.status.GhprbSimpleStatus>
          <commitStatusContext>@ESCAPE(job_name)</commitStatusContext>
          <triggeredStatus/>
          <startedStatus/>
          <statusUrl/>
          <addTestResults>false</addTestResults>
        </org.jenkinsci.plugins.ghprb.extensions.status.GhprbSimpleStatus>
      </extensions>
    </org.jenkinsci.plugins.ghprb.GhprbTrigger>
