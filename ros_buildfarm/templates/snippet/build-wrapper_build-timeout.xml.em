    <hudson.plugins.build__timeout.BuildTimeoutWrapper plugin="build-timeout@@1.18">
      <strategy class="hudson.plugins.build_timeout.impl.AbsoluteTimeOutStrategy">
        <timeoutMinutes>@int(timeout_minutes)</timeoutMinutes>
      </strategy>
      <operationList>
        <hudson.plugins.build__timeout.operations.WriteDescriptionOperation>
          <description>Build timed out after {0} minutes</description>
        </hudson.plugins.build__timeout.operations.WriteDescriptionOperation>
        <hudson.plugins.build__timeout.operations.FailOperation/>
      </operationList>
    </hudson.plugins.build__timeout.BuildTimeoutWrapper>
    <hudson.plugins.ws__cleanup.PreBuildCleanup plugin="ws-cleanup@0.33">
      <deleteDirs>false</deleteDirs>
      <cleanupParameter></cleanupParameter>
      <externalDelete></externalDelete>
    </hudson.plugins.ws__cleanup.PreBuildCleanup>
