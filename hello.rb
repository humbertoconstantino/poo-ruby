class Conta
    def initialize(dono, saldo)
        @dono = dono
        @saldo = saldo
    end

    def saldo
        @saldo
    end
   
    def set_saldo(valor)
        @saldo += valor
    end

    def diminuir_saldo(valor)
        @saldo -= valor
    end

    def transferir(valor, dono)
        p "Transferindo"
        diminuir_saldo(valor) 
        dono.set_saldo(valor)
    end

end

Humberto = Conta.new("Humberto Constantino", 0)
Kheyla = Conta.new("Kheyla Cristina", 0)
Humberto.transferir(100, Kheyla)
p Humberto.saldo
p Kheyla.saldo