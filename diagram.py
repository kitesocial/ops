from diagrams import Cluster, Diagram
from diagrams.aws.compute import ECS
from diagrams.onprem.database import PostgreSQL
from diagrams.aws.network import ELB
from diagrams.aws.network import Route53

with Diagram("Kitesocial architecture", filename="diagram", show=False):
    dns = Route53("kite.social")
    lb = ELB("load balancer")
    ecs = ECS("app service")
    db = PostgreSQL("kitesocial_production")

    dns >> lb >> ecs >> db
