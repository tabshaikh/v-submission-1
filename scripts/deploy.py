from brownie import accounts, CarFactory, CarShop
import time


def main():
    dev = accounts.load("dev")
    carfactory = CarFactory.deploy({"from": dev})
    carshop = CarShop.deploy(carfactory.address, {"from": dev})
    print(carfactory.address)
    print(carshop.address)
