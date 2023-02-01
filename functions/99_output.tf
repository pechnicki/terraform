# LAMBDAS DE USO GERAL
output "GoogleChatWebhook" {
  value = module.GoogleChatWebhook.node_function
}
output "CASDMRequestDB" {
  value = module.CASDMRequestDB.node_function
}
output "CASDMRequestSOAP" {
  value = module.CASDMRequestSOAP.node_function
}
output "EnviaEmail" {
  value = module.EnviaEmail.node_function
}
output "RequestDB" {
  value = module.RequestDB.node_function
}

# administracao
output "AdminAplicacao" {
  value = module.DefaultNodeFunctions["AdminAplicacao"].node_function
}
output "AdminGrupo" {
  value = module.DefaultNodeFunctions["AdminGrupo"].node_function
}
output "AdminNivelAcesso" {
  value = module.DefaultNodeFunctions["AdminNivelAcesso"].node_function
}
output "AdminPermissao" {
  value = module.DefaultNodeFunctions["AdminPermissao"].node_function
}
output "AdminPermissaoAplicacao" {
  value = module.DefaultNodeFunctions["AdminPermissaoAplicacao"].node_function
}

# teste-performance
output "TestePerformanceAdminDepartamento" {
  value = module.DefaultNodeFunctions["TestePerformanceAdminDepartamento"].node_function
}
output "TestePerformanceAdminEmpresa" {
  value = module.DefaultNodeFunctions["TestePerformanceAdminEmpresa"].node_function
}
output "TestePerformanceAdminPlanoTeste" {
  value = module.DefaultNodeFunctions["TestePerformanceAdminPlanoTeste"].node_function
}
output "TestePerformanceAdminSquad" {
  value = module.DefaultNodeFunctions["TestePerformanceAdminSquad"].node_function
}
output "TestePerformanceJenkinsEvento" {
  value = module.DefaultNodeFunctions["TestePerformanceJenkinsEvento"].node_function
}
output "TestePerformanceJenkinsResultado" {
  value = module.DefaultNodeFunctions["TestePerformanceJenkinsResultado"].node_function
}
output "TestePerformanceJob" {
  value = module.DefaultNodeFunctions["TestePerformanceJob"].node_function
}
output "TestePerformanceJobAgendamento" {
  value = module.DefaultNodeFunctions["TestePerformanceJobAgendamento"].node_function
}
output "TestePerformanceJobResultado" {
  value = module.DefaultNodeFunctions["TestePerformanceJobResultado"].node_function
}
output "TestePerformancePermissao" {
  value = module.DefaultNodeFunctions["TestePerformancePermissao"].node_function
}
output "TestePerformanceUsuario" {
  value = module.DefaultNodeFunctions["TestePerformanceUsuario"].node_function
}