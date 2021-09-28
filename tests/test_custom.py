from brownie import accounts, CarFactory, CarShop
import time


def test():
    dev = accounts[0]
    carfactory = CarFactory.deploy({"from": dev})
    carshop = CarShop.deploy(carfactory.address, {"from": dev})
    car = carshop.addCar(1000, {"from": dev})
