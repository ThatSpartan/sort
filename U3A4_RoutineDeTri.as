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

        public function SelectionSort(arr):Array
        {

            trace('selection sort');

            for (var k = 0; k < arr.length; k++)
            {

                var element = arr[k];
                var min_index = k;

                for (var j = k + 1; j < arr.length; j++)
                {

                    if (arr[j] < arr[min_index])
                    {
                        min_index = j;
                    }

                }

                arr[k] = arr[min_index];
                arr[min_index] = element;

            }

            return arr;

        }

        public function InsertionSort(arr):Array
        {

            trace('insertion sort');

           for (var k = 0; k < arr.length; k++)
           {

               var element = arr[k];
               var j = k;

               while (j > 0 && arr[j -1] > arr[j])
               {

                   arr[j] = arr[j - 1];
                   arr[j - 1] = element;
                   j = j - 1;

               }

           }

           return arr;

        }

    }

}