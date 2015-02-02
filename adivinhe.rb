#coding: utf-8
novo_jogo = "s"

while novo_jogo == "s"
	print "Advinhe o número que estou pensando, entre 1 e 100: "
	seu_numero = gets.to_i
	puts "O número digitado foi: " + seu_numero.to_s
	pc_numero = Random.rand(99) + 1

	tentativas = 1

	while pc_numero != seu_numero
		if pc_numero > seu_numero
			puts "O número é maior que #{seu_numero}"
		else
			puts "o número é menor que #{seu_numero}"
		end
		tentativas += 1
		print "Tente novamente: "
		seu_numero = gets.to_i
	end

	puts "Parabéns, você acertou!!!"
	puts "Você usou #{tentativas} tentativas."

	print "Você quer jogar novamente? (s/n): "
	novo_jogo = gets.chomp
end

puts "Obrigado por jogar!!!"