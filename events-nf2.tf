
resource "aws_cloudwatch_event_rule" "app_nf2_IntPJ" {
  count = var.total_lambdas
  name        = "${count.index}-home-pessoa-juridicaAzB"
  description = "NF2;AzB;Internet;IntPJ;apphome"
  schedule_expression = "cron(0 17 18 5 ? *)"
  tags = {
    "sigla" = "NF2"
    "az" = "AzB"
    "canal" = "IntPJ"
  }
}

resource "aws_cloudwatch_event_target" "lambda_IntPJ" {
  count = var.total_lambdas
  rule      = aws_cloudwatch_event_rule.app_nf2_IntPJ[count.index].name
  arn       = "arn:aws:lambda:us-east-1:523400357865:function:faceAnalise"
}


resource "aws_cloudwatch_event_rule" "app_nf2_MobPF" {
  count = var.total_lambdas
  name        = "${count.index}-logon-mobile-appAzA"
  description = "NF2;AzA;Mobile;MobPF|MobPF|MobEmp;apphome"
  schedule_expression = "cron(0 17 18 5 ? *)"
  tags = {
    "sigla" = "NF2"
    "az" = "AzA"
    "canal" = "MobPF"
  }
}

resource "aws_cloudwatch_event_target" "lambda_MobPF" {
  count = var.total_lambdas
  rule      = aws_cloudwatch_event_rule.app_nf2_MobPF[count.index].name
  arn       = "arn:aws:lambda:us-east-1:523400357865:function:faceAnalise"
}


resource "aws_cloudwatch_event_rule" "app_nf2_MobCart" {
  count = var.total_lambdas
  name        = "${count.index}-mobile-cartoes-appAzC"
  description = "NF2;AzC;Mobile;MobCart|MobPF;apphome"
  schedule_expression = "cron(0 17 18 5 ? *)"
  tags = {
    "sigla" = "NF2"
    "az" = "AzC"
    "canal" = "MobCart"
  }
}

resource "aws_cloudwatch_event_target" "lambda_MobCart" {
  count = var.total_lambdas
  rule      = aws_cloudwatch_event_rule.app_nf2_MobCart[count.index].name
  arn       = "arn:aws:lambda:us-east-1:523400357865:function:faceAnalise"
}

resource "aws_cloudwatch_event_rule" "app_nf2_MobEmp" {
  count = var.total_lambdas
  name        = "${count.index}-mobile-pagamentos-appViA"
  description = "NF2;ViA;Mobile;MobEmp;apphome"
  schedule_expression = "cron(0 17 18 5 ? *)"
  tags = {
    "sigla" = "NF2"
    "az" = "ViA"
    "canal" = "MobEmp"
  }
}

resource "aws_cloudwatch_event_target" "lambda_MobEmp" {
  count = var.total_lambdas
  rule      = aws_cloudwatch_event_rule.app_nf2_MobEmp[count.index].name
  arn       = "arn:aws:lambda:us-east-1:523400357865:function:faceAnalise"
}

resource "aws_cloudwatch_event_rule" "app_nf2_IntPF" {
  count = var.total_lambdas
  name        = "${count.index}-logon-pfAzB"
  description = "NF2;AzB;Internet;IntPF;apphome"
  schedule_expression = "cron(0 17 18 5 ? *)"
  tags = {
    "sigla" = "NF2"
    "az" = "AzB"
    "canal" = "IntPF"
  }
}

resource "aws_cloudwatch_event_target" "lambda_IntPF" {
  count = var.total_lambdas
  rule      = aws_cloudwatch_event_rule.app_nf2_IntPF[count.index].name
  arn       = "arn:aws:lambda:us-east-1:523400357865:function:faceAnalise"
}

resource "aws_cloudwatch_event_rule" "app_nf2_IntPJAta" {
  count = var.total_lambdas
  name        = "${count.index}-operadores-appViA"
  description = "NF2;ViA;Internet;IntPJAta;;apphome"
  schedule_expression = "cron(0 17 18 5 ? *)"
  tags = {
    "sigla" = "NF2"
    "az" = "ViA"
    "canal" = "IntPJAta"
  }
}

resource "aws_cloudwatch_event_target" "lambda_IntPJAta" {
  count = var.total_lambdas
  rule      = aws_cloudwatch_event_rule.app_nf2_IntPJAta[count.index].name
  arn       = "arn:aws:lambda:us-east-1:523400357865:function:faceAnalise"
}

resource "aws_cloudwatch_event_rule" "app_nf2_Monoproduto" {
  count = var.total_lambdas
  name        = "${count.index}-home-acivis-appViA"
  description = "NF2;AzC;Internet;Monoproduto;apphome"
  schedule_expression = "cron(0 17 18 5 ? *)"
  tags = {
    "sigla" = "NF2"
    "az" = "ViA"
    "canal" = "Monoproduto"
  }
}

resource "aws_cloudwatch_event_target" "lambda_Monoproduto" {
  count = var.total_lambdas
  rule      = aws_cloudwatch_event_rule.app_nf2_Monoproduto[count.index].name
  arn       = "arn:aws:lambda:us-east-1:523400357865:function:faceAnalise"
}