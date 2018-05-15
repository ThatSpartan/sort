/*
Nom du fichier : U3A4_RoutineDeTri.as
Programmeur : Dominik Dumas
Date : 15 mai 2018
DEscription : Trier une liste de nombres de différentes façons
*/

package {

    // importations
    import flash.display.*;
    import flash.events.*;

    public class U3A4_RoutineDeTri extends MovieClip
    {

        public function U3A4_RoutineDeTri()
        {

            // event listeners
            btnTrier.addEventListener(MouseEvent.CLICK, Trier)

        }

        public function Trier(EVENT:MouseEvent):void
        {

            var arr:Array = new Array();

            trace(arr);

            for (var i = 0; i < 40; i++)
            {
            
                trace(i);
                arr.push(Math.floor(Math.random()*(max-min)+min));
                trace(arr);

            }

            var arrTrie:Array = BubbleSort(arr);

        }

        public function BubbleSort(arr):Array
        {

            trace('bubble sort');

            var changement:Boolean = true;

            while (changement)
            {

                changement = false;

                for (var index = 0; index < arr.length; index++)
                {

                    const element = arr[index];

                    if (element > arr[index+1])
                    {

                        arr[index] = arr[index+1];
                        arr[index+1] = element;

                        changement = true;

                    }

                }

            }

            return arr;

        }

    }

}