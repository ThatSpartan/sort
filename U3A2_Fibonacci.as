/*
Nom du fichier : U3A2_Fibonacci.as
Programmeur : Dominik Dumas
Date : 11 mai 2018
Description : Calculer les nombres fibonacci
*/

package {

    // imports
	import flash.display.*;
	import flash.events.*;

    public class U3A2_Fibonacci extends MovieClip
    {

        public function U3A2_Fibonacci()
        {
            
            // event listeners
            btnEntrer.addEventListener(MouseEvent.CLICK, Calculer)

        } // fin de fonction U3A2_Fibonacci

        // fonction pour obtenir que un int de l'utilisateur (filtrer l'entrée)
        public function ObtenirInt(nombre):int
        {
            
            var nombre:int = int(nombre); // stocker le nombre
			return nombre;

            //if(nombre is int)
//            {
//				return nombre;
//            }
//            else
//            {
//                return 0; // retourner le integer
//            } // fin de if

        } // fin de fonction ObtenirInt

        // fonction récursive pour Fibonacci
        public function Fibonacci(n):int
        {
            if(n == 0) // si n == 0, return 0
            {
                return 0;
            }
            else if(n == 1) // si n == 1, return 1
            {
                return 1;
            }
            else // else return le calcul
            {
                return Fibonacci(n-1) + Fibonacci(n-2);
            }   // fin de if
        }   //fin de Fibonacci

        // fonction pour calculer et afficher le chiffre
        public function Calculer(EVENT:MouseEvent):void
        {
            
            var nombre:int = int(txtInt.text);       // variable pour garder le chiffre demandé par l'utilisateur

            var fibobacci:int = new int(Fibonacci(nombre)); // variable pour stocker (et calculer) le nombre de fibonacci

            txtAfficher.text = 'Le nombre de fibonacci au ' + nombre + 'e rang est ' + fibobacci;       // afficher le nombre de fibonacci à l'utilisateur

        }

    } // fin de class U3A2_Fibonacci

} // fin de package