local kap = import 'lib/kapitan.libjsonnet';
local inv = kap.inventory();
local params = inv.parameters.appcat_service_postgresql;
local argocd = import 'lib/argocd.libjsonnet';

local app = argocd.App('appcat-service-postgresql', params.namespace);

{
  'appcat-service-postgresql': app,
}
