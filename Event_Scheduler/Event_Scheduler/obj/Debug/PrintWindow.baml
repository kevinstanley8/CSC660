   M S B A M L   `   `   `  ����J  FEvent_Scheduler, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:Event_SchedulerEvent_Scheduler  5   	   !    Event_Scheduler.PrintWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:Event_Scheduler     5   	     � Title$  PrintWindow��5   	   $��281.25��6   $��565.466��6-   .��5	      � ���#6fa8dc � RowDefinitions 5
   
   �� 5      �� 5      $��0* �6   .+�5   
   �� -   5         ��Name$ 	lblBanner��5      $��Print Events��6#   $
��Left=�6:   $��
206,10,0,0q�6U   $	��Top=�6i   $��Arial)�6�   $��24(�6�   $
��Bold"�6�   �� 5   
   -   5         ��Name$ cbPrintType��5      $
��Left=�6(   $��
292,62,0,0q�6C   $	��Top=�6W   $	��162��6o   .@�5      �� -   5        $��choose��5       �� 
IsSelected . .��6;   Please select Print Type6U   �� 5      -   5        $��range��5       .  .��6;   Events For Date Range6R   �� 5      -   5        $	��all��5       .  .��69   
All Events6E   5      �� 5   
   -   5        $ lblPrintType��5      $��Print Type:��6&   $
��Left=�6<   $��
177,58,0,0q�6W   $	��Top=�6k   $��Arial)�6�   $��14(�6�   $
��Bold"�6�   �� 5   
   -   5        $ lblStartDate��5      $��Start Date:��6&   $
��Left=�6<   $��
177,98,0,0q�6W   $	��Top=�6k   $��Arial)�6�   $��14(�6�   $
��Bold"�6�   (  "System.Windows.Controls.DatePicker  5   
   -   5        $��dpStartDate��5      $
��Left=�6(   $��
292,98,0,0q�6C   $	��Top=�6W   $��36��6o   $	��162��6{   �� 5   
   -	   5        $ 
lblEndDate��5      $��	End Date:��6$   $
��Left=�68   $��177,129,0,0q�6S   $	��Top=�6h   $��Arial)�6�   $��14(�6�   $
��Bold"�6�     5   
   -
   5          Name$ 	dpEndDate��5      $
��Left=�6(   $��292,129,0,0q�6C   $	��Top=�6X   $��36��6p   $	��162��6|   �� 5   
   -   5         ��Name$ btnPrint��5      $��Print��6#   $
��Left=�63   $��244,215,0,0q�6N   $	��Top=�6c   $��75��6{   ���	#FF72F19E$��Arial)�6�   $��14(�6�   $
��Bold"�6�   6�   �� 5   
   -   5        $ 
cbCategory��5      $
��Left=�6'   $��292,164,0,0q�6B   $	��Top=�6W   $	��162��6o   �� 5   
   -   5        $ lblCatetory��5      $��Category Type:��6%   $
��Left=�6>   $��177,160,0,0q�6Y   $	��Top=�6n   $��Arial)�6�   $��14(�6�   $
��Bold"�6�   5      5       