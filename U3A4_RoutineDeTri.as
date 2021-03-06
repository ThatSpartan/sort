﻿/*
Nom du fichier : U3A4_RoutineDeTri.as
Programmeur : Dominik Dumas
Date : 15 mai 2018
DEscription : Trier une liste de nombres de différentes façons
*/

package {

    // importations
    import flash.display.MovieClip;
    import flash.events.MouseEvent;

    public class U3A4_RoutineDeTri extends MovieClip
    {
		
		public var premiereFois:Boolean = true;
		public var methodeDeTri:String;

		public function reglageRadio():void
		{
			
			if (premiereFois)
			{
				
				premiereFois = false;

				btnRadio1.stop();
				btnRadio1.addEventListener(MouseEvent.CLICK, btnRadio);
					
				btnRadio2.stop();
				btnRadio2.addEventListener(MouseEvent.CLICK, btnRadio);
					
				btnRadio3.stop();
				btnRadio3.addEventListener(MouseEvent.CLICK, btnRadio);
					
				btnRadio4.stop();
				btnRadio4.addEventListener(MouseEvent.CLICK, btnRadio);

			}
			else
			{
				
				btnRadio1.gotoAndStop(1);
				btnRadio2.gotoAndStop(1);
				btnRadio3.gotoAndStop(1);
				btnRadio4.gotoAndStop(1);

			}

		}

        public function U3A4_RoutineDeTri()
        {
			
			// établir les boutons radios
			reglageRadio();
			
            // event listeners
            btnTrier.addEventListener(MouseEvent.CLICK, Trier)

        }
		
		public function btnRadio(EVENT:MouseEvent):void
		{
			
			reglageRadio();
			
			var btn = EVENT.currentTarget;
			btn.gotoAndStop(2);
			
			switch (btn.name)
			{
				
				case 'btnRadio1':
					methodeDeTri = 'BubbleSort';
					break;
					
				case 'btnRadio2':
					methodeDeTri = 'SelectionSort';
					break;
					
				case 'btnRadio3':
					methodeDeTri = 'InsertionSort';
					break;
					
				case 'btnRadio4':
					methodeDeTri = 'QuickSort';
					break;
				
			}trace(methodeDeTri);
			
		}

        public function Trier(EVENT:MouseEvent):void
        {

            var arr:Array = new Array();
			
			var max = 10;
			var min = 0;

            for (var i = 0; i < 10; i++)
            {
            
                arr.push(Math.floor(Math.random()*(max-min)+min));

            }

			trace(arr);
            //var arrTrie:Array = QuickSort(arr);
			var arrTrie:Array = this[methodeDeTri](arr);
			trace(arrTrie);

        }

        // function pour trier

        public function BubbleSort(arr):Array
        {

            var changement:Boolean = true;

            while (changement)
            {

                changement = false;

                for (var index = 0; index < arr.length; index++)
                {

                    var element = arr[index];

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

        public function QuickSort(arr):Array
        {
			
            if (arr.length <= 1) {
                return arr;
            }

            var pivot = arr[0];

            var left = [];
            var right = [];

            for (var index = 1; index < arr.length; index++) {

                arr[index] < pivot ? left.push(arr[index]) : right.push(arr[index]);

            }

            return QuickSort(left).concat(pivot, QuickSort(right));

        }

    }

}