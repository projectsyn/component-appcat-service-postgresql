local kap = import 'lib/kapitan.libjsonnet';
local inv = kap.inventory();
local params = inv.parameters.appcat_service_postgresql;
local argocd = import 'lib/argocd.libjsonnet';

local app = argocd.App('appcat-service-postgresql', params.namespace);

local appPath =
  local project = std.get(app, 'spec', { project: 'syn' }).project;
  if project == 'syn' then 'apps' else 'apps-%s' % project;

{
  ['%s/appcat-service-postgresql' % appPath]: app,
}
