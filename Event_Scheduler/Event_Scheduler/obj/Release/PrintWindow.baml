   M S B A M L   `   `   `  ���� J  FEvent_Scheduler, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:Event_SchedulerEvent_Scheduler  !    Event_Scheduler.PrintWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     /localclr-namespace:Event_Scheduler       � Title$  PrintWindow��$��281.25��$��565.466��.��� ���#6fa8dc � RowDefinitions �� �� $��0* �.+��� -    ��Name$ 	lblBanner��$��Print Events��$
��Left=�$��
206,10,0,0q�$	��Top=�$��Arial)�$��24(�$
��Bold"��� -    ��Name$ cbPrintType��$
��Left=�$��
292,62,0,0q�$	��Top=�$	��162��.@��� -   $��choose�� �� 
IsSelected . .��Please select Print Type�� -   $��range�� .  .��Events For Date Range�� -   $	��all�� .  .��
All Events�� -   $ lblPrintType��$��Print Type:��$
��Left=�$��
177,58,0,0q�$	��Top=�$��Arial)�$��14(�$
��Bold"��� -   $ lblStartDate��$��Start Date:��$
��Left=�$��
177,98,0,0q�$	��Top=�$��Arial)�$��14(�$
��Bold"�(  "System.Windows.Controls.DatePicker  -   $��dpStartDate��$
��Left=�$��
292,98,0,0q�$	��Top=�$��36��$	��162���� -	   $ 
lblEndDate��$��	End Date:��$
��Left=�$��177,129,0,0q�$	��Top=�$��Arial)�$��14(�$
��Bold"�  -
     Name$ 	dpEndDate��$
��Left=�$��292,129,0,0q�$	��Top=�$��36��$	��162���� -    ��Name$ btnPrint��$��Print��$
��Left=�$��244,215,0,0q�$	��Top=�$��75�����	#FF72F19E$��Arial)�$��14(�$
��Bold"��� -   $ 
cbCategory��$
��Left=�$��292,164,0,0q�$	��Top=�$	��162���� -   $ lblCatetory��$��Category Type:��$
��Left=�$��177,160,0,0q�$	��Top=�$��Arial)�$��14(�$
��Bold"�