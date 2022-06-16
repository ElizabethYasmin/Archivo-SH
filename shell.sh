
#!/bin/bash
case $1 in
        "--crear")
                echo "Creando archivo $2"
                echo
                touch $2
                ;;
        "--Eliminar")
                echo "Eliminando $2"
                echo
                rm $2
                ;;

         "--Mover")
                echo "Moviendo $2"
                read name_move
            	echo "directorio->"
            	read directory_move
            	if [ -d "$directory_move" ]; then
            		find . -name $name_move | while read link; do
            			mv $link $directory_move
                	done
                fi                                                                      
                #caso contrario no se hace nada
                ;;

        "--Modificar")
                echo "Modificando $2"
                echo
                nano $2
                ;;

        *)
                echo "Not a valid argument"
                echo
                ;;
esac