// main template for appcat-service-postgresql
local kap = import 'lib/kapitan.libjsonnet';
local kube = import 'lib/kube.libjsonnet';
local inv = kap.inventory();
local params = inv.parameters.appcat_service_postgresql;
local namespace = kube.Namespace(params.namespace);

{
  '00_namespace': namespace,
}
