
resource "aws_cloudwatch_event_rule" "app_oq6_webview_consorcio" {
  count = var.total_lambdas
  name        = "0523c12b-bg-webview-consorcio-home-pf"
  description = "OQ6;blue;angular;webview;;webview-consorcio-home-pf"
  schedule_expression = "cron(0 17 18 5 ? *)"
}

resource "aws_cloudwatch_event_target" "lambda_app_oq6_webview_consorcio" {
  count = var.total_lambdas
  rule      = aws_cloudwatch_event_rule.app_oq6_webview_consorcio[count.index].name
  arn        = var.arn_lambda_deploy
}

resource "aws_cloudwatch_event_rule" "app_oq6_webview_crediario" {
  count = var.total_lambdas
  name        = "06b86956-bg-webview-pix-crediario"
  description = "OQ6;blue;angular;webview;;webview-pix-crediario"
  schedule_expression = "cron(0 17 18 5 ? *)"
}

resource "aws_cloudwatch_event_target" "lambda_app_oq6_webview_crediario" {
  count = var.total_lambdas
  rule      = aws_cloudwatch_event_rule.app_oq6_webview_crediario[count.index].name
  arn        = var.arn_lambda_deploy
}

resource "aws_cloudwatch_event_rule" "app_oq6_webview_credito" {
  count = var.total_lambdas
  name        = "0ad1d94c-bg-v2-mobilepj-menu-de-credito"
  description = "OQ6;blue;angular;webview;;v2-mobilepj-menu-de-credito"
  schedule_expression = "cron(0 17 18 5 ? *)"
}

resource "aws_cloudwatch_event_target" "lambda_app_oq6_webview_credito" {
  count = var.total_lambdas
  rule      = aws_cloudwatch_event_rule.app_oq6_webview_credito[count.index].name
  arn        = var.arn_lambda_deploy
}

resource "aws_cloudwatch_event_rule" "app_oq6_webview_saiba_mais" {
  count = var.total_lambdas
  name        = "0f315139-bg-v2-mobilepj-giro-saiba-mais"
  description = "OQ6;blue;angular;webview;;v2-mobilepj-saiba-mais"
  schedule_expression = "cron(0 17 18 5 ? *)"
}

resource "aws_cloudwatch_event_target" "lambda_app_oq6_webview_saiba_mais" {
  count = var.total_lambdas
  rule      = aws_cloudwatch_event_rule.app_oq6_webview_saiba_mais[count.index].name
  arn        = var.arn_lambda_deploy
}

resource "aws_cloudwatch_event_rule" "app_oq6_webview_clube_beneficios" {
  count = var.total_lambdas
  name        = "0fe4ded3-bg-webview-consorcio-clube-beneficios"
  description = "OQ6;blue;angular;webview;;webview-clube-beneficios"
  schedule_expression = "cron(0 17 18 5 ? *)"
}

resource "aws_cloudwatch_event_target" "lambda_app_oq6_webview_clube_beneficios" {
  count = var.total_lambdas
  rule      = aws_cloudwatch_event_rule.app_oq6_webview_clube_beneficios[count.index].name
  arn        = var.arn_lambda_deploy
}
  

resource "aws_cloudwatch_event_rule" "app_oq6_webview_landing_page" {
  count = var.total_lambdas
  name        = "11a1d115-bg-v2-mobilepj-giro-landing-page"
  description = "OQ6;blue;angular;webview;;v2-mobilepj-giro-landing-page"
  schedule_expression = "cron(0 17 18 5 ? *)"
}

resource "aws_cloudwatch_event_target" "lambda_app_oq6_webview_landing_page" {
  count = var.total_lambdas
  rule      = aws_cloudwatch_event_rule.app_oq6_webview_landing_page[count.index].name
  arn        = var.arn_lambda_deploy
}
    
  
resource "aws_cloudwatch_event_rule" "app_oq6_venda_app" {
  count = var.total_lambdas
  name        = "193000e7-bg-v2-webview-mobilepj-venda-app"
  description = "OQ6;blue;angular;webview;;webview-mobilepj-venda-app"
  schedule_expression = "cron(0 17 18 5 ? *)"
}

resource "aws_cloudwatch_event_target" "lambda_app_oq6_venda_app" {
  count = var.total_lambdas
  rule      = aws_cloudwatch_event_rule.app_oq6_venda_app[count.index].name
  arn        = var.arn_lambda_deploy
}


resource "aws_cloudwatch_event_rule" "app_oq6_limite_conta" {
  count = var.total_lambdas
  name        = "1c1b3611-OQ6_Angular-webview-dias-sem-juros-limite-da-conta-Prod"
  description = "OQ6;blue;angular;webview;;webview-mobilepj-venda-app"
  schedule_expression = "cron(0 17 18 5 ? *)"
}

resource "aws_cloudwatch_event_target" "lambda_app_oq6_limite_conta" {
  count = var.total_lambdas
  rule      = aws_cloudwatch_event_rule.app_oq6_limite_conta[count.index].name
  arn        = var.arn_lambda_deploy
}

resource "aws_cloudwatch_event_rule" "app_oq6_limite_credito_consignado" {
  count = var.total_lambdas
  name        = "1c1b3611-OQ6_Angular-webview-credito-consignado-Prod"
  description = "OQ6;blue;angular;webview;;webview-mobilepj-venda-app"
  schedule_expression = "cron(0 17 18 5 ? *)"
}





