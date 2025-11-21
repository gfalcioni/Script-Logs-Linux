#! /bin/bash

read -p "Entre com a operação desejada: 'compactar' ou 'descompactar'" operacao
case "$operacao" in
	"compactar")
		read -p "Inserir nome do arquivo final -- necessario extensão (.tar.gz) no final do arquivo --  " arquivo_saida
		read -p "Inserir lista de arquivos ou diretorios separados por espaço: " arquivos
		tar -czf "$arquivo_saida" $arquivos
		echo "Compactados com sucesso em $arquivo_saida"
	;;
	"descompactar")
		read -p "Inserir nome do arquivo para ser descompactado -- necessario extensão (.tar.gz) no final do arquivo --  " arquivo
		read -p "Inserir diretorio do destino " diretorio
		tar -xzf "$arquivo" -C "$diretorio"
		echo "Descompactado com sucesso em $diretorio"
	;;
	*)
	echo "Operação invalida!"
	echo "Selecione descompactar ou compactar"
	exit 1
	;;
esac

