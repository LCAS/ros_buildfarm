<project>
  <actions/>
  <description>Generated at @ESCAPE(now_str) from template '@ESCAPE(template_name)'</description>
  <keepDependencies>false</keepDependencies>
  <properties>
@(SNIPPET(
    'property_log-rotator',
    days_to_keep=100,
    num_to_keep=100,
))@
@(SNIPPET(
    'property_job-priority',
    priority=-1,
))@
@(SNIPPET(
    'property_requeue-job',
))@
  </properties>
@(SNIPPET(
    'scm_git',
    url='https://github.com/LCAS/reprepro-updater.git',
    branch_name='refactor',
    relative_target_dir='reprepro-updater',
    refspec=None,
))@
  <scmCheckoutRetryCount>2</scmCheckoutRetryCount>
  <assignedNode>building_repository</assignedNode>
  <canRoam>false</canRoam>
  <disabled>false</disabled>
  <blockBuildWhenDownstreamBuilding>false</blockBuildWhenDownstreamBuilding>
  <blockBuildWhenUpstreamBuilding>false</blockBuildWhenUpstreamBuilding>
  <authToken>lcas</authToken>
  <triggers/>
  <concurrentBuild>false</concurrentBuild>
  <builders>
@(SNIPPET(
    'builder_shell',
    script='\n'.join([
        'echo "# BEGIN SECTION: sync packages to main repo"',
        'export PYTHONPATH=$WORKSPACE/reprepro-updater/src:$PYTHONPATH',
        'curl -f -O https://raw.githubusercontent.com/LCAS/rosdistro/master/%s/filter_list_restricted.txt || (echo -n "" > filter_list_restricted.txt)' % rosdistro_name,
        'sed \'s/$/ deinstall/\' < filter_list_restricted.txt > /var/repos/ubuntu/main/conf/excludefile',
        'python -u $WORKSPACE/reprepro-updater/scripts/sync_ros_packages.py ubuntu_main --upstream-ros ubuntu_testing -a amd64 -r %s -c -f "install excludefile"' % rosdistro_name,
        'echo "# END SECTION"',
    ]),
))@
  </builders>
  <publishers>
@(SNIPPET(
    'publisher_mailer',
    recipients=notify_emails,
    dynamic_recipients=[],
    send_to_individuals=False,
))@
  </publishers>
  <buildWrappers>
@(SNIPPET(
    'build-wrapper_timestamper',
))@
  </buildWrappers>
</project>
