# CONFIGURAÇÕES FIXAS
# AWS 
aws_region = "sa-east-1"

# funcoes que precisam apenas da layer InvokeLambda
# não é necessario criar um arquivo para estas
# elas sao criadas pelo DefaultNodeFunctions.tf
default_node_functions = {
  # administracao
  AdminAplicacao = "1.0.0"
  AdminGrupo = "1.0.0"
  AdminNivelAcesso = "1.0.0"
  AdminPermissao = "1.0.0"
  AdminPermissaoAplicacao = "1.0.0"
  # teste-performance
  TestePerformanceAdminDepartamento = "1.0.0"
  TestePerformanceAdminEmpresa = "1.0.0"
  TestePerformanceAdminPlanoTeste = "1.0.0"
  TestePerformanceAdminSquad = "1.0.0"
  TestePerformanceJenkinsEvento = "1.0.0"
  TestePerformanceJenkinsResultado = "1.0.0"
  TestePerformanceJob = "1.0.0"
  TestePerformanceJobAgendamento = "1.0.0"
  TestePerformanceJobResultado = "1.0.0"
  TestePerformancePermissao = "1.0.0"
  TestePerformanceUsuario = "1.0.0"
}

# funcoes com configuracoes especificas
# crie um arquivo para cada, utilizando o modulo node_function
# caso seja necessario, modifique o modulo para novas funcionalidades
# certifique-se de que ele seja retro-compativel
node_functions = {
  CASDMRequestDB = "1.0.0"
  CASDMRequestSOAP = "1.0.0"
  EnviaEmail = "1.0.0"
  GoogleChatWebhook = "1.0.0"
  RequestDB = "1.0.0"
}